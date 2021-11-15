*** Settings ***
Resource    ./CommonResources.robot

*** Variables ***
${error_message_one}                   Please include an '@' in the email address.
${error_message_two}                   Please enter a part following '@'.
${error_message_three}                 Please enter a part followed by '@'.
${error_message_four}                  Please fill out this field.
# TODO: this should be included in the error messages
${error_message_already_subscribed}    This email is already subscribed to our newsletter.
${dalia_labs_website_title}            Home - Dalia
