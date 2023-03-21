
*** Settings ***
Library           AppiumLibrary
Test Teardown     Quit Application

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

*** Test Cases ***
Test case name
        Open Application    ${REMOTE_URL}   platformName=${platformName}  appium:automationName=${appium:automationName}  appium:deviceName=${appium:deviceName}  appium:appPackage=${appium:appPackage}  appium:appActivity=${appium:appActivity}  appium:avd=${appium:avd}  appium:ensureWebviewsHavePages=${appium:ensureWebviewsHavePages}  appium:nativeWebScreenshot=${appium:nativeWebScreenshot}  appium:newCommandTimeout=${appium:newCommandTimeout}  appium:connectHardwareKeyboard=${appium:connectHardwareKeyboard}
    # Quando eu pesquisar pelo produto
        Sleep    10
        Click Element    id=com.novapontocom.extra:id/tv_home_search

        Wait Until Element Is Visible    id=com.novapontocom.extra:id/editTextSearchProducts
        Click Element    id=com.novapontocom.extra:id/editTextSearchProducts
        Input Text    id=com.novapontocom.extra:id/editTextSearchProducts    geladeira


        Wait Until Element Is Visible    id=com.novapontocom.extra:id/editTextSearchProducts
        Click Element    id=com.novapontocom.extra:id/editTextSearchProducts
    #fim    
    #  E clico no produto
        Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.TextView
        Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[4]/android.widget.TextView
        Sleep    3
        Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ViewFlipper/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ViewSwitcher/android.view.ViewGroup/android.widget.TextView[1]
        Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ViewFlipper/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.FrameLayout/android.widget.ViewSwitcher/android.view.ViewGroup/android.widget.TextView[1]
    # fim
    # E verifico nome e preco e clico no produto
        Wait Until Element Is Visible    id=com.novapontocom.extra:id/textViewProductName
        ${texto_elemento}=  Get Text  id=com.novapontocom.extra:id/textViewProductName
        ${texto_esperado}=  Set Variable  Geladeira Brastemp BRM44HK Frost Free Duplex com Compartimento Extrafrio e Fresh Zone Inox - 375L
        Should Be Equal  ${texto_elemento}  ${texto_esperado}
        Click Element    id=com.novapontocom.extra:id/textViewProductName
    #Fim
    # E escolho a variacao de voltagem  
        Wait Until Element Is Visible    id=com.novapontocom.extra:id/imageViewModelSelectionIndicator
        Click Element    id=com.novapontocom.extra:id/imageViewModelSelectionIndicator
        Sleep    2
        Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.TextView
        Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[2]/android.widget.TextView
        Click Element    id=com.novapontocom.extra:id/buttonSelect
    # fim
    # E prosigo sem garantia extra
        Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ViewFlipper/android.widget.LinearLayout/android.view.ViewGroup[1]/android.widget.TextView[1]
        Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ViewFlipper/android.widget.LinearLayout/android.view.ViewGroup[1]/android.widget.TextView[1]
        Wait Until Element Is Visible    id=com.novapontocom.extra:id/button
        Click Element    id=com.novapontocom.extra:id/button

    # fim
    #  E adiciono ao carrinho
        Wait Until Element Is Visible    id=com.novapontocom.extra:id/button
        Click Element    id=com.novapontocom.extra:id/button
        Sleep    10
    # fim
    # Entao verifico nome e preco e voltagem   
        Wait Until Element Is Visible    id=com.novapontocom.extra:id/tv_card_product_name
        ${texto_elemento}=  Get Text    id=com.novapontocom.extra:id/tv_card_product_name
        ${texto_esperado}=  Set Variable  Geladeira Brastemp BRM44HK Frost Free Duplex com Compartimento Extrafrio e Fresh Zone Inox - 375L
        #voltagem 
        ${texto_elemento_voltagem}=  Get Text   id=com.novapontocom.extra:id/tv_product_variation
        ${texto_voltagem_esperado}=  Set Variable    220V
        Should Be Equal  ${texto_elemento_voltagem}  ${texto_voltagem_esperado}
        #preço 
        ${texto_elemento_preco}=  Get Text   id=com.novapontocom.extra:id/tv_cart_old_product_price  
        ${texto_preco_esperado}=  Set Variable    R$ 3.399,00     # no momento do teste favor verificar valor atual do produto.
        Should Be Equal  ${texto_elemento_preco}  ${texto_preco_esperado}
 #fim