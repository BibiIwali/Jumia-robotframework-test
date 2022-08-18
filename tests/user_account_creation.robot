*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/keywords.robot
Resource        ../common/common.robot  
Test Setup      Launch Browser
Test Teardown   Close Browser

*** Test Cases ***

User can create an account with a valid email address and a valid password
    [Documentation]                        This test shows that users can create an account with a valid email address and a valid password
    [Tags]                                 Functional
    Click Account Tab
    Click Sign In Pane
    Page Should Contain                    Create your Jumia account
    Click Create An Account Pane    
    Page Should Contain                    Create Account
    Input Firstname                        ${FIRST_NAME}
    Input Lastname                         ${LAST_NAME} 
    Input Email address                    ${VALID_EMAIL_ADDRESS} 
    Input password                         ${VALID_PASSWORD} 
    Click Newsletter Checkbox
    Click Create Account button           
           