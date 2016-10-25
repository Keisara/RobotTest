*** Settings ***
Documentation   Users should only be able to login to GitHub with both a valid username and valid password
Library     Selenium2Library
Resource  HomePage.robot
Resource  LoginPage.robot
Resource  UserKeywords.robot
Test Timeout  20s

*** Test Cases ***
Open Browser And Go To GitHub
    Open Browser And Go To GitHub

User is able to login with a valid username and password
    Click Sign In Button
    Enter Valid Username
    Enter Valid Password
    Click Login Button
    Wait For Successful Login Element To Appear

User is able to log out
    Click Logout Button 1
    Click Logout Button 2
    Wait For Successful Login Element To Appear

User is unable to login with an invalid username and invalid password
    Go to GitHub
    Click Sign In Button
    Enter Invalid Username
    Enter Invalid Password
    Click Login Button
    Wait For Unsucessful Login Element To Appear

User is unable to login with valid username and invalid password
    Go to GitHub
    Click Sign In Button
    Enter Valid Username
    Enter Invalid Password
    Click Login Button
    Wait For Unsucessful Login Element To Appear

User is unable to login with an invalid username and valid password
    Go to GitHub
    Click Sign In Button
    Enter Invalid Username
    Enter Valid Password
    Click Login Button
    Wait For Unsucessful Login Element To Appear

User is unable to login with a blank username and valid password
    Go to GitHub
    Click Sign In Button
    Enter Blank Username
    Enter Valid Password
    Click Login Button
    Wait For Unsucessful Login Element To Appear

User is unable to login with a valid username and blank password
    Go to GitHub
    Click Sign In Button
    Enter Valid Username
    Enter Blank Password
    Click Login Button
    Wait For Unsucessful Login Element To Appear

User is unable to login with a blank username and blank password
    Go to GitHub
    Click Sign In Button
    Enter Blank Username
    Enter Blank Password
    Click Login Button
    Wait For Unsucessful Login Element To Appear

Close All Browsers
    close all browsers



