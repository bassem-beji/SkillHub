*** Settings ***
Library           SeleniumLibrary
Resource          config.robot

*** Keywords ***
Open my Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    login expert    ${emailtest}    ${passwordtest}
    keywords.Create Session

login expert
    [Arguments]    ${myemail}    ${mypassword}
    Input Text    ${email2}    ${myemail}
    Input Text    ${password2}    ${mypassword}
    click button    ${loginbouton2}
    sleep    5

Open Session Details Browser
    keywords.Open my Browser    ${urlCreateSession}    ${browser}
    #Location Should Be    ${urlCreateSession}
    #login expert    ${emailtest}    ${passwordtest}
    Upload File    ${uploadButton}    ${imagePath}
    click element    ${ContinueToSessionDetails}

Username Should Be Visible On The Navigation Bar
    [Arguments]    ${username}
    ${loggedInUsernameWithGreeting}    Set Variable    ${username}
    SeleniumLibrary.Element Text Should Be    ${loggedInUsernameWithGreetingLocator}    ${loggedInUsernameWithGreeting}    ${SMALL_RETRY_COUNT}

Verify Button is Enabled
    [Arguments]    ${Element}
    Element Should Be Enabled    ${Element}

Create Session
    click button    ${createSession}

Verify Button is Disabled
    [Arguments]    ${Element}
    Element Should Be Disabled    ${Element}

Go back
    [Arguments]    ${Element}
    click button    ${Element}

Verify Image Selection Success
    Page Should Contain Image    ${image}
    Page Should Contain Element    ${imageButton}

Upload File
    [Arguments]    ${locator}    ${file_path}
    Choose File    ${locator}    ${file_path}
    #### EnteringSessionDetails

Fill Session Details Form
    [Arguments]    ${Title}    ${Objectives}    ${Requirements}
    Wait Until Page Contains    Session info
    Input Text    ${Title}    title
    Input Text    ${Objectives}    Objectives
    Input Text    ${Requirements}    Requirements

Fill Session Form with Empty Objectives
    [Arguments]    ${Title}    ${Requirements}
    Wait Until Page Contains    Session info
    Input Text    ${Title}    title
    Input Text    ${Requirements}    Requirements
    ###Specifying_Session_Date_and_Duration

Open Session Date and Duration
    keywords.Open Session Details Browser
    Verify Button is Disabled    ${ContinueToDate&Duration}
    Fill Session Details Form    ${Title}    ${Objectives}    ${Requirements}
    click element    ${ContinueToDate&Duration}
    Page Should Contain Element    ${SessionDuration}

Fill Session Date and Duration Form
    [Arguments]    ${Session Date}    ${Session Duration}
    Input Text    ${Session Date}    7/8/2023
    Input Text    ${Duration}    55

Fill Session Date and Duration Form with Empty Objectives
    [Arguments]    ${Session Date}
    Input Text    ${Session Date}    7/8/2023
