Resource    ./Variables.robot
Resource    ./Common.robot
*** Settings ***
Library           ../../../../../AppData/Local/Packages/PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0/LocalCache/local-packages/Python310/site-packages/SeleniumLibrary/

*** Keywords ***
Login Page Should Be Open
    open browser    ${BASE_URL}/login    ${browser}
    Maximize Browser Window

User clicks on the 'Login' button without filling out the fields
    Input Text    ${EMAIL_FIELD}    ${EMPTY}
    Input Text    ${PASSWORD_FIELD}    ${EMPTY}
    Element Should Be Disabled    ${BUTTON}

User fills the email address field with a valid value the cleared
    Wait Until Element Is Visible    ${EMAIL_FIELD}
    Input Text    ${EMAIL_FIELD}    sirine@gmail.com
    sleep    2s
    Clear Text Field    ${EMAIL_FIELD}
    Click Element    ${PASSWORD_FIELD}
    Input Text    ${PASSWORD_FIELD}    sirine123
    Wait Until Element Is Visible    ${ERROR_MESSAGE_EMAIL}
    Element Text Should Be    ${ERROR_MESSAGE_EMAIL}    *Email is required*
    Element Should Be Disabled    ${BUTTON}

Regular user login with Valid credentials
    [Arguments]    @{VALID_CREDENTIALS}
    Input Text    ${EMAIL_FIELD}    ${VALID_CREDENTIALS}[0]
    Input Text    ${PASSWORD_FIELD}    ${VALID_CREDENTIALS}[1]
    Wait Until Element Is Enabled    ${BUTTON}
    Click Element    ${BUTTON}
    Go To    ${EXPERT_PAGE}

Regular user login with Invalid credentials
    [Arguments]    @{INVALID_CREDENTIALS}
    Input Text    ${EMAIL_FIELD}    ${INVALID_CREDENTIALS}[0]
    Input Text    ${PASSWORD_FIELD}    ${INVALID_CREDENTIALS}[1]
    Click Element    ${BUTTON}
    ${alert_text}    Handle Alert    action=ACCEPT    timeout=5s
    log    ${alert_text}
    Should Be Equal As Strings    ${alert_text}    Expert not found!

Click to the Sign Up link
    Element Should Be Visible    ${SIGNUP_LINK}
    ${linkS_text}=    Get Text    ${SIGNUP_LINK}
    Should Be Equal As Strings    ${linkS_text}    Sign up
    Click Element    ${SIGNUP_LINK}
