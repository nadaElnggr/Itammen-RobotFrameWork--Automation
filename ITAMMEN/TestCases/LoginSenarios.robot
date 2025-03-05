*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyword.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/02-Login/Login.robot
Suite Setup             CommonKeyword.Begin Web Test
Suite Teardown          CommonKeyword.End Web Test


*** Test Cases ***
Verify that the user can Login with mail
    Login with mail

