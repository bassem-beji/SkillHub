*** Settings ***
Suite Setup       Login Page Should Be Open
Suite Teardown    Close Page
Resource          ../Resourses/Variables.robot
Resource          ../Resourses/ExpertLogin.robot
Resource          ../Resourses/Common.robot

*** Test Cases ***
Empty Fields
    [Tags]    e
    User clicks on the 'Login' button without filling out the fields

User fills the email address field with a valid value the cleared
    [Tags]    e
    User fills the email address field with a valid value the cleared

User fills valid credentials
    [Tags]    valid
    Regular user login with Valid credentials    Company@gmail.com    sirine
    close Page

User fills invalid credentials
    [Tags]    invalid
    Login Page Should Be Open
    Regular user login with Invalid credentials    user@gmail.com    wrong password

Transition from Login to SignUp Page
    [Tags]    e
    Click to the Sign Up link
