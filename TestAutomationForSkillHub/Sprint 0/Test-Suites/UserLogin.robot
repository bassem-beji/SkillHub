*** Settings ***
Suite Setup       Login Page Should Be Open
Suite Teardown    Close Page
Test Setup        Login Page Should Be Open
Test Teardown     Close Page
Resource          ../Resourses/Variables.robot
Resource          ../Resourses/UserLogin.robot
Resource          ../Resourses/Common.robot

*** Test Cases ***
Empty Fields
    [Tags]    LOG
    User clicks on the 'Login' button without filling out the fields

User fills the email address field with a valid value the cleared
    [Tags]    LOG2
    User fills the email address field with a valid value the cleared

User fills valid credentials
    [Tags]    login
    Regular user login with Valid credentials    sirine@gmail.com    sirine

User fills invalid credentials
    [Tags]    login1
    Regular user login with Invalid credentials    user@gmail.com    wrong password

Transition from Login to SignUp Page
    [Tags]    link
    Click to the Sign Up link
