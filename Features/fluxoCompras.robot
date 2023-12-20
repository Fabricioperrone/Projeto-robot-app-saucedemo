*** Settings ***
Documentation    Essa suite testa as funcionalidades do site, com usuário logado na aplicação
Resource         ../PageObjects/carrinhoPage.robot
Resource         ../PageObjects/checkoutPage.robot
Resource         ../PageObjects/homePage.robot
Resource         ../Resources/settings.robot
Test Setup       Start automation login
Test Teardown    Stop automation


*** Test Cases ***
CT3 Adição de Produtos ao Carrinho Após Login
    [Documentation]    Verifica item no carrinho de compras
    [Tags]             Adicionar_carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida
    Verificar se o produto "Test.allTheThings() T-Shirt (Red)" foi adicionado com sucesso
    Informações do cliente "Nome" "Sobrenome" CEP e opções de entrega

CT4 Remover Produto do Carrinho
    [Documentation]    Esse teste verifica a remoção de um produto no carrinho de compras
    [Tags]             remover_carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida
    Remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
    Verificar se o carrinho fica vazio


#G Gherkin BDD
Quando adicionar o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida
Então o produto "Test.allTheThings() T-Shirt (Red)" deve ser mostrado no carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida
    Verificar se o produto "Test.allTheThings() T-Shirt (Red)" foi adicionado com sucesso
    Informações do cliente "Nome" "Sobrenome" CEP e opções de entrega
E existe o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida

