Resource    ./Variables.robot
Resource    ./Common.robot

*** Settings ***
Library           ../../../../../AppData/Local/Packages/PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0/LocalCache/local-packages/Python310/site-packages/SeleniumLibrary/

*** Keywords ***
Expert Page Should Be Open
    open browser    ${BASE_URL}/expertPage    ${browser}
    Maximize Browser Window

Edit Profile
    Click Element    ${BUTTON_EDIT}
    sleep    2s

Save Changes
    Click Element    ${BUTTON_SAVE}
    sleep    1s

Verify Changes
    Page Should Contain    NewUsername
    Page Should Contain    NewBio

Modify Fields
    Input Text    ${EXPERT_NAME_EDIT_FIELD}    NewUsername
    sleep    1s
    Input Text    ${EXPERT_BIO_EDIT_FIELD}    NewBio
    sleep    1s

Clear Fields
    Clear Text Field    ${EXPERT_NAME_EDIT_FIELD}
    Clear Text Field    ${EXPERT_BIO_EDIT_FIELD}
    sleep    1s

Verify Error Message
    Wait Until Element Is Visible    ${ERROR_MESSAGE}
    ${is_element_visible}    Run Keyword And Return Status    Element Should Be Visible    ${ERROR_MESSAGE}
    Log    "L'élément erreur message est visible : ${is_element_visible}"
