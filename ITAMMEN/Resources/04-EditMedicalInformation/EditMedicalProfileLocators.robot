*** Settings ***
Library     SeleniumLibrary

*** Variables ***
# nav tab
${MEDICAL_INFORMATION_TAB}  //div[@id="mat-tab-label-2-1"]
${PERSONAL_INFORMATION_TAB}  //div[@id="mat-tab-label-1-0"]



#form locators
${MEDICAL_SAVE_EDIT_BUTTON}   //app-patient-profile//mat-tab-body[2]//button[@class='mat-focus-indicator default-btn mat-raised-button mat-button-base mat-primary ng-star-inserted']
${DISCARD_MEDICAL_EDIT}    //app-patient-profile//mat-tab-body[2]//span[contains(text(), 'Discard')]
${UPDATE_TARCKER}   //app-patient-profile//div/div[1]/div[1]
${SAVE_MEDICAL_INFORMATION_BUTTON}  //app-patient-profile//mat-tab-body[2]//button[@color='primary' and contains(@class, 'mat-raised-button') and contains(., 'SAVE')]



#Dr Locators
${DOCTOR_SCROLLER}    //section[@class="row mb-2"]
${DOCTOR_DIV}    //div[@class="doctor ng-star-inserted"]
${AIDEN}    //p[contains(text(), 'Doctor Aiden')]
${SUBMIT_DOCTOR_BUTTON}    //button[contains(text(), 'Confirm')]
${DISCARD-DOCTOR_CHANGE}    //div[2]/div[2]/div/mat-dialog-container/app-choose-doctor/div/div[2]/span

#Height Weight Locators
${HIGHT_UPDATE_FIELD}   //input[@placeholder="Height"]
${WEIGHT_UPDATE_FIELD}   //input[@placeholder="Weight"]

#Blood
${BLOOD_TYPE_BOX}   mat-select[formcontrolname="blood_type"]
${BLOOD_CONTAINER}    .mat-option-text
${BLOOD_A+_TYPE}   A+
${BLOOD_A-_TYPE}   A-
${BLOOD_B+_TYPE}   B+
${BLOOD_B-_TYPE}   B-
${BLOOD_AB+_TYPE}   AB+
${BLOOD_AB-_TYPE}   AB-


#Long Term Diseaes
${DISEASES_CONTAINER}    mat-select[formcontrolname="long_term_diseases"]
${MAT_OPTION_CLASS}    .mat-option
${DIABETES}    Diabetes
${HYPERTENSION}    Hypertension
${ASTHMA}    Asthma
${DIABEKIDNEY_DISEASE}    Chronic Kidney Disease
${COPD}    Chronic Obstructive Pulmonary Disease (COPD)
${ARTHIRITIS}    Arthritis
${CANCER}    Cancer
${AIDS}    HIV/AIDS
${HEPATITIS}    Hepatitis
${MULTIPLE_SCLEROSIS}    Multiple Sclerosis
${ALZAHIEMER}    Alzheimer’s Disease
${PARKINSON}    Parkinson’s Disease

#family history
${FAMILY_HISTORY_CONTAINER}    .mat-select[formcontrolname="family_medical_history"]
${HYPERTENSION}    Hypertension
${OBESITY}  Obesity
${KIDNEY_DISEASE}   Kidney Disease
${STROKE}   Stroke


#ALLERGIES
${ALLERGIES}     .mat-select[formcontrolname="allergies"]
${POLLEN_ALLERGY}    Pollen
${DUST_ALLERGY}    Dust Mites
${PET_ALLERGY}    Pet Dander
${PEANUT_ALLERGY}    Peanuts
${SHELLFISH_ALLERGY}    Shellfish
${NUTS_ALLERGY}    Tree Nuts



#MEDICAL NOTES
${MEDICAL_NOTES}    //textarea[@placeholder="undefined"]





















