*** Settings ***
Library     Selenium2Library
Resource  HomePage.robot
Resource  LoginPage.robot

*** Variables ***
${Browser}  chrome
${URL}  https://github.com/
@{Usernames}    k.eisakyu@gmail.com     emailFail@gmail.com     k.eisakyu@gmail.com     ${EMPTY}    ${EMPTY}    k.eisakyu@gmail.com
@{Passwords}    automationtest8     passwordFail    passwordFail    ${EMPTY}    automationtest8     ${EMPTY}


*** Test Cases ***
User is able to login with a valid username and password
    Open Browser    ${URL}  ${Browser}
    maximize browser window
    click element   link=${SignIn}
    press key   ${LoginField}     ${Usernames[0]}
    press key   ${PasswordField}    ${Passwords[0]}
    click element   ${Login}
    wait until page contains element  name=${LoginCheck}

User is able to log out
    click element  css=${Logout1}
    click element  css=${Logout2}
    wait until page contains element  link=${SignIn}

User is unable to login with an invalid username and invalid password
    Go To   ${URL}
    click element   link=${SignIn}
    press key   ${LoginField}     ${Usernames[1]}
    press key   ${PasswordField}    ${Passwords[1]}
    click element   ${Login}
    Page should contain     New to GitHub?
    close browser

