*** Settings ***
Library           SeleniumLibrary
Resource          config.robot

*** Keywords ***
Open my Browser login
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

login user
    [Arguments]    ${myemail}    ${mypassword}
    Input Text    ${email}    ${myemail}
    Input Text    ${password}    ${mypassword}
    sleep    2
    click button    ${loginbouton}

Open my Browser
    [Arguments]    ${url}    ${browser}
    keywords.Open my Browser login    ${userPage}    ${browser}
    #Location Should Be    ${urlloginPage}
    login user    ${emailtest}    ${passwordtest}
    #Location Should Be    ${userPage}

view More
    [Arguments]    ${bouton}
    Page Should Contain Element    ${bouton}
    Element Should Be Enabled    ${bouton}
    click button    ${bouton}

Reserver une session using the button
    [Arguments]    ${bouton}
    Page Should Contain Element    ${boutonReserveNow}
    Element Should Be Enabled    ${boutonReserveNow}
    Page Should Contain Element    ${boutonReservePlace}
    Element Should Be Enabled    ${boutonReservePlace}
    Element Should Not Be Visible    ${reserved}
    click button    ${bouton}
    sleep    5
    Element Should Not Be Visible    ${boutonReserveNow}
    Element Should Not Be Visible    ${boutonReservePlace}
    Page Should Contain Element    ${reserved}

Check Button Text
    [Arguments]    ${button_text}
    ${expected_texts}    Create List    In Progress    Accepted    Refused
    Run Keyword If    not "${button_text}" in @{expected_texts}    Fail    Button text should be one of: In Progress, Accepted, or Refused. Got: ${button_text}
