*** Settings ***
Documentation    Users should only be able to sign up a GitHub account when they meet the requirements for the text fields
Library     Selenium2Library
Resource  SignInKeywords.robot
Test Timeout  20s

*** Test Cases ***
Open GitHub Website And Click Sign Up Button
    Open Browser And Go To GitHub
    Click Sign Up Button

User Is Unable To Sign Up With A Non-unique Username, A Non-unique Email, And A Password That Is Less Than 7 Characters
    Clear All TextFields
    Enter Non-unique Username
    Enter Non-unique Email
    Enter Password That Is Less Than 7 Characters
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Non-unique Username, An Email That Exeeds 100 Characters, And A Password That Is Greater than 72 Characters
    Clear All TextFields
    Enter Non-unique Username
    Enter Email That Exeeds 100 Characters
    Enter Password That is Greater Than 72 Characters
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Non-unique Username, An Email That Exeeds 100 Characters, And A Password That Contains No Lowercase Letters Or A Number
    Clear All TextFields
    Enter Non-unique Username
    Enter Email That Exeeds 100 Characters
    Enter Password With No Lowercase Letters And No Number
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Non-unique Username, An Email That Exeeds 100 Characters, And A Blank Password
    Clear All TextFields
    Enter Non-unique Username
    Enter Email That Exeeds 100 Characters
    Enter Blank Password
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Username That Contains Invalid Characters, A Non-unique Email, And A Password That Is Less Than 7 Characters
    Clear All TextFields
    Enter Username With Invalid Characters
    Enter Non-unique Email
    Enter Password That Is Less Than 7 Characters
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Username That Contains Invalid Characters, A Non-unique Email, And A Password That Is Greater Than 72 Characters
    Clear All TextFields
    Enter Username With Invalid Characters
    Enter Non-unique Email
    Enter Password That Is Greater Than 72 Characters
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Username That Contains Invalid Characters, A Non-unique Email, And A Password That Contains No Lowercase Letters Or A Number
    Clear All TextFields
    Enter Username With Invalid Characters
    Enter Non-unique Email
    Enter Password With No Lowercase Letters And No Number
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Username That Contains Invalid Characters, A Non-unique Email, And A Blank Password
    Clear All TextFields
    Enter Username With Invalid Characters
    Enter Non-unique Email
    Enter Blank Password
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable To Sign Up With A Username That Contains Invalid Characters, An Email That Exeeds 100 Characters, And A Password That Is Greater than 72 Characters
    Clear All TextFields
    Enter Username With Invalid Characters
    Enter Email That Exeeds 100 Characters
    Enter Password That is Greater Than 72 Characters
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable to Sign Up With A Username That Exceeds 39 Charcters, An Email That Does Not Contain An "@" Symbol Followed By A Domain, And A Password That Contains No Lowercase Letters Or A Number
    Clear All TextFields
    Enter Username That Exceeds 39 Characters
    Enter Email That Does Not Contain an "@" Symbol
    Enter Password With No Lowercase Letters And No Number
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable to Sign Up With A Username That Is Blank, An Email That Contains More Than 1 "@" Symbol, And A Password That Is Blank
    Clear All TextFields
    Enter Blank Username
    Enter Email That Contains More Than 1 "@" Symbol
    Enter Blank Password
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

User Is Unable to Sign Up With A Blank Username, A Blank Email, And A Blank Password
    Clear All TextFields
    Enter Blank Username
    Enter Blank Email
    Enter Blank Password
    Click Create An Account Button
    Wait For Unsuccessful Create An Account Element To Appear

Close All Browsers
    close all browsers