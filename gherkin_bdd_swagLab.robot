# *** Settings ***
# Documentation    Essa suite testa as funcionalidades do site, com usuário logado na aplicação
# Resource         swagLabResources.robot
# Test Setup       Abrir o navegador
# Test Teardown    Fechar o navegador

# *** Test Cases ***
CT3 Adição de Produtos ao Carrinho Após Login
    [Documentation]    Verifica item no carrinho de compras
    [Tags]             Adicionar_carrinho
    Dado que estou na home page da https://www.saucedemo.com/inventory.html
    Quando adicionar o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Então o produto "Test.allTheThings() T-Shirt (Red)" deve ser mostrado no carrinho
CT4 Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Dado que estou na home page da https://www.saucedemo.com/inventory.html
    E existe o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Quando remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
    Então o carrinho deve ficar vazio