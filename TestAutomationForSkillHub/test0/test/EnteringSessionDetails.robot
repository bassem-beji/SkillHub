*** Settings ***
Library           SeleniumLibrary
Library           Screenshot
Resource          ../Ressources/config.robot
Resource          ../Ressources/keywords.robot

*** Test Cases ***
EnteringEssentialSessionDetails
    keywords.Open Session Details Browser
    Verify Button is Disabled    ${ContinueToDate&Duration}
    Fill Session Details Form    ${Title}    ${Objectives}    ${Requirements}
    click element    ${ContinueToDate&Duration}
    Page Should Contain Element    ${SessionDuration}
    [Teardown]    Close Browser

Continuing_With_Incomplete_Session_Details
    keywords.Open Session Details Browser
    Verify Button is Disabled    ${ContinueToDate&Duration}
    Fill Session Form with Empty Objectives    ${Title}    ${Requirements}
    Verify Button is Disabled    ${ContinueToDate&Duration}
    [Teardown]    Close Browser

TC_BackToUploadImagePage
    keywords.Open Session Details Browser
    keywords.Verify Button is Enabled    ${BackUploadImage}
    keywords.Go back    ${BackUploadImage}
    Page Should Contain Element    ${uploadImageText}
    [Teardown]    Close Browser
