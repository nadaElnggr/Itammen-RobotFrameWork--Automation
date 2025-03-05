*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/00-Common/CommonKeyword.robot
Resource    ../Resources/01-SharedModules/011-Header/Header.robot
Resource    ../Resources/04-EditMedicalInformation/EditMedicalProfile.robot
Resource    ../Resources/03-EditProfileInformation/EditProfile.robot

#Suite Setup             CommonKeyword.Begin Web Test
#Suite Teardown          CommonKeyword.End Web Test

*** Test Cases ***
#Verify that the user can Edit Personal Information
#    Complete Edit Personal Information

#Verify that the user can Edit his picture only
#    Edit Profile Image

#Verify that the user can Edit his gender to male
#    Edit Gender to Male

#Verify that the user can Edit his gender to female
#    Edit Gender to Female

#Verify that the user can Edit his phone
#    Edit Phone Number

#Verify that the user can Edit his mail
#    Edit Mail

#Verify that the user can Discard Medical Information Update
#    Discard Edit Medical Information

#Verify that the user can choose his blood type
#    Check Blood TYPE

#Verify that the user can select his long term diseses
##    Select Long Term Diseases
#
#Verify that the user can update his weight
#    Update Weight
#
#Verify that the user can update his hight
#    Update Height
#
#Verify that the User Can select Family History
#    Select Family Diseases
#
#Verify that the user can update his doctor to male
#    Change Doctor to Male
#
#Verify that the user can update his doctor to Female
#    Change Doctor to Female

#Verify that the user can update his Allergies
#    Update Allergies

#Verify that the user can add Notes
#    Update Medical Notes

#Verify that the User Can Update all his Information
#    Edit All Medical Information

