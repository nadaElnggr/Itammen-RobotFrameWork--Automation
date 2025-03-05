*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/01-SharedModules/011-Header/HeaderKeywords.robot

*** Keywords ***
Login with valid number
    Assert for the header
    click on login
