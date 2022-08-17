*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/keywords.robot
Resource        ../common/common.robot  
Test Setup      Launch Browser
Test Teardown   Close Browser

*** Test Cases ***

User can create an account with a valid email address and a valid password
    [Documentation]     This test shows that users can create an account with a valid email address and a valid password
    [Tags]              Functional
    Click Account Tab