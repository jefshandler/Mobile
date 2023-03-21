*** Settings ***
Library           AppiumLibrary

*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723/wd/hub
${platformName}    Android
${appium:automationName}    uiautomator2
${appium:deviceName}    emulator-5554
${appium:appPackage}    com.novapontocom.extra
${appium:appActivity}    br.concrete.base.ui.SplashActivity
${appium:avd}    Pixel6
${appium:ensureWebviewsHavePages}    true
${appium:nativeWebScreenshot}    true
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    true

*** Keywords ***
Abrir o app
    Open Application    ${REMOTE_URL}
    ...    platformName=${platformName}
    ...  appium:automationName=${appium:automationName}
    ...  appium:deviceName=${appium:deviceName}
    ...  appium:appPackage=${appium:appPackage}
    ...  appium:appActivity=${appium:appActivity}
    ...  appium:avd=${appium:avd} 
    ...  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}
    ...  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}
    ...  appium:newCommandTimeout=${appium:newCommandTimeout}
    ...  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    
    Sleep    10
        