*** Settings ***
Library    SeleniumLibrary
Resource    ../Elements/carrinhoElements.robot



*** Keywords ***
Remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
   Wait Until Element Is Visible    locator=//button[contains(.,'Remove')]
   Click Button    locator=//button[contains(.,'Remove')]
   Wait Until Element Is Visible    locator=//a[contains(@class,'shopping_cart_link')]
Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//a[contains(@class,'shopping_cart_link')]
     Capture Page Screenshot

# Gherkin BDD
#CT4 Remover Produto do Carrinho
Quando remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
    Remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio

