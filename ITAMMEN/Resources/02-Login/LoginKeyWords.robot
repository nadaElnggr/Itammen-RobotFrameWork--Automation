*** Settings ***
Library   SeleniumLibrary
Resource    ../02-Login/LoginAssertions.robot
Resource    ../02-Login/LoginLocators.robot
Resource    ../01-SharedModules/011-Header/Header.robot
Resource    ../00-Common/CommonVariable.robot

*** Variables ***

${EMAIL}     nadamihelwan@gmail.com
${EMAIL_PASSWORD}     nadamihelwan@gmail.com127


*** Keywords ***

Navigate to the login page
    Click Element   ${LOGIN_NAV}
    Sleep   1

Enter needed form data
    Scroll Element Into View   ${EMAIL_LOG_FIELD}
    Input Text  ${EMAIL_LOG_FIELD}  ${EMAIL}
    Scroll Element Into View  ${PASSWORD_FIELD}
    Input Text  ${PASSWORD_FIELD}   ${EMAIL_PASSWORD}
    sleep   1

Click Login Button
    Click Element   ${LOGIN_BUTTON}

Assert Reaching Home page
     Wait Until Element Is Visible   ${ASSERT_HOME}



