*** Settings ***
Resource          ../Resourses/Variables.robot
Resource          ../Resourses/ExpertUpdate.robot
Resource          ../Resourses/common.robot

*** Test case ***
Test Expert Profile Update
    [Tags]    Expert1
    Expert Page Should Be Open
    Expert Log In    Company@gmail.com    sirine
    Edit Profile
    Modify Fields
    Save Changes
    Verify Changes

Missing Required Fields
    [Tags]    Expert1
    Expert Page Should Be Open
    Expert Log In    Company@gmail.com    sirine
    Edit Profile
    Clear Fields
    Save Changes
    sleep    2s
    Verify Error Message
