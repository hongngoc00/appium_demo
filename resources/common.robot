*** Settings ***
Library    AppiumLibrary

*** Variables ***
${platform_name}    Android
${platform_version}    16
${device_name}    Phone API 36.0
${port}    4723
${REMOTE_URL}    http://localhost:${port}
${udid}    emulator-5554
${app_package}    com.google.android.apps.messaging
${app_activity}    com.google.android.apps.messaging.ui.ConversationListActivity
${automation_name}    Uiautomator2

*** Keywords ***
Open App Test
    Open Application    
    ...    ${REMOTE_URL}
    ...    automationName=${automation_name}
    ...    platformName=${platform_name}
    ...    platformVersion=${platform_version} 
    ...    deviceName=${device_name}
    ...    udid=${udid}
    ...    appPackage=${app_package}
    ...    appActivity=${app_activity}

Close App Test
    Close Application
    
Wait and click element
    [Arguments]    ${element}
    Wait Until Element Is Visible    ${element}     timeout=10s
    Click Element    ${element}
    
Wait and input text
    [Arguments]    ${element}    ${text}
    Wait Until Element Is Visible    ${element}
    Input Text    ${element}    ${text}