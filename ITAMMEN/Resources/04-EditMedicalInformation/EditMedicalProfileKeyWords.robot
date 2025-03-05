*** Settings ***
Library     SeleniumLibrary
Library    AutoItLibrary
Library    BuiltIn
#Library    Process

Resource     ../04-EditMedicalInformation/EditMedicalProfileAssertions.robot
Resource     ../04-EditMedicalInformation/EditMedicalProfileLocators.robot
Resource    ../01-SharedModules/011-Header/Header.robot
Resource    ../00-Common/CommonVariable.robot




*** Variables ***
${INT_HIGHT}    169
${FLOAT_HIGHT}    168.5
${INT_WEIGHT}    75
${FLOAT_WEIGHT}    74.8
${PREVIOUS_PERCENTAGE}
${CALENDAR_AUTOIT_SCRIPT}   C:/Users/asus/Downloads/date.exe
${NOTES}    Ah yana Yama


*** Keywords ***
Click on Medical Information Tab
    Scroll Element Into View   ${MEDICAL_INFORMATION_TAB}
    Click Element    ${MEDICAL_INFORMATION_TAB}


Click SAVE_Edit Button
    Scroll Element Into View   ${MEDICAL_SAVE_EDIT_BUTTON}
    Click Element    ${MEDICAL_SAVE_EDIT_BUTTON}
#    Execute JavaScript    document.querySelector('${MEDICAL-INFO_EDIT_BUTTON}').scrollIntoView();
#    Execute JavaScript    document.querySelector('${MEDICAL-INFO_EDIT_BUTTON}').click();


Click on Discard Button
    Scroll Element Into View   ${DISCARD_MEDICAL_EDIT}
    Click Element   ${DISCARD_MEDICAL_EDIT}
    sleep   1
    Element Should Be Visible    ${Assert_MEDICAL_EDIT}

#Update Calnedar

Choose Female Doctor
    Scroll Element Into View   ${DOCTOR_SCROLLER}
    Click Element    ${DOCTOR_DIV}
    Sleep    2
    Scroll Element Into View   ${AIDEN}
    Click Element    ${AIDEN}
    Sleep    2
    Scroll Element Into View   ${SUBMIT_DOCTOR_BUTTON}
    Click Element    ${SUBMIT_DOCTOR_BUTTON}
    Element Should Be Visible    ${HIGHT_UPDATE_FIELD}
    Sleep    2


Get Completion Percentage Before Edit
    ${PREVIOUS_PERCENTAGE}=    Get Text    ${UPDATE_TARCKER}
    ${PREVIOUS_PERCENTAGE}=    Convert To Number    ${PREVIOUS_PERCENTAGE[:-2]}


Choose Male Doctor
    Scroll Element Into View   ${DOCTOR_SCROLLER}
    Click Element    ${DOCTOR_DIV}
    Sleep    2
    Scroll Element Into View   ${SUBMIT_DOCTOR_BUTTON}
    Click Element    ${SUBMIT_DOCTOR_BUTTON}
    Sleep    2


Discard New Doctor
    Scroll Element Into View   ${DISCARD-DOCTOR_CHANGE}
    Click Element    ${DISCARD-DOCTOR_CHANGE}


Update Hight Field
    Scroll Element Into View   ${HIGHT_UPDATE_FIELD}
    Wait until Element is Enabled    ${HIGHT_UPDATE_FIELD}
    Input Text    ${HIGHT_UPDATE_FIELD}    ${INT_HIGHT}
    Sleep   1


Update Weight Field
    Scroll Element Into View   ${WEIGHT_UPDATE_FIELD}
    Wait until Element is Enabled    ${WEIGHT_UPDATE_FIELD}
    Input Text    ${WEIGHT_UPDATE_FIELD}    ${INT_WEIGHT}
    Sleep   1

Select Blood Type Box
    # Scroll into view and click the mat-select element
    Execute JavaScript    document.querySelector('${BLOOD_TYPE_BOX}').scrollIntoView();
    Execute JavaScript    document.querySelector('${BLOOD_TYPE_BOX}').click();
    Sleep   2

Select Blood Type
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${BLOOD_CONTAINER}')).find(el => el.textContent.trim() === '${BLOOD_B+_TYPE}'); if (option) { option.scrollIntoView(); option.click(); }
    Sleep   2
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${BLOOD_CONTAINER}')).find(el => el.textContent.trim() === '${BLOOD_B-_TYPE}'); if (option) { option.scrollIntoView(); option.click(); }
    Sleep   2
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${BLOOD_CONTAINER}')).find(el => el.textContent.trim() === '${BLOOD_A+_TYPE}'); if (option) { option.scrollIntoView(); option.click(); }
    Sleep   2

Update Blood Type Field
    Scroll Element Into View   ${BLOOD_TYPE_BOX}
    Wait until Element is Enabled    ${BLOOD_TYPE_BOX}
    Click Element    ${BLOOD_TYPE_BOX}
    Click Element    ${BLOOD_B+_TYPE}
    Sleep   1


Click Diseases Box
         Execute JavaScript    var matSelect = document.querySelector('${DISEASES_CONTAINER}'); if (matSelect) { matSelect.scrollIntoView(); matSelect.click(); }
         Sleep    2


Select Diseases
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${MAT_OPTION_CLASS}')).find(el => el.querySelector('.mat-option-text').textContent.trim() === '${DIABETES}'); if (option) { option.scrollIntoView(); option.querySelector('.mat-pseudo-checkbox').click(); }
    Sleep    3
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${MAT_OPTION_CLASS}')).find(el => el.querySelector('.mat-option-text').textContent.trim() === '${HEPATITIS}'); if (option) { option.scrollIntoView(); option.querySelector('.mat-pseudo-checkbox').click(); }
    Sleep    3

Click Allergies Box
         Execute JavaScript    var matSelect = document.querySelector('${ALLERGIES}'); if (matSelect) { matSelect.scrollIntoView(); matSelect.click(); }
         Sleep    2

Select Allergies
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${MAT_OPTION_CLASS}')).find(el => el.querySelector('.mat-option-text').textContent.trim() === '${POLLEN_ALLERGY}'); if (option) { option.scrollIntoView(); option.querySelector('.mat-pseudo-checkbox').click(); }
    Sleep    3
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${MAT_OPTION_CLASS}')).find(el => el.querySelector('.mat-option-text').textContent.trim() === '${SHELLFISH_ALLERGY}'); if (option) { option.scrollIntoView(); option.querySelector('.mat-pseudo-checkbox').click(); }
    Sleep    3

Check Updateded Percentage
    ${percentage_text}=    Get Text    ${UPDATE_TARCKER}
    ${percentage}=    Convert To Number    ${percentage_text[:-2]}
    Should Be True    ${percentage} >= ${PREVIOUS_PERCENTAGE} or ${percentage} == 100    "Percentage should be greater than or equal to 55 or equal to 100, but it is ${percentage}."


Select Family History Box
    Execute JavaScript    var matSelect = document.querySelector('${FAMILY_HISTORY_CONTAINER}'); if (matSelect) { matSelect.scrollIntoView(); matSelect.click(); }
    Sleep    2


Select History Diseases
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${MAT_OPTION_CLASS}')).find(el => el.querySelector('.mat-option-text').textContent.trim() === '${OBESITY}'); if (option) { option.scrollIntoView(); option.querySelector('.mat-pseudo-checkbox').click(); }
    Execute JavaScript    var option = Array.from(document.querySelectorAll('${MAT_OPTION_CLASS}')).find(el => el.querySelector('.mat-option-text').textContent.trim() === '${STROKE}'); if (option) { option.scrollIntoView(); option.querySelector('.mat-pseudo-checkbox').click(); }

Assert Save
    Element Should Be Visible    ${Assert_MEDICAL_EDIT}   



Add Medical Notes
    Scroll Element Into View   ${MEDICAL_NOTES}
    Wait until Element is Enabled    ${MEDICAL_NOTES}
    Input Text    ${MEDICAL_NOTES}    ${NOTES}
    Sleep   1


Click Save Medical Information
    Scroll Element Into View   ${SAVE_MEDICAL_INFORMATION_BUTTON}
    Click Element    ${SAVE_MEDICAL_INFORMATION_BUTTON}






