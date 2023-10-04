*** Settings ***
Suite Setup       Expert Sign Up Page Should Be Open
Suite Teardown    Close Page
Resource          ../Resourses/Variables.robot
Resource          ../Resourses/ExpertRegister.robot
Resource          ../Resourses/Common.robot

*** Test Cases ***
Successful Expert Registration
    [Tags]    1
    Fill Expert Registration Form with Mandatory Fields

Empty Mandatory Fields
    [Tags]    2
    Attempt to Create Expert Account with Empty Mandatory Fields

Clear Mandatory Fields
    [Tags]    3
    Create an Expert Account with a Filled and Then Cleared Field

Transition from Sign-Up to Login Page
    [Tags]    4
    Click to the login link
