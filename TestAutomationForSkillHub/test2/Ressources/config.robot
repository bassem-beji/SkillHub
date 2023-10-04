*** Variables ***
#browser
${browser}        Chrome

#url
${userPage}       http://localhost:4200/userPage
${urlloginPage}    http://localhost:4200/userlogin

#comptetest
#${emailtest} \ \ \ \ \ adem@gmail.com
#${passwordtest} \ \ \ adem
${emailtest}      bassem@gmail.com
${passwordtest}    bassem




#xpath
${email}          xpath=/html/body/app-root/app-user-login/div/div/div/div/div/div[2]/form/div[1]/div/input
${password}       xpath=/html/body/app-root/app-user-login/div/div/div/div/div/div[2]/form/div[2]/div/input
${loginbouton}    xpath=/html/body/app-root/app-user-login/div/div/div/div/div/div[2]/form/button

${viewMoreBouton}    xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[3]/div/div[2]/button
#${viewMoreBouton} \ \ \ xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div/div[2]/button

#reserving a session
${boutonReservePlace}    xpath=/html/body/app-root/app-session-details/div/div[1]/main/div[2]/button
${boutonReserveNow}    xpath=/html/body/app-root/app-session-details/div/section/div/button
${reserved}       xpath=/html/body/app-root/app-session-details/div/div[1]/main/div[2]/p
${myReservations}    xpath=//*[@id="navbarTogglerDemo01"]/ul/li[2]/a
${resultat}       xpath=//button[@class='tag']
