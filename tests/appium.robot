*** Settings ***
Resource    ../resources/common.robot
Test Setup    Open App Test
Test Teardown    Close App Test

*** Variables ***
${continue_app_button}    id=	com.google.android.apps.messaging:id/continue_as_button
${message_title}    id=	com.google.android.apps.messaging:id/messages_title
${user_chat}    id=	com.google.android.apps.messaging:id/conversation_name
${message_textbox}    id=com.google.android.apps.messaging:id/compose_message_text
${input_message}    Hello Ngoc!
${send_message_button}    xpath=//android.view.View[@resource-id="Compose:Draft:Send"]/android.widget.Button
${send_message_success}    xpath=//android.view.View[@resource-id="message_list"]/android.view.View[1]/android.view.View[1]/android.view.View


*** Test Cases ***
Test send Message
    Wait And Click Element    ${continue_app_button}
    Wait Until Element Is Visible    ${message_title}    timeout=10s
    Wait And Click Element    ${user_chat}
    Wait And Input Text    ${message_textbox}    ${input_message}
    Wait And Click Element    ${send_message_button}
    Wait Until Element Is Visible    ${send_message_success}
