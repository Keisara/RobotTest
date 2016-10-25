*** Settings ***
Library     Selenium2Library
Resource    SignUpPage.robot

*** Variables ***
${Browser}  chrome
${URL}  https://github.com/
@{Usernames}    Tom     ,`~     AUsernameThatExceeds39CharactersAUsernameThatExceeds39Characters    ${EMPTY}
@{Emails}   tom@gmail.com   AnEmailThatExeeds100CharactersAnEmailThatExeeds100CharactersAnEmailThatExeeds100CharactersAnEmailThatExeeds100Characters@gmail.com      tomgmail.com    t@om@gmail.com      ${EMPTY}
@{Passwords}    short   APasswordThatIsGreaterThan72CharactersAPasswordThatIsGreaterThan72Characters    NOLOWERCASENONUMBER     ${EMPTY}

*** Keywords ***
Enter Non-unique Username
    press key   ${UsernameField}    ${Usernames[0]}

Enter Username With Invalid Characters
    press key   ${UsernameField}    ${Usernames[1]}

Enter Username That Exceeds 39 Characters
    press key   ${UsernameField}    ${Usernames[2]}

Enter Blank Username
    press key   ${UsernameField}    ${Usernames[3]}

Enter Non-unique Email
    press key   ${EmailField}   ${Emails[0]}

Enter Email That Exeeds 100 Characters
    press key   ${EmailField}   ${Emails[1]}

Enter Email That Does Not Contain an "@" Symbol
    press key   ${EmailField}   ${Emails[2]}

Enter Email That Contains More Than 1 "@" Symbol
    press key   ${EmailField}   ${Emails[3]}

Enter Blank Email
    press key   ${EmailField}   ${Emails[4]}

Enter Password That Is Less Than 7 Characters
    press key   ${PasswordField}    ${Passwords[0]}

Enter Password That is Greater Than 72 Characters
    press key   ${PasswordField}    ${Passwords[1]}

Enter Password With No Lowercase Letters And No Number
    press key   ${PasswordField}    ${Passwords[2]}

Enter Blank Password
    press key   ${PasswordField}    ${Passwords[3]}

Open Browser And Go To GitHub
    Open Browser    ${URL}  ${Browser}
    maximize browser window

Go to GitHub
    go to  ${URL}

Click Sign Up Button
    click element  ${SignUpButton}

Click Create An Account Button
    click element  ${CreateAnAccountButton}

Wait For Unsuccessful Create An Account Element To Appear
    wait until page contains    There were problems creating your account

Clear All TextFields
    clear element text  ${UsernameField}
    clear element text  ${EmailField}
    clear element text  ${PasswordField}