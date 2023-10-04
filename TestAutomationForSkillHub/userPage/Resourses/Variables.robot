*** Settings ***
Library           ../../../../../AppData/Local/Packages/PythonSoftwareFoundation.Python.3.10_qbz5n2kfra8p0/LocalCache/local-packages/Python310/site-packages/SeleniumLibrary/

*** Variables ***
${BASE_URL}       http://localhost:4200
${BROWSER}        chrome

${EXPERT_PAGE}    http://localhost:4200/expertPage
${USER_PAGE}      http://localhost:4200/userPage
${USER_PROFILE}    http://localhost:4200/userProfile
${USER_SESSIONS}    http://localhost:4200/userSessions


${NAME_FIELD}     xpath=//input[@type='text' and @placeholder='Name']
${EMAIL_FIELD}    xpath=//input[@type='text' and @placeholder='Email']
${PASSWORD_FIELD}    xpath=//input[@placeholder='Password']
${BIO_FIELD}      xpath=//input[@type='text' and @placeholder='Bio']
${COMPANY_FIELD}    xpath=//input[@type='text' and @placeholder='CompanyName']

${BUTTON}         xpath=//button[@class='btn btn-primary btn-block mt-4 w-100']

${ERROR_MESSAGE_EMAIL}    xpath=//small[@class='text-danger']
${LOGIN_LINK}     //*[@id="forgot"]
${SIGNUP_LINK}    //*[@id="forgot"]


${EMPTY}          \

${BUTTON_EDIT}    xpath=//button[@class='edit']
${NAME_EDIT_FIELD}    //th[contains(normalize-space(.), 'Full Name')]/following-sibling::td//input[@type='text']
${BIO_EDIT_FIELD}    //tr[th[normalize-space(.)='Bio']]//input[@type='text']
${BUTTON_SAVE}    xpath=//button[@class='save']
${ERROR_MESSAGE}    xpath=//div[@class='error-message']

${EXPERT_BIO_EDIT_FIELD}    xpath=//div[@class='info']//textarea[contains(@class, 'bio')]
${EXPERT_NAME_EDIT_FIELD}    xpath=//div[@class='info']//input[contains(@class, 'Name') and @type='text']


${USER_NAVBAR}    xpath=//div[@id='navbarTogglerDemo01']
${HOME_LINK}      //*[@id="navbarTogglerDemo01"]/ul/li[1]/a
${RESERVATION_LINK}    //*[@id="navbarTogglerDemo01"]/ul/li[2]/a
${PROFILE_LINK}    //*[@id="navbarTogglerDemo01"]/ul/li[3]/a












