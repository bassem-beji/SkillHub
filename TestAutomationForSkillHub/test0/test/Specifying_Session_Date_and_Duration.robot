*** Settings ***
Library           SeleniumLibrary
Library           Screenshot
Resource          ../Ressources/config.robot
Resource          ../Ressources/keywords.robot

*** Test Cases ***
Specifying_Session_Date_and_Duration
    Open Session Date and Duration
    Verify Button is Disabled    ${Finish}
    Fill Session Date and Duration Form    ${Session Date}    ${Session Duration}
    Verify Button is Enabled    ${Finish}
    click element    ${Finish}
    [Teardown]    Close Browser

Continuing_with_Incomplete_Session_Date_or_Duration
    Open Session Date and Duration
    Verify Button is Disabled    ${Finish}
    Fill Session Date and Duration Form with Empty Objectives    ${Session Date}
    Verify Button is Disabled    ${Finish}
    [Teardown]    Close Browser

TC_Return_To_Session_Details_Page
    Open Session Date and Duration
    keywords.Verify Button is Enabled    ${BackSessionDetails}
    keywords.Go back    ${BackSessionDetails}
    Page Should Contain Element    ${Session Details}
    [Teardown]    Close Browser
