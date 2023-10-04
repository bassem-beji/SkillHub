*** Settings ***
Test Setup        Profile Page Should Be Open
Test Teardown     Close Page
Resource          ../Resourses/Variables.robot
Resource          ../Resourses/UserUpdate.robot
Resource          ../Resourses/common.robot

*** Test case ***
Test User Profile Update
    [Tags]    update
    User Log In    sirine@gmail.com    sirine
    Go To Profile Page
    Edit Profile
    Modify Fields
    Save Changes
    Verify Changes

Missing Required Fields
    [Tags]    failupdate
    User Log In    sirine@gmail.com    sirine
    Go To Profile Page
    Edit Profile
    Clear Fields
    Save Changes
    sleep    2s
    Verify Error Message
