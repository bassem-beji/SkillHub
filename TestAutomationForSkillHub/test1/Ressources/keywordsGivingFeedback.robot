*** Settings ***
Library           SeleniumLibrary
Resource          config.robot

*** Keywords ***
Verify Existence of Comment Card
    Page Should Contain Element    ${comments}
    Page Should Contain Element    ${nomcomments}
    Page Should Contain Element    ${inputcomments}
    Page Should Contain Element    ${boutonsend}
    Element Should Be Enabled    ${boutonsend}

Compose Comment
    [Arguments]    ${inputcomments}    ${mycomment}
    Input Text    ${inputcomments}    ${mycomment}
    sleep    10
    click button    ${boutonsend}

Verify My Name and My Comment
    Page Should Contain Element    ${myname}
    Page Should Contain Element    ${mycomments}
