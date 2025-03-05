*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#profile nav vars
${PROFILE_BUTTON}   //button[@routerlink='/patient-profile']
${PERSONAL_TO_MEDICAL_INFORMATION_TAB}  //div[@id="mat-tab-label-2-1"]
${PERSONAL_SAVE_EDIT_BUTTON}   //app-patient-profile//mat-tab-body[1]//button[@color='primary']
${DISCARD_PERSONAL_EDIT}    //app-patient-profile//mat-tab-body[1]//span[contains(text(), 'Discard')]


#img vars
${IMG_SCROLLER}    //div[@role="tablist"]
${IMG}  //img[@class="preview"]
#name vars
${NAME_UPDATE_FIELD}  //input[@placeholder='Name']
#change mail vars
${EMAIL_CLICK_HERE}      //p[contains(text(),  'Want to change the Email ?')]//span[contains(text(), 'click here')]
${MAIL_UPDATE_FIELD}  //input[@name='txtEmail']
${POP_UP_SUBMIT}  //button[@class='mat-focus-indicator default-btn mat-raised-button mat-button-base mat-primary']
#select gender vars
${GENDER_SCROLLER}    mat-radio-2-input
${MALE_RADIO_BUTTON}    //input[@type='radio' and @value='1']
${FEMALE_RADIO_BUTTON}    //input[@type='radio' and @value='2']
#phone number vars
${PHONE_NUMBER_SCROLLER}    //p[contains(text(), 'Want to change phone number?')]
${PHONE_UPDATE_FIELD}  //input[@placeholder='Phone']
${PHONE_CLICK_HERE}  //p[contains(text(), 'Want to change phone number?')]//span[contains(text(), 'click here')]
${ERROR_TOAST}  //div[@class="cdk-live-announcer-element cdk-visually-hidden"]
${INFORMATION_TAB}  //div[@id="mat-tab-label-7-1"]











