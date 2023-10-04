Resource    ./Variables.robot
Resource    ./Common.robot

*** Settings ***
Library           ../../../../../AppData/Local/Packages/PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0/LocalCache/local-packages/Python310/site-packages/SeleniumLibrary/

*** Keywords ***
Expert Sign Up Page Should Be Open
    open browser    ${BASE_URL}/signup    ${browser}

Fill Expert Registration Form with Mandatory Fields
    Input Text    ${NAME_FIELD}    User1
    Input Text    ${EMAIL_FIELD}    testexpert@example.com
    Input Password    ${PASSWORD_FIELD}    Test1@123
    Input Text    ${COMPANY_FIELD}    company name
        Input Text    ${BIO_FIELD}    bio
    Wait Until Element Is Visible    ${BUTTON}
    Wait Until Element Is Enabled    ${BUTTON}
    Click Button    ${BUTTON}

Attempt to Create Expert Account with Empty Mandatory Fields
    Wait Until Element Is Visible    ${NAME_FIELD}
    Input Text    ${NAME_FIELD}    ${EMPTY}
    Input Text    ${EMAIL_FIELD}    ${EMPTY}
    Input Text    ${PASSWORD_FIELD}    ${EMPTY}
    Input Text    ${COMPANY_FIELD}    ${EMPTY}
    Wait Until Element Is Visible    ${BUTTON}
    Element Should Be Disabled    ${BUTTON}

Create an Expert Account with a Filled and Then Cleared Field
    Input Text    ${NAME_FIELD}    sirine
    Input Text    ${EMAIL_FIELD}    sirine@gmail.com
    Log    "Valeur de la variable EMAIL_FIELD : ${EMAIL_FIELD}"
    sleep    2s
    Clear Text Field    ${EMAIL_FIELD}
    Wait Until Element Is Visible    ${ERROR_MESSAGE_EMAIL}
    ${is_element_visible}    Run Keyword And Return Status    Element Should Be Visible    ${ERROR_MESSAGE_EMAIL}
    Log    "L'élément requiredEmail est visible : ${is_element_visible}"
    Input Text    ${PASSWORD_FIELD}    sirine
    Input Text    ${COMPANY_FIELD}    CompanyName
    Element Should Be Disabled    ${BUTTON}

Click to the login link
    Wait Until Element Is Visible    ${NAME_FIELD}
    Element Should Be Visible    ${LOGIN_LINK}
    ${link_text}=    Get Text    ${LOGIN_LINK}
    Should Be Equal As Strings    ${link_text}    Login
    Click Element    ${LOGIN_LINK}
    Wait Until Page Contains Element    ${EMAIL_FIELD}
    Wait Until Page Contains Element    ${PASSWORD_fIELD}
    Wait Until Page Contains Element    ${BUTTON}
