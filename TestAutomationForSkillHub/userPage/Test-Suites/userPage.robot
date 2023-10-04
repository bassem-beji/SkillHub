*** Settings ***
Suite Setup       User Page Should Be Open
Suite Teardown    Close Page
Test Setup        User Page Should Be Open
Test Teardown     Close Page
Resource          ../Resourses/Variables.robot
Resource          ../Resourses/Navbar.robot
Resource          ../Resourses/Common.robot

*** Test Cases ***
Navigate With Links
    User Log In    sirine@gmail.com    sirine
    Go To Profile Page
    Go Back
    Go To Reservation Page
    Go Back
    Go To Home Page

Navigate With Buttons
    User Log In    sirine@gmail.com    sirine
    Wait Until Element Is Visible    //div//a[contains(text(), 'Visit Profile')]
    Click Element    xpath=//div//a[contains(text(), 'Visit Profile')]
    Wait Until Element Is Visible    //div//h4[contains(text(), 'Profile informations:')]
    Go Back
    Click Element    xpath=//*[@id="navbarDropdownMenuAvatar"]
    sleep    2s
    Click Element    xpath=//li//a[contains(text(), 'My profile')]
    sleep    2s
    Wait Until Element Is Visible    //div//h4[contains(text(), 'Profile informations:')]
