*** Settings ***
Library          SeleniumLibrary
Resource         ../pageobjects/homepage_pageobject.robot
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

Click Create An Account Via Email              
    Wait Until Element Is Visible          ${CREATE_AN_ACCOUNT_VIA_EMAIL} 
    Click Element                          ${CREATE_AN_ACCOUNT_VIA_EMAIL} 

Input Firstname
    [Arguments]                            ${first_name}
    Wait Until Element Is Visible          ${FIRST_NAME_INPUT} 
    Input Text                             ${FIRST_NAME_INPUT}               ${first_name}

Input Lastname                            
    [Arguments]                            ${last_name}
    Wait Until Element Is Visible          ${LAST_NAME_INPUT} 
    Input Text                             ${LAST_NAME_INPUT}                ${last_name}

Input Email address
    [Arguments]                            ${email_address}
    Wait Until Element Is Visible          ${EMAIL_ADDRESS_INPUT}
    Input Text                             ${EMAIL_ADDRESS_INPUT}            ${email_address}

Input Password                            
    [Arguments]                            ${password}
    Wait Until Element Is Visible          ${PASSWORD_INPUT}
    Input Text                             ${PASSWORD_INPUT}                 ${password}

Click Terms and conditions Checkbox
    Wait Until Element Is Visible          ${TERMS_CONDITIONS} 
    Click Element                          ${TERMS_CONDITIONS} 

Click Create Account button                
    Wait Until Element Is Visible          ${CREATE_ACCOUNT_BUTTON} 
    Click Element                          ${CREATE_ACCOUNT_BUTTON}
