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
    Page Should Contain Element            ${HELP} 

User cannot create an account with a valid email address and an invalid password
    [Documentation]        This testcase shows that users cannot create an account with avalid email and an invalid password
    [Tags]                 Functional
    Click Account Tab
    Page Should Contain Element            ${SIGN_IN} 
    Click Sign In Pane
    Page Should Contain                    Create your Jumia account
    Click Create An Account Via Email   
    Page Should Contain                    Create Account
    Input Firstname                        ${F_NAME}
    Input Lastname                         ${L_NAME}
    Input Email address                    ${E_ADDRESS} 
    Input password                         ${INVALID_PWD} 
    Click Terms and conditions Checkbox
    Click Create Account button        
    Popup Should Appear

User cannot create an account with an invalid email address and a valid password
    [Documentation]       This testcase shows that users cannot create an account with an invalid email address and a valid password
    [Tags]                Functional     
    Click Account Tab
    Page Should Contain Element            ${SIGN_IN} 
    Click Sign In Pane
    Page Should Contain                    Create your Jumia account
    Click Create An Account Via Email   
    Page Should Contain                    Create Account
    Input Firstname                        ${F_NAME}
    Input Lastname                         ${L_NAME}
    Input Email address                    ${INVALID_E_ADDRESS} 
    Input password                         ${PWD}             
    Click Terms and conditions Checkbox
    Click Create Account button        
    Popup Should Be Displayed

User cannot create an account with an invalid email address and an invalid password
    [Documentation]         This testcase shows that users cannot create an account with an invalid email address and an invalid password
    [Tags]                  Functional
    Click Account Tab
    Page Should Contain Element            ${SIGN_IN} 
    Click Sign In Pane
    Page Should Contain                    Create your Jumia account
    Click Create An Account Via Email   
    Page Should Contain                    Create Account
    Input Firstname                        ${F_NAME}
    Input Lastname                         ${L_NAME}
    Input Email address                    ${INVALID_E_ADDRESS} 
    Input password                         ${INVALID_PWD}            
    Click Terms and conditions Checkbox
    Click Create Account button        
    Popup Should Be Displayed


     

           