*** Settings ***
Library     Selenium2Library
Resource  HomePage.robot
Resource  LoginPage.robot

*** Variables ***
${Browser}  chrome
${URL}  https://github.com/
@{Usernames}    k.eisakyu@gmail.com     emailFail@gmail.com     ${EMPTY}
@{Passwords}    automationtest8     passwordFail    ${EMPTY}

*** Keywords ***
Click Sign In Button
    click element   link=${SignIn}

Enter Valid Username
    press key   ${LoginField}     ${Usernames[0]}

Enter Invalid Username
    press key   ${LoginField}     ${Usernames[1]}

Enter Blank Username
    press key   ${LoginField}     ${Usernames[2]}

Enter Valid Password
    press key   ${PasswordField}    ${Passwords[0]}

Enter Invalid Password
    press key   ${PasswordField}    ${Passwords[1]}

Enter Blank Password
    press key  ${PasswordField}     ${Passwords[2]}

Click Login Button
    click element   ${Login}

Click Logout Button 1
    click element  css=${Logout1}

Click Logout Button 2
    click element  css=${Logout2}

Wait For Successful Login Element To Appear
    wait until page contains element  name=${LoginCheck}

Wait For Unsucessful Login Element To Appear
    wait until page contains     Incorrect username or password

Open Browser And Go To GitHub
    Open Browser    ${URL}  ${Browser}

Go to GitHub
    go to  ${URL}