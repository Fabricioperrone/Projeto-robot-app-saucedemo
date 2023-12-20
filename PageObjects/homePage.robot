*** Settings ***
Library    SeleniumLibrary
Resource   ../Elements/homeElements.robot
Resource   ../Elements/checkoutElements.robot

*** Keywords ***

Adicionar um item "${Produto}" ao carrinho após o login e verificar se a ação é bem-sucedida
    Wait Until Element Is Visible    locator=${SwagLabs}
    Click Element    locator=${Locator_produto}
    Wait Until Element Is Visible    locator=//div[@class='inventory_details_name large_size']
    Click Button    locator=${CarrinhoCompras}
    Capture Page Screenshot

#G Gherkin BDD
Quando adicionar o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida

E existe o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida
    