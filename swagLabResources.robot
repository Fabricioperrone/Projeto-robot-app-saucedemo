*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary
# Library    FakerLibrary

*** Variables ***
${User}                               standard_user
${Password}                           secret_sauce
&{OUTROS}                             usuario=user123   senha=password.318798$
${Url}                                https://www.saucedemo.com/
${Locator_UserName}                   user-name
${Locator_Login}                      //input[contains(@placeholder,'Username')] 
${Locator_password}                   //input[contains(@placeholder,'Password')]
${BTN_Login}                          login-button
${SwagLabs}                           //div[@class='app_logo'][contains(.,'Swag Labs')]
${Locator_produto}                    //div[@class='inventory_item_name '][contains(.,'Test.allTheThings() T-Shirt (Red)')]
${BTN_checkout}                       //button[@class='btn btn_action btn_medium checkout_button '][contains(.,'Checkout')]
${CarrinhoCompras}                    //button[contains(.,'Add to cart')]
${Locator_ShopingCart}                //a[@class='shopping_cart_link'][contains(.,'1')]
&{PESSOA}                             nome=João    sobrenome=Fernandes   cep=94475800   
${Locator_Message_Information}        //span[@class='title'][contains(.,'Checkout: Your Information')]
${Locator_Placeholder_FirstName}      //input[contains(@placeholder,'First Name')]
${Locator_Placeholder_LastName}       //input[contains(@placeholder,'Last Name')]
${Zipcode}                            //input[contains(@placeholder,'Zip/Postal Code')]
${BTN_Submit}                         //input[contains(@type,'submit')]
${BTN_Finish}                         //button[@class='btn btn_action btn_medium cart_button'][contains(.,'Finish')]
${CARRO_VAZIO}                        //a[contains(@class,'shopping_cart_link')]
*** Keywords *** 
Abrir o navegador
    Open Browser  browser=chrome
    Maximize Browser Window

Fechar o navegador
    Capture Page Screenshot
    Close Browser
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
Adicionar um item "${Produto}" ao carrinho após o login e verificar se a ação é bem-sucedida
    Wait Until Element Is Visible    locator=${SwagLabs}
    Click Element    locator=${Locator_produto}
    Wait Until Element Is Visible    locator=//div[@class='inventory_details_name large_size']
    Click Button    locator=${CarrinhoCompras}
    Capture Page Screenshot
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
Remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
   Wait Until Element Is Visible    locator=//button[contains(.,'Remove')]
   Click Button    locator=//button[contains(.,'Remove')]
   Wait Until Element Is Visible    locator=//a[contains(@class,'shopping_cart_link')]
Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//a[contains(@class,'shopping_cart_link')]
     Capture Page Screenshot


# Gherkin BDD

# CT3 Adição de Produtos ao Carrinho Após Login
Dado que estou na home page da https://www.saucedemo.com/inventory.html
    Realizar login com credenciais corretas e verificar se o acesso é concedido
Quando adicionar o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida
Então o produto "Test.allTheThings() T-Shirt (Red)" deve ser mostrado no carrinho
    Verificar se o produto "Test.allTheThings() T-Shirt (Red)" foi adicionado com sucesso
    Informações do cliente "Nome" "Sobrenome" CEP e opções de entrega
E existe o produto "Test.allTheThings() T-Shirt (Red)" no carrinho
    Adicionar um item "Test.allTheThings() T-Shirt (Red)" ao carrinho após o login e verificar se a ação é bem-sucedida

#CT4 Remover Produto do Carrinho
Quando remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
    Remover o produto "Test.allTheThings() T-Shirt (Red)" do carrinho
Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio
