*** Settings ***
Library     SeleniumLibrary
Resource    ../02-Login/LoginKeyWords.robot
Resource    ../00-Common/CommonVariable.robot
Resource    ../01-SharedModules/011-Header/Header.robot


*** Keywords ***
Login with mail
    Navigate to the login page
    Enter needed form data
    Click Login Button
    Assert Reaching Home page



