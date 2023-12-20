*** Variables ***
${User}                               standard_user
${Password}                           secret_sauce
&{OUTROS}                             usuario=user123   senha=password.318798$
${Url}                                https://www.saucedemo.com/
${Locator_UserName}                   user-name
${Locator_Login}                      //input[contains(@placeholder,'Username')] 
${Locator_password}                   //input[contains(@placeholder,'Password')]
${BTN_Login}                          login-button