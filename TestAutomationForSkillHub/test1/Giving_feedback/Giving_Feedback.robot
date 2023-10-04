*** Settings ***
Library           SeleniumLibrary
Library           Screenshot
Resource          ../Ressources/config.robot
Resource          ../Ressources/configGivingFeedback.robot
Resource          ../Ressources/keywords.robot
Resource          ../Ressources/keywordsGivingFeedback.robot

*** Test Cases ***
Giving Feedback at the End of Each Session
    keywords.Open my Browser    ${userPage}    ${browser}
    sleep    5
    view More    ${viewMoreBouton}
    Verify Existence of Comment Card
    sleep    5
    Compose Comment    ${inputcomments}    ${mycomment}
    sleep    5
    #Refresh Page
    sleep    5
    Verify My Name and My Comment
    sleep    5
    [Teardown]    Close Browser
