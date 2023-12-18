# Pré-requisitos

Antes de começar, garanta que os seguintes sistemas estejam instalados no seu computador.

- [Python](https://www.python.org/downloads/) versão 2.8.2
- [Chromedriver](https://chromedriver.chromium.org/downloads)
- [vscode](https://code.visualstudio.com/download:)

1. Instalando o Python:
Baixar no link https://www.python.org/downloads/ a versão mais recente do python e instalar
pela opção “Install Now”. Marcar a opção “Add Python x.xx to PATH”.

![Alt text](image.png)

Quando concluir a instalação, podemos checkar se ficou tudo ok acessando o promptl de 
comandos (terminal) pelo menu iniciar e digitando “python -V”. Atenção ao V, que deve ser 
maiúsculo.

![Alt text](image-1.png)

Se aparecer a versão do Python, a instalação foi concluída de maneira correta. Se não aparecer 
nos contate para pedir suporte.

2. Download do Chromedriver
Ao acessar o menu de ajuda do Google Chrome pelo link “chrome://settings/help”,
visualizamos a versão do navegador, no caso abaxio é a 98.x.xxxx.xxx. Precisaremos da versão
para saber qual Chromedriver baixar.

![Alt text](image-2.png)

Com a versão em mãos, acessamos o link https://chromedriver.chromium.org/downloads e 
realizaremos o download da versão correspondente:

![Alt text](image-3.png)

Após selecionarmos a versão, seremos direcionados para a tela de seleção de sistema 
operacional. No caso deste manual que se refere a Windows, vamos escolher 
“chromedriver_win32.zip.

![Alt text](image-4.png)

Após o download devemos extrair o executável, recortar e colar na pasta
“C:\Windows\System32”:

![Alt text](image-5.png)

Podemos também confirmar o sucesso deste setup digitando “chromedriver -v” no terminal, 
onde devemos visualizar a versão do chromedriver:

![Alt text](image-6.png)

3. Instalação das Libraries Robot Framework e Selenium Web Driver:
3.1. No terminal digitaremos o comando “pip install robotframework”...

![Alt text](image-7.png)

Ao pressionarmos ENTER, será instalada a biblioteca e o retorno será similar ao print 
abaixo:

![Alt text](image-8.png)

3.2. No terminal digitaremos o comando “pip install robotframework-seleniumlibrary” e 
pressione ENTER para concluir a instalação.

![Alt text](image-9.png)

## Instalação vscode

1. Instalar VS Code, baixando do link https://code.visualstudio.com/download:

![Alt text](image-10.png)

Pode marcar aceitar o termo de instalação e marcar todas as caixinhas na tela abaixo:

![Alt text](image-12.png)

2. Instalar plugins VS Code:
Clicar no ícone de extensões na barra de ícones esquerda: ![Alt text](image-13.png)

![Alt text](image-14.png)

Será aberta a barra de pesquisa de plugins, vamos instalar 3 todos com o mesmo processo...

![Alt text](image-15.png)

O primeiro é o “Python by Microsoft”, podem colar o texto na caixa de pesquisa e instalar 
clicando em “install”:

![Alt text](image-16.png)

O segundo é o “Robot Framework Language Server” da Robocorp:

![Alt text](image-17.png)
