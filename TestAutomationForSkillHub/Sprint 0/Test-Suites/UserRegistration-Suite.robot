*** Settings ***
Suite Setup       Sign Up Page Should Be Open
Suite Teardown    Close Page
Resource          ../Resourses/Variables.robot
Resource          ../Resourses/UserRegister.robot
Resource          ../Resourses/Common.robot

*** Test Cases ***
Successful Registration
    Fill Registration Form with Mandatory Fields

Empty Mandatory Fields
    [Tags]    2
    Attempt to Create Account with Empty Mandatory Fields

Clear Mandatory Fields
    [Tags]    clear
    Creating an Account with a Filled and Then Cleared Field

Transition from Sign-Up to Login Page
    [Tags]    4
    Click to the login link
