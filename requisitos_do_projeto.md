# Pré-requisitos

Antes de começar, garanta que os seguintes sistemas estejam instalados no seu computador.

- [Python](https://www.python.org/downloads/) versão 2.8.2
- [Chromedriver](https://chromedriver.chromium.org/downloads)
- [vscode](https://code.visualstudio.com/download:)

1. Instalando o Python:
Baixar no link https://www.python.org/downloads/ a versão mais recente do python e instalar
pela opção “Install Now”. Marcar a opção “Add Python x.xx to PATH”.


![image](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/f7acf5f9-bbc3-41d9-bf04-8e554c8f0034)

Quando concluir a instalação, podemos checkar se ficou tudo ok acessando o promptl de 
comandos (terminal) pelo menu iniciar e digitando “python -V”. Atenção ao V, que deve ser 
maiúsculo.

![image-1](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/fab3ad7e-7efd-46fa-a0b3-dd5885216060)


Se aparecer a versão do Python, a instalação foi concluída de maneira correta. Se não aparecer 
nos contate para pedir suporte.

2. Download do Chromedriver
Ao acessar o menu de ajuda do Google Chrome pelo link “chrome://settings/help”,
visualizamos a versão do navegador, no caso abaxio é a 98.x.xxxx.xxx. Precisaremos da versão
para saber qual Chromedriver baixar.

![image-2](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/ef58894b-89a6-410a-813a-69ebfade3366)


Com a versão em mãos, acessamos o link https://chromedriver.chromium.org/downloads e 
realizaremos o download da versão correspondente:


![image-3](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/fcad2b58-5121-4a57-bda0-249bf3673c74)


Após selecionarmos a versão, seremos direcionados para a tela de seleção de sistema 
operacional. No caso deste manual que se refere a Windows, vamos escolher 
“chromedriver_win32.zip.


![image-4](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/32c8b881-f256-4782-a6be-6fe831628e1f)


Após o download devemos extrair o executável, recortar e colar na pasta
“C:\Windows\System32”:


![image-5](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/dda4dddb-b523-4b8c-b132-6541af2251a2)


Podemos também confirmar o sucesso deste setup digitando “chromedriver -v” no terminal, 
onde devemos visualizar a versão do chromedriver:

![image](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/5c294b96-23b1-4957-944b-b3c9f6388bb9)


3. Instalação das Libraries Robot Framework e Selenium Web Driver:
3.1. No terminal digitaremos o comando “pip install robotframework”...

![image](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/d2f69287-49b5-41cc-8f6e-c9610d623d5f)


Ao pressionarmos ENTER, será instalada a biblioteca e o retorno será similar ao print 
abaixo:

![image](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/c4600e2b-48a2-4457-93a4-f14228992c17)


3.2. No terminal digitaremos o comando “pip install robotframework-seleniumlibrary” e 
pressione ENTER para concluir a instalação.

![image](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/5d40e3a8-65f7-49be-ab29-112d3bca5387)


## Instalação vscode

1. Instalar VS Code, baixando do link https://code.visualstudio.com/download:

![image-10](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/ed95aacf-a970-4ea0-8f1c-62268d8b6f0d)


Pode marcar aceitar o termo de instalação e marcar todas as caixinhas na tela abaixo:


![image-11](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/45375ae0-e68a-40e3-a183-22a492e209e9)

2. Instalar plugins VS Code:
Clicar no ícone de extensões na barra de ícones esquerda: ![image-13](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/b0e16dae-4256-4179-9d11-ef1811342027)

![image-14](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/2a343a7c-cf52-4738-a97a-abdcf6841110)



Será aberta a barra de pesquisa de plugins, vamos instalar 3 todos com o mesmo processo...

![image-14](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/8410cee3-45d2-44ca-91d7-28c8e6cb1913)


O primeiro é o “Python by Microsoft”, podem colar o texto na caixa de pesquisa e instalar 
clicando em “install”:

![image-16](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/d15b8826-b7c8-46e4-a41b-a2540c5a37d5)


O segundo é o “Robot Framework Language Server” da Robocorp:

![image-17](https://github.com/Fabricioperrone/Desafio-Tecnico-Testes-Automatizados-Fabricio-Perrone/assets/69866913/70f1a25d-cc98-4a75-83e8-e44ccc35955d)

