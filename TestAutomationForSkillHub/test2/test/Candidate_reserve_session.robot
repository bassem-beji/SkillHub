*** Settings ***
Library           SeleniumLibrary
Resource          ../Ressources/config.robot
Resource          ../Ressources/keywords.robot

*** Test Cases ***
Reserving a Session
    keywords.Open my Browser    ${userPage}    ${browser}
    sleep    5
    view More    ${viewMoreBouton}
    sleep    5
    Reserver une session using the button    ${boutonReservePlace}
    sleep    5
    #sleep    5
    [Teardown]    Close Browser

Viewing Reservation Status
    keywords.Open my Browser    ${userPage}    ${browser}
    sleep    3
    click Element    ${myReservations}
    sleep    3
    #Page Should Contain Element    ${resultat}
    @{buttons}    Get WebElements    ${resultat}
    FOR    ${button}    IN    @{buttons}
        ${text}    Get Text    ${button}
        Check Button Text    ${text}
    END
    [Teardown]    Close Browser
