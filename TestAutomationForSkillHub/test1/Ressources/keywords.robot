*** Settings ***
Library           SeleniumLibrary
Resource          config.robot

*** Keywords ***
Open my Browser login
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}

login user
    [Arguments]    ${myemail}    ${mypassword}
    Input Text    ${email}    ${myemail}
    Input Text    ${password}    ${mypassword}
    click button    ${loginbouton}

Open my Browser
    [Arguments]    ${url}    ${browser}
    keywords.Open my Browser login    ${userPage}    ${browser}
    #Location Should Be    ${urlloginPage}
    login user    ${emailtest}    ${passwordtest}
    #Location Should Be    ${userPage}

Shared Session Existence Check
    Page Should Contain Element    ${profile}
    Page Should Contain Element    ${session}
    Page Should Contain Element    ${titresession}
    Page Should Contain Element    ${dureesession}
    Page Should Contain Element    ${datesession}
    Page Should Contain Element    ${objectivesession}
    Page Should Contain Image    ${imagesession}

view More
    [Arguments]    ${bouton}
    Page Should Contain Element    ${bouton}
    Element Should Be Enabled    ${bouton}
    click button    ${bouton}

Viewing Session Details
    Page Should Contain Element    ${titresession1}
    Page Should Contain Element    ${dureesession1}
    Page Should Contain Element    ${datesession1}
    Page Should Contain Element    ${requirementssession}
    Page Should Contain Image    ${imagesession1}

Verify Expert Information for a Session
    Page Should Contain Element    ${expertName}
    Page Should Contain Element    ${expertEmail}
    Page Should Contain Element    ${expertPhoneNumber}
    Page Should Contain Element    ${expertLinkedin}
    Page Should Contain Element    ${expertFacebook}
    Page Should Contain Element    ${expertBio}
