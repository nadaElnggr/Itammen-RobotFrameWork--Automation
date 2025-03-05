*** Settings ***
Library     SeleniumLibrary
Resource    ../03-EditProfileInformation/EditProfileKeyWords.robot
Resource    ../02-Login/Login.robot



*** Keywords ***
Edit Profile Image
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Edit Button
    Update IMG
    Click Save Button


Edit Gender to Male
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Edit Button
    Select Male Gender
    Click Save Button
    Close My Recent Browser


Edit Gender to Female
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Edit Button
    Select Female Gender
    Click Save Button
    Close My Recent Browser

Edit Mail
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Edit Button
    Update Mail
    Click Save Button


Edit Phone Number
    Open My Browser
    Login with mail
    Navigate to profile
    Click on Edit Button
    Update Phone Number
    Click Save Button
    Close My Recent Browser


Complete Edit Personal Information
    Login with mail
    Navigate to profile
    Click on Edit Button
    Update IMG
    Update Name Field
    Update Mail
    Select Male Gender
    Update Phone Number
    Click Save Button
    Close My Recent Browser








