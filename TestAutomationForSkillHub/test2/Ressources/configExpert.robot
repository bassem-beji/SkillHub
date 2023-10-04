*** Variables ***
#browser
${browser}        Chrome

#url
${expertPage}     http://localhost:4200/expertPage
${expertloginPage}    http://localhost:4200/login

#comptetest
${emailexpert}    saddem@gmail.com
${passwordexpert}    saddem123
#${emailexpert} \ \ \ bassem@gmail.com
#${passwordexpert} \ \ \ bassem

#xpath
${email2}         xpath=//input[@formcontrolname='Email']
${password2}      xpath=//input[@formcontrolname='Password']
${loginbouton2}    xpath=/html/body/app-root/app-login/div/div/div/div/div/div[2]/form/button

${mysessionslien}    xpath=//a[contains(text(), 'View My Sessions')]
${checkList}      xpath=/html/body/app-root/app-expert-sessions/div/div/div[2]/div[2]/button/span


${accept}         xpath=/html/body/app-root/app-candidate-list/div/div/div/main/table/tbody/tr/td[4]/a
${refuse}         xpath=/html/body/app-root/app-candidate-list/div/div/div/main/table/tbody/tr/td[5]/a
${resultat}       xpath=//td[@class='status']

#user info
${userName}       xpath=/html/body/app-root/app-candidate-list/div/div/div/main/table/tbody/tr/td[1]/p[1]
${userEmail}      xpath=/html/body/app-root/app-candidate-list/div/div/div/main/table/tbody/tr/td[2]/p[1]
${userBio}        xpath=/html/body/app-root/app-candidate-list/div/div/div/main/table/tbody/tr/td[1]/p[2]
${boutonresultat}    xpath=/html/body/app-root/app-user-sessions/div/div/div[2]/button
