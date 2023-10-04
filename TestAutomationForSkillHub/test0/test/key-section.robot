*** Settings ***
Library           SeleniumLibrary
Library           Screenshot
Resource          ../Ressources/config.robot
Resource          ../Ressources/keywords.robot

*** Test Cases ***
test-case1
    keywords.Open my Browser    ${urlExpertPage}    ${browser}
    #Location Should Be    ${urlExpertPage}
    # keywords.Username Should Be Visible On The Navigation Bar \ \ \ ${username}
    #keywords.Verify Button is Enabled    ${createSession}
    #keywords.Create Session
    Location Should Be    ${urlCreateSession}
    keywords.Verify Button is Disabled    ${ContinueToSessionDetails}
    sleep    3
    keywords.Upload File    ${uploadButton}    ${imagePath}
    sleep    2
    keywords.Verify Image Selection Success
    sleep    3
    [Teardown]    Close Browser

TC_BackToExpertUserPage1
    keywords.Open my Browser    ${urlCreateSession}    ${browser}
    #Location Should Be    ${urlCreateSession}
    keywords.Verify Button is Enabled    ${BackExpertPage}
    keywords.Go back    ${BackExpertPage}
    Location Should Be    ${urlExpertPage}
    [Teardown]    Close Browser

TC_BackToExpertUserPage2
    keywords.Open my Browser    ${urlCreateSession}    ${browser}
    Location Should Be    ${urlCreateSession}
    Upload File    ${uploadButton}    ${imagePath}
    keywords.Verify Button is Enabled    ${BackUploadImage}
    keywords.Go back    ${BackExpertPage}
    Location Should Be    ${urlExpertPage}
    [Teardown]    Close Browser
