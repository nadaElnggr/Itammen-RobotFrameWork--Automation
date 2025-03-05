*** Settings ***
Library     SeleniumLibrary
Library    AutoItLibrary
Library    BuiltIn
#Library    Process

Resource    ../03-EditProfileInformation/EditProfile.robot
Resource    ../03-EditProfileInformation/EditProfileAssertions.robot
Resource    ../03-EditProfileInformation/EditProfileLocators.robot
Resource    ../01-SharedModules/011-Header/Header.robot
Resource    ../00-Common/CommonVariable.robot

*** Variables ***
${FILE_PATH}    C:/Users/asus/Downloads/bg.jpg
${NEW_NAME}    NadaUpdate
${UPDATE_MAIL}    nadamihelwan@gmail.com
${SUBMIT_CLASS}      span.mat-button-wrapper
${AUTOIT_SCRIPT}    C:/Users/asus/Downloads/image.exe
${UPDATE_PHONE}      01157762525




*** Keywords ***
Open My Browser
    Open Browser    ${URL_PROD}    ${BROWSER}
    Maximize Browser Window

Navigate to profile
    Click Element   ${PROFILE_BUTTON}
    sleep   3



Click on Edit Button
    Scroll Element Into View   ${PERSONAL_SAVE_EDIT_BUTTON}
    Click Element   ${PERSONAL_SAVE_EDIT_BUTTON}
    sleep   1



Click on Personal Discard Button
    Scroll Element Into View   ${DISCARD_PERSONAL_EDIT}
    Click Element   ${DISCARD_PERSONAL_EDIT}
    sleep   1



Update IMG
    Scroll Element Into View   ${IMG_SCROLLER}
    Click Element   ${IMG}
    Choose File    //input[@type="file"]    ${FILE_PATH}
#    Run Process    ${AUTOIT_SCRIPT}
    sleep   5



Update Name Field
    Scroll Element Into View   ${NAME_UPDATE_FIELD}
    Wait until Element is Enabled    ${NAME_UPDATE_FIELD}
    Input Text    ${NAME_UPDATE_FIELD}    ${NEW_NAME}
    Sleep   1



Update Mail
    Scroll Element Into View   ${EMAIL_CLICK_HERE}
    Wait until Element is Enabled    ${EMAIL_CLICK_HERE}
    Click Element   ${EMAIL_CLICK_HERE}
    Wait until Element is Enabled    ${MAIL_UPDATE_FIELD}
    Input Text    ${MAIL_UPDATE_FIELD}    ${UPDATE_MAIL}
    Sleep   1
    Wait until Element is Enabled    ${POP_UP_SUBMIT}
    Execute JavaScript    Array.from(document.querySelectorAll('${SUBMIT_CLASS}')).find(span => span.textContent.trim() === 'submit').click();
    sleep   2


Select Male Gender
    Execute JavaScript    document.getElementById('${GENDER_SCROLLER}').scrollIntoView();
    Execute JavaScript    document.querySelector('input[type="radio"][value="1"]').click();
    Sleep    2


Select Female Gender
    Execute JavaScript    document.getElementById('${GENDER_SCROLLER}').scrollIntoView();
    Execute JavaScript    document.querySelector('input[type="radio"][value="2"]').click();
    Sleep    2

Update Phone Number
    Scroll Element Into View   ${PHONE_NUMBER_SCROLLER}
    Wait until Element is Enabled    ${PHONE_CLICK_HERE}
    Click Element   ${PHONE_CLICK_HERE}
    Wait until Element is Enabled    ${PHONE_UPDATE_FIELD}
    Input Text    ${PHONE_UPDATE_FIELD}    ${UPDATE_PHONE}
    Sleep   1
    Wait until Element is Enabled    ${POP_UP_SUBMIT}
    Execute JavaScript    Array.from(document.querySelectorAll('${SUBMIT_CLASS}')).find(span => span.textContent.trim() === 'submit').click();
    sleep   4


Click Save Button
    Scroll Element Into View   ${PERSONAL_SAVE_EDIT_BUTTON}
    Wait until Element is Enabled    ${PERSONAL_SAVE_EDIT_BUTTON}
    Click Element   ${PERSONAL_SAVE_EDIT_BUTTON}
#    Element Should Be Visible


Close My Recent Browser
    Close Browser







