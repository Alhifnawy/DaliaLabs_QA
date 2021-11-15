*** Settings ***
Resource    ../Resources/CommonResources.robot

*** Keywords ***
Set Selenium Capabilities
    Set Selenium Implicit Wait    10
    Set Selenium Timeout    10

Set Browser Capabilities
    Open Browser    ${WEBSITE}    ${BROWSER}    first
    Maximize Browser Window
