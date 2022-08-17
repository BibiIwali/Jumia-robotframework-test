*** Settings ***
Library          SeleniumLibrary
Resource         ../pageobjects/homepage_pageobject.robot
Resource         ../common/common.robot


*** Keywords ***
Launch Browser
    Open Browser        ${URL}             ${BROWSER}

Click Account Tab
    Wait Until Element Is Visible          ${ACCOUNT}
    Click Element                          ${ACCOUNT}
