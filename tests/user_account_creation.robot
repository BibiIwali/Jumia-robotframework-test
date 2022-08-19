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
    Page Should Contain Element            ${SIGN_IN} 
    Click Sign In Pane
    Page Should Contain                    Create your Jumia account
    Click Create An Account Via Email   
    Page Should Contain                    Create Account
    Input Firstname                        ${F_NAME}
    Input Lastname                         ${L_NAME} 
    Input Email address                    ${E_ADDRESS} 
    Input password                         ${PWD} 
    Click Terms and conditions Checkbox
    Click Create Account button           
           