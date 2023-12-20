*** Settings ***
Library    SeleniumLibrary
Resource   ../Elements/checkoutElements.robot
Resource   ../Elements/homeElements.robot
Resource   ../Elements/carrinhoElements.robot

*** Keywords ***
Verificar se o produto "${Produto}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=${Locator_ShopingCart}
    Click Element    locator=${Locator_ShopingCart}
    Wait Until Element Is Visible    locator=${BTN_checkout}
    Click Button    locator=${BTN_checkout}
    Capture Page Screenshot
Informações do cliente "Nome" "Sobrenome" CEP e opções de entrega
    Wait Until Element Is Visible    locator=${Locator_Message_Information} 
    Input Text    locator=${Locator_Placeholder_FirstName}    text=${PESSOA.nome}
    Input Text    locator=${Locator_Placeholder_LastName}     text=${PESSOA.sobrenome}
    Input Text    locator=${Zipcode}    text=${PESSOA.cep}
    Click Button    locator=${BTN_Submit}
    Wait Until Element Is Visible    locator=//span[@class='title'][contains(.,'Checkout: Overview')]
    Click Button    locator=${BTN_Finish}
    Wait Until Element Is Visible    locator=//span[@class='title'][contains(.,'Checkout: Complete!')]
    Capture Page Screenshot

