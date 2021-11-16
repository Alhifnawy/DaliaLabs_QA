*** Settings ***
Resource    ../../Resources/CommonResources.robot
Suite Setup    Set Selenium Capabilities
Test Setup    Set Browser Capabilities
Test Teardown    Close Browser

*** Test Cases ***
Email_Subscription_To_Dalia
    [Tags]    Component=Email Subscription Widget
    ${email}    Ascii Company Email
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Enter Email Info To Dalia    ${email}
    Send Email
    Check Thanks For Subscription Message Is Displayed
    Check Email Subscription Widget Is Not Displayed
    # TODO : Update the usage of the below keywords when implemented by devs
#    Check Email Is Displayed in Homepage    ${email}
#    Check Email Date Is Displayed in Homepage

# TODO: Test case fails because the last assertion is not yet implemented
Send_Already_Subscribed_Email
    [Tags]    Component=Email Subscription Widget
    ${email}    Ascii Company Email
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Enter Email Info To Dalia    ${email}
    Send Email
    Check Thanks For Subscription Message Is Displayed
    Check Email Subscription Widget Is Not Displayed

    # TODO : Update the usage of the below keywords when implemented by devs
#    Check Email Is Displayed in Homepage    ${email}
#    Check Email Date Is Displayed in Homepage

    Go To    ${WEBSITE}
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Enter Email Info To Dalia    ${email}
    Send Email
    Check Error Message Is Displayed    ${error_message_already_subscribed}

Send_Incorrect_Email_format
    [Tags]    Component=Email Subscription Widget
    # Send an empty mail
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Send Email
    Check Error Message Is Displayed    ${error_message_four}

    # Send an Email without '@' sign
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Enter Email Info To Dalia    x
    Send Email
    Check Error Message Is Displayed    ${error_message_one}

    # Send an email with @ followed by nothing
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Enter Email Info To Dalia    x@
    Send Email
    Check Error Message Is Displayed    ${error_message_two}

    # Send an email with @ precedded by nothing
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Enter Email Info To Dalia    @x
    Send Email
    Check Error Message Is Displayed    ${error_message_three}

Open_Dalia_Labs_Website_Through_Email_Subscription_Widget
    [Tags]    Component=Email Subscription Widget
    Check Email Subscription Widget Is Displayed
    Open Email Subscription Widget
    Open Dalia Labs Website from Email Subscription Widget
    Switch To Another Tab    1
    Check Dalia Labs Website Page Is Opened
