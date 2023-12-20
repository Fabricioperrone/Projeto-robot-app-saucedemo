
*** Variables ***
${CarrinhoCompras}                    //button[contains(.,'Add to cart')]
&{PESSOA}                             nome=João    sobrenome=Fernandes   cep=94475800   
${Locator_Message_Information}        //span[@class='title'][contains(.,'Checkout: Your Information')]
${Locator_Placeholder_FirstName}      //input[contains(@placeholder,'First Name')]
${Locator_Placeholder_LastName}       //input[contains(@placeholder,'Last Name')]
${Zipcode}                            //input[contains(@placeholder,'Zip/Postal Code')]
${BTN_Submit}                         //input[contains(@type,'submit')]
${BTN_Finish}                         //button[@class='btn btn_action btn_medium cart_button'][contains(.,'Finish')]
${CARRO_VAZIO}                        //a[contains(@class,'shopping_cart_link')]
