
Resource    ./Variables.robot

*** Settings ***
Library           ../../../../../AppData/Local/Packages/PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0/LocalCache/local-packages/Python310/site-packages/SeleniumLibrary/

*** Keywords ***
Clear Text Field
    [Arguments]    ${field_locator}
    ${value}=    Get Element Attribute    ${field_locator}    value
    ${backspaces count}=    Get Length    ${value}
    Run Keyword If    """${value}""" != ''    Repeat Keyword    ${backspaces count + 1}    Press Key    ${field_locator}    \\08    # si le champ n'est pas vide

User Log In
    [Arguments]    @{VALID_CREDENTIALS}
    Input Text    ${EMAIL_FIELD}    ${VALID_CREDENTIALS}[0]
    Input Text    ${PASSWORD_FIELD}    ${VALID_CREDENTIALS}[1]
    sleep    2s
    Wait Until Element Is Enabled    ${BUTTON}
    Click Element    ${BUTTON}
    sleep    1s
    Go To    ${USER_PAGE}
    sleep    1s

Expert Log In
    [Arguments]    @{VALID_CREDENTIALS}
    Input Text    ${EMAIL_FIELD}    ${VALID_CREDENTIALS}[0]
    Input Text    ${PASSWORD_FIELD}    ${VALID_CREDENTIALS}[1]
    sleep    1s
    Wait Until Element Is Enabled    ${BUTTON}
    Click Element    ${BUTTON}
    sleep    1s
    Go To    ${EXPERT_PAGE}
    sleep    2s

Close Page
    close browser
