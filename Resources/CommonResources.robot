*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem
Library     FakerLibrary
Library     String
Library     Process
Resource    Wording_PO.robot
Resource    ../Resources/PageObject/DaliaLabs_PO.robot
Resource    ../Resources/PageObject/DaliaLabsWebsite_PO.robot
Resource    ../Tests/TestSetup.robot

*** Variables ***
${WEBSITE}    https://omarelhamy.github.io/dalia-task
${BROWSER}    chrome

*** Keywords ***
Switch To Another Tab
    [Arguments]    ${index}
    ${handles}    Get Window Handles
    Switch Window    ${handles}[${index}]
