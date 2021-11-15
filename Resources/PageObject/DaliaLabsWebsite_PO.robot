*** Settings ***
Resource    ../CommonResources.robot

*** Keywords ***
Check Dalia Labs Website Page Is Opened
    Title Should Be    ${dalia_labs_website_title}