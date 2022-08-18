*** Settings ***
Library          SeleniumLibrary
Resource         ../pageobjects/homepage_pageobject.robot
Resource         ../pageobjects/loginpage_pageobject.robot
Resource         ../pageobjects/loginpage_pageobject.robot
Resource         ../pageobjects/create_pageobject.robot
Resource         ../common/common.robot


*** Keywords ***
Launch Browser
    Open Browser        ${URL}             ${BROWSER}

Click Account Tab
    Wait Until Element Is Visible          ${ACCOUNT}
    Click Element                          ${ACCOUNT}

Click Sign In pane
    Wait Until Element is Visible          ${SIGN_IN}
    Click Element                          ${SIGN_IN}

Click Create An Account Pane               
    Wait Until Element Is Visible          ${CREATE_AN_ACCOUNT_VIA_EMAIL} 
    Click Element                          ${CREATE_AN_ACCOUNT_VIA_EMAIL} 

Input Firstname
    [Arguments]                            ${first_name}
    Wait Until Element Is Visible          ${FIRST_NAME} 
    Input Text                             ${FIRST_NAME}         ${first_name}

Input Lastname                            
    [Arguments]                            ${last_name}
    Wait Until Element Is Visible          ${LAST_NAME} 
    Input Text                             ${LAST_NAME}          ${last_name}

Input Email address
    [Arguments]                            ${email_address}
    Wait Until Element Is Visible          ${EMAIL_ADDRESS}
    Input Text                             ${EMAIL_ADDRESS}      ${email_address}

Input Password                            
    [Arguments]                            ${password}
    Wait Until Element Is Visible          ${PASSWORD}
    Input Text                             ${PASSWORD}           ${password}

Click Newsletter Checkbox
    Wait Until Element Is Visible          ${JUMIA_NEWSLETTERS} 
    Click Element                          ${JUMIA_NEWSLETTERS} 

Click Create Account button                
    Wait Until Element Is Visible         ${CREATE_ACCOUNT} 
    Click Element                         ${CREATE_ACCOUNT}
