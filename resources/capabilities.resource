*** Settings ***
Library    AppiumLibrary

*** Variables ***
${SAUCE_USERNAME}    oauth-bulldogbastter-b40c0
${REMOTE_URL}    https://${SAUCE_USERNAME}:%{SAUCE_ACCESS_KEY}@ondemand.us-west-1.saucelabs.com:443/wd/hub

*** Keywords ***
Sauce Labs Open Application
    Open Application    ${REMOTE_URL}
    ...    platformName=Android
    ...    appium:platformVersion=9.0
    ...    appium:deviceName=Samsung Galaxy S9 FHD GoogleAPI Emulator
    ...    appium:deviceOrientation=portrait
    ...    appium:app=storage:filename=Calculator_8.4 (503542421)_APKPure.apk
    ...    appium:appPackage=com.google.android.calculator
    ...    appium:appActivity=com.android.calculator2.Calculator
    ...    appium:ensureWebviewsHavePages=${True}    
    ...    appium:nativeWebScreenshot=${True}
    #...    sauce:options=[object Object]
    ...    appium:newCommandTimeout=${3600}
    ...    appium:connectHardwareKeyboard=${True}

Limpar calculadora
    ${clear} =    Set Variable     accessibility_id=clear
    Click Element    ${clear}