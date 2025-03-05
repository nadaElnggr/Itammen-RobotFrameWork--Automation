*** Settings ***
Library     SeleniumLibrary
Resource    ../04-EditMedicalInformation/EditMedicalProfileKeyWords.robot
Resource    ../03-EditProfileInformation/EditProfileKeyWords.robot




*** Keywords ***
Discard Edit Medical Information
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Click on Discard Button
    Assert Save
    Close My Recent Browser

Check Blood TYPE
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Select Blood Type Box
    Select Blood Type
    Assert Save
    Close My Recent Browser

Update Weight
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Update Weight Field
#    Click SAVE_Edit Button
#    Assert Save
    Close My Recent Browser

Change Doctor to Male
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Choose Male Doctor
#    Click SAVE_Edit Button
#    Assert Save
    Close My Recent Browser

Change Doctor to Female
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Choose Female Doctor
#    Click SAVE_Edit Button
#    Assert Save
    Close My Recent Browser

Update Height
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Update Hight Field
#    Click SAVE_Edit Button
#    Assert Save
    Close My Recent Browser

Select Long Term Diseases
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Click Diseases Box
    Select Diseases
#    Click SAVE_Edit Button
    Assert Save
    Close My Recent Browser


Select Family Diseases
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Select Family History Box
    Select History Diseases
#    Click SAVE_Edit Button
#    Assert Save
    Close My Recent Browser

Update Allergies
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Click Allergies Box
    Select Allergies
#    Click SAVE_Edit Button
#    Assert Save
    Close My Recent Browser


Update Medical Notes
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Add Medical Notes
    Click Save Medical Information
#    Assert Save
    Close My Recent Browser



Edit All Medical Information
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Medical Information Tab
    Click SAVE_Edit Button
    Choose Female Doctor
    Update Weight Field
    Update Hight Field
    Click Diseases Box
    Select Diseases
    Click Allergies Box
    Select Allergies
    Add Medical Notes
    Click Save Medical Information
    Close My Recent Browser

