*** Settings ***
Library     SeleniumLibrary
Resource    ./CommonKeyword.robot

*** Variables ***
${BROWSER}    chrome
${BROWSER2}  edge
${BROWSER3}  firefox
${ALIAS}    first
#${URL}


${ENVIROMENT}    TEST
#${ENVIROMENT}    PROD
${URL}          ${URL_DIC.${ENVIROMENT}}
&{URL_DIC}       TEST=${URL_TEST}    PROD=${URL_PROD}
${URL_TEST}        https://itammen.com
${URL_PROD}        https://itammen.com



#${CART_ADD_TO_CART_BUTTON_TEXT}                    ${CART_ADD_TO_CART_BUTTON_TEXT_DIC.${LANGUAGE}}
#&{CART_ADD_TO_CART_BUTTON_TEXT_DIC}    en=${CART_ADD_TO_CART_BUTTON_TEXT_EN}    ar=${CART_ADD_TO_CART_BUTTON_TEXT_AR}
#${CART_ADD_TO_CART_BUTTON_TEXT_AR}       أضف الى السلة
#${CART_ADD_TO_CART_BUTTON_TEXT_EN}      Add to Cart
#
##${LANGUAGE}      ar
#${LANGUAGE}      en




${RETRY}    3 x
${RETRY_INTERVAL}    1 s

${Common_IMPLICIT_WAIT}     20
${Common_TIME_OUT}  30
${Common_LOAD_TIME_OUT}     20
${Common_SELENIUM_SPEED}    0.1
${RETRY}    5 x
${RETRY_INTERVAL}   1 s
${ALIAS}    main
