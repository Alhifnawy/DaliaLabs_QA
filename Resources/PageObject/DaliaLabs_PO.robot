*** Settings ***
Resource    ../CommonResources.robot

*** Variables ***
# TODO: ShadowDOM locators
${ugly_email_subscription_widget}    SEPARATOR=    dom:document.querySelector("email-subscription").shadowRoot.querySelector
...    ("a[class=floating-widget")
${ugly_email_subscription_text_field}    SEPARATOR=    dom:document.querySelector("email-subscription").
...    shadowRoot.querySelector("input[type=email")
${ugly_email_thanks_for_subscription_message}    SEPARATOR=    dom:document.querySelector("email-subscription")
...    .shadowRoot.querySelector("div p[class=thanks-message]")
${ugly_email_subscription_dalia_website_link}    SEPARATOR=    dom:document.querySelector("email-subscription").shadowRoot
...    .querySelector("div a span")

# TODO: locators to be updated once developers edit the DOM
${id_table_email}    id=some_table_email_id
${id_table_date_stored}    id=some_table_date_id

*** Keyword ***
Get ShadowElement
    [Documentation]    Get Webelement in the shadow root DOM
    [Arguments]    ${js_selector}
    ${elems}    Get WebElement    ${js_selector}

    [Return]    ${elems}

Check Email Subscription Widget Is Displayed
    [Documentation]    Checks that the Email subscription widget is displayed
    ${elem}    Get ShadowElement    ${ugly_email_subscription_widget}
    Wait Until Page Contains Element    ${elem}

Check Email Subscription Widget Is Not Displayed
    [Documentation]    Checks that the Email subscription widget has disappeared
    Wait Until Page Does Not Contain Element    ${ugly_email_subscription_widget}

Open Email Subscription Widget
    [Documentation]    Clicks on the Email subscription widget and opens it
    ${elem}    Get ShadowElement    ${ugly_email_subscription_widget}
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${elem}

Enter Email Info To Dalia
    [Documentation]    Enter the email in the text field for the subscription to Dalia
    [Arguments]    ${email}
    ${elem}    Get ShadowElement    ${ugly_email_subscription_text_field}
    Input Text    ${elem}    ${email}

Send Email
    [Documentation]    Presses the enter key for the text field for the subscription to Dalia
    ${elem}    Get ShadowElement    ${ugly_email_subscription_text_field}
    Press Keys    ${elem}    ENTER

Check Thanks For Subscription Message Is Displayed
    [Documentation]    Validates that the thanks for subscription message is displayed by its locator
    ${elem}    Get ShadowElement    ${ugly_email_thanks_for_subscription_message}
    Wait Until Page Contains Element    ${elem}

Check Email Is Displayed in Homepage
    [Documentation]    Validates that the given email is displayed in Dalia Website
    [Arguments]    ${email}
    Wait Until Page Contains Element    ${id_table_email}
    Element Text Should Be    ${id_table_email}    ${email}

Check Email Date Is Displayed in Homepage
    [Documentation]    Validates that the date for the given email is displayed correctly
    Wait Until Page Contains Element    ${id_table_date_stored}

Check Error Message Is Displayed
    [Documentation]    Validates that the given error message is displayed when entering incorrect email format in the email
    ...    subscription text field widget
    [Arguments]    ${error_message}
    ${elem}    Get ShadowElement    ${ugly_email_subscription_text_field}
    ${text}    Get Element Attribute    ${elem}    validationMessage
    Should Contain    ${text}    ${error_message}

Open Dalia Labs Website from Email Subscription Widget
    [Documentation]    Clicks on "Powered by Dalia" in Email subscription widget
    ${elem}    Get ShadowElement    ${ugly_email_subscription_dalia_website_link}
    Execute Javascript    arguments[0].click();     ARGUMENTS    ${elem}