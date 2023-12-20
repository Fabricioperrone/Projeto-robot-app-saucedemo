*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects//homePage.robot
Resource    ../PageObjects/loginPage.robot  
Resource    ../Elements/loginElements.robot
Resource    ../Elements/homeElements.robot

*** Keywords ***
Start automation
    Open Browser  browser=chrome
    Maximize Browser Window

Stop automation
    Capture Page Screenshot
    Close Browser
Start automation login
    Open Browser  browser=chrome
    Maximize Browser Window
    
    Go To    url=${Url}
    Wait Until Element Is Visible    locator=${Locator_UserName}
    Input Text    locator=${Locator_Login}    text=${User}
    Input Password    locator=${Locator_password}     password=${Password}
    Click Button    locator=${BTN_Login}
    Capture Page Screenshot
