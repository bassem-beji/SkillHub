*** Settings ***
Library           SeleniumLibrary
Library           Screenshot
Resource          ../Ressources/config.robot
Resource          ../Ressources/keywords.robot

*** Test Cases ***
Redirect to Login Page for User Authentication
    keywords.Open my Browser login    ${userPage}    ${browser}
    sleep    3
    Location Should Be    ${urlloginpage}
    login user    ${emailtest}    ${passwordtest}
    sleep    2
    #Location Should Be    ${userPage}
    [Teardown]    Close Browser

View Detailed Session Information Scenario
    keywords.Open my Browser    ${userPage}    ${browser}
    sleep    2
    keywords.Shared Session Existence Check
    [Teardown]    Close Browser

Viewing Session Details and Publisher Expert Information
    keywords.Open my Browser    ${userPage}    ${browser}
    sleep    2
    view More    ${viewMoreBouton}
    sleep    2
    keywords.Viewing Session Details
    keywords.Verify Expert Information for a Session
    [Teardown]    Close Browser
