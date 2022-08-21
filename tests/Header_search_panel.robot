*** Settings ***
Library          SeleniumLibrary
Resource         ../keywords/keywords.robot
Resource         ../common/common.robot 
Test Setup       Launch Browser
Test Teardown    Close Browser

*** Test Cases ***

User can search for items to shop with the search panel
    [Documentation]     This testcase shows that users can search items to shop with the search panel
    [Tags]              Functional
    Input Product,Brands and Categories Name        ${S_NAME} 
    Click Search Button
    Page Should Contain Element                     ${ALL_PRODUCTS}




