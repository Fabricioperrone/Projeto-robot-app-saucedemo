*** Settings ***
Documentation    Essa suite testa as funcionalidades do site, com usuário logado na aplicação
Resource         ../PageObjects/loginPage.robot
Resource         ../PageObjects/homePage.robot
Resource         ../Resources/settings.robot
Test Setup       Start automation
Test Teardown    Stop automation

*** Test Cases ***
Login com sucesso
  Realizar login com credenciais corretas e verificar se o acesso é concedido

Login com usuário incorreto
    Tentar fazer login com credenciais incorretas e verificar se o acesso é negado
    