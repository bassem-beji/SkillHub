*** Variables ***
#browser
${browser}        Chrome

#url
${userPage}       http://localhost:4200/userPage
${urlloginPage}    http://localhost:4200/userlogin

#comptetest
${emailtest}      adem@gmail.com
${passwordtest}    adem




#xpath
${email}          xpath=/html/body/app-root/app-user-login/div/div/div/div/div/div[2]/form/div[1]/div/input
${password}       xpath=/html/body/app-root/app-user-login/div/div/div/div/div/div[2]/form/div[2]/div/input
${loginbouton}    xpath=/html/body/app-root/app-user-login/div/div/div/div/div/div[2]/form/button
#session
${session}        xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div
${titresession}    xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div/div[1]/div/div/h4
${objectivesession}    xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div/div[1]/div/div/p
${imagesession}    xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div/div[1]/div/img
${dureesession}    xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div/div[2]/p[1]
${datesession}    xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div/div[2]/p[2]
${viewMoreBouton}    xpath=/html/body/app-root/app-user-main-page/div/section/div/div/div[1]/div/div[2]/button


#session1
${titresession1}    xpath=/html/body/app-root/app-session-details/div/section/div/h2
${objectivesession1}    xpath=/html/body/app-root/app-session-details/div/section/div/div[1]/div[1]/p
${imagesession1}    xpath=/html/body/app-root/app-session-details/div/div[1]/main/img
${dureesession1}    xpath=/html/body/app-root/app-session-details/div/section/div/div[2]/p[1]
${datesession1}    xpath=/html/body/app-root/app-session-details/div/section/div/div[2]/p[2]
${requirementssession}    xpath=/html/body/app-root/app-session-details/div/section/div/div[1]/div[2]/p

${profile}        xpath=/html/body/app-root/app-user-main-page/div/div/div
#expert user
${expertName}     xpath=/html/body/app-root/app-session-details/div/div[2]/div[2]/div/ul/li[1]/div/h2
${expertEmail}    xpath=/html/body/app-root/app-session-details/div/div[2]/div[2]/div/ul/li[1]/div/h4
${expertBio}      xpath=/html/body/app-root/app-session-details/div/div[2]/div[2]/div/ul/li[1]/div/p
${expertPhoneNumber}    xpath=/html/body/app-root/app-session-details/div/div[2]/div[2]/div/ul/li[2]/div/h4[1]
${expertLinkedin}    xpath=/html/body/app-root/app-session-details/div/div[2]/div[2]/div/ul/li[2]/div/h4[3]
${expertFacebook}    xpath=/html/body/app-root/app-session-details/div/div[2]/div[2]/div/ul/li[2]/div/h4[2]






