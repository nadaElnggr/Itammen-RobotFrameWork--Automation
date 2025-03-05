*** Settings ***
Library     SeleniumLibrary
Resource    ../../../Resources/01-SharedModules/011-Header/HeaderAssertions.robot
Resource    ../../../Resources/01-SharedModules/011-Header/HeaderLocators.robot


*** Keywords ***
Assert for the header
    wait until page contains    ${HEADR_lOGO}

click on login
   click element    ${LOGIN-BUTTON}
   wait until page contains    <div _ngcontent-rth-c313="" class="ng-star-inserted"> Email Address </div>


