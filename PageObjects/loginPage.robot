*** Settings ***
Library    SeleniumLibrary
Resource   ../Elements/loginElements.robot

*** Keywords ***
 Realizar login com credenciais corretas e verificar se o acesso é concedido
    Go To    url=${Url}
    Wait Until Element Is Visible    locator=${Locator_UserName}
    Input Text    locator=${Locator_Login}    text=${User}
    Input Password    locator=${Locator_password}     password=${Password}
    Click Button    locator=${BTN_Login}
    Capture Page Screenshot

Tentar fazer login com credenciais incorretas e verificar se o acesso é negado
    Go To    url=${Url}
    Wait Until Element Is Visible    locator=${Locator_UserName}
    Input Text    locator=${Locator_Login}    text=${OUTROS.usuario}
    Input Password    locator=${Locator_password}     password=${OUTROS.senha}
    Click Button    locator=${BTN_Login}
    Wait Until Element Is Visible    locator=//h3[contains(@data-test,'error')]
    Capture Page Screenshot

# Gherkin BDD

# CT3 Adição de Produtos ao Carrinho Após Login
Dado que estou na home page da https://www.saucedemo.com/inventory.html
    Realizar login com credenciais corretas e verificar se o acesso é concedido
