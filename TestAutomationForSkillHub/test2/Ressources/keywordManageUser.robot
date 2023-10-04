*** Settings ***
Library           SeleniumLibrary
Resource          configExpert.robot

*** Keywords ***
Open my Browser login
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

login expert
    [Arguments]    ${myemail}    ${mypassword}
    Input Text    ${email2}    ${myemail}
    Input Text    ${password2}    ${mypassword}
    sleep    4
    click button    ${loginbouton2}
    sleep    4

Open my Browser expert
    [Arguments]    ${url}    ${browser}
    Open my Browser login    ${url}    ${browser}
    login expert    ${emailexpert}    ${passwordexpert}

verifyUserInfo
    Page Should Contain Element    ${userName}
    Page Should Contain Element    ${userEmail}
    Page Should Contain Element    ${userBio}

checkAcceptanceFieldsExistence
    Page Should Contain Element    ${resultat}
    Page Should Contain Element    ${refuse}
    Page Should Contain Element    ${accept}

accept
    click Element    ${accept}
    sleep    5
    ${xpath_result}=    Get Text    ${resultat}
    Should Be Equal As Strings    ${xpath_result}    Accepted

verify user accepted
    ${xpath_result}=    Get Text    ${boutonresultat}
    Should Be Equal As Strings    ${xpath_result}    Accepted

refuse
    click Element    ${refuse}
    sleep    5
    ${xpath_result}=    Get Text    ${resultat}
    Should Be Equal As Strings    ${xpath_result}    Refused

verify user refused
    ${xpath_result}=    Get Text    ${boutonresultat}
    Should Be Equal As Strings    ${xpath_result}    Refused
