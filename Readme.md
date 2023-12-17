# Plano de Testes: Finalização de Compra
- Objetivo:

Assegurar que o processo de finalização de compra, incluindo o login do usuário, no ecommerce seja funcional, seguro e ofereça uma experiência satisfatória.

## Escopo:
Avaliação dos estágios que compõem a finalização de compra, incluindo o processo de login:

1. Login do usuário.
2. Adição de produtos ao carrinho.
3. Informações do cliente e opções de entrega.
3. Dados do usuário.
4. Confirmação do pedido.

# Critérios de Aceitação:

O login deve ser bem-sucedido com credenciais válidas.
Todas as etapas do processo de finalização de compra devem ser concluídas sem erros ou falhas.
A transição entre as etapas, após o login, deve ser suave e intuitiva.
Os dados fornecidos devem ser processados corretamente.
Os métodos de pagamento devem funcionar adequadamente.

## Ambiente de Testes:
Utilizar ambientes de teste separados para cada fase do processo, simulando condições de produção o mais próximo possível.

## Testes de Integração:

Confirmar a integração entre o login e outras etapas do processo de finalização de compra.
Testes Funcionais:

- Verificar o comportamento do sistema após o login em diferentes cenários.
- Testar a adição de produtos ao carrinho após o login.
- Avaliar as informações do usuário e de pagamento após o login.

## Casos de Teste (Exemplos):

### Login do Usuário:
- CT01: Realizar login com credenciais corretas e verificar se o acesso é concedido.
- CT02: Tentar fazer login com credenciais incorretas e verificar se o acesso é negado.

Adição de Produtos ao Carrinho Após Login:
- CT03: 
- Adicionar um item ao carrinho após o login e verificar se a ação é bem-sucedida. - Verificar se o produto foi adicionado com sucesso.
- Verificar Informações do cliente "Nome" "Sobrenome" CEP e opções de entrega

Remover Produto do Carrinho
- CT04: 
- Realizar login com credenciais corretas e verificar se o acesso é concedido
- Adicionar um produto ao carrinho após o login e verificar se a ação é bem-sucedida
- Remover o produto produto do carrinho
- Verificar se o carrinho fica vazio

## Ambiente de Testes:
- Windows              10 Pro
- Chrome               Versão 120.0.6099.110 (Versão oficial) 64 bits
- pip                  23.2.1
- python-dateutil      2.8.2
- robotframework       6.1.1
- robotframework-faker 5.0.0
- six                  1.16.0
- wrapt                1.16.0

### Técnicas utilizadas:
 💻
- Testes manuais
- Testes exploratórios
- Teste funcional
- Testes automatizados
- Gherkin (BDD)

### Estratégia de testes:

- Smoke test

## Desenvolvimento Teórico

1) Qual a diferença entre Testes e Qualidade? 
- Teste de software é uma maneira de avaliar a qualidade do software e reduzir o risco de falha em execução;
- Qualidade é um conjunto de características a serem satisfeitas, de modo que o produto atenda às necessidades de seus usuários.

2) Como é o processo de testes ideal para você? O que ele precisa conter para ser um 
processo minimamente ideal?
- Um processo ideal para mim precisa conter com os seguintes grupos principais:
  - Planejamento de teste;
  - Monitoramento e controle do teste;
  - Análise do teste;
  - Modelagem do teste;
  - Implementação do teste;
  - Execução do teste;
  - Conclusão do teste.

3) Como Testes/Qualidade atua na metodologia Ágil? Qual a principal diferença na 
atuação em relação à metodologia Waterfall (Cascata)?

- Resp 01:  Testes/Qualidade 

- Integração contínua: testes são realizados continuamente durante o processo de desenvolvimento. Os testes automatizados são implementados para veirificar se o código novo ou atualizado está funcinando como o esperado.
- Testes unitátios e testes de aceitação: Desenvolvedores e time de qualidade colaboram para escrever testes unitários e de aceitação antes (Shift Left) ou durante a o desenvolvimento do produto.
- Feedback rápido: A equipe de testes fornece feedback imediato sobre a qualidade do produto e a conformidade com os requisitos, o que permite correções rápidas e diminui o risco de problemas maiores no futuro.
- Iterações curtas: Testes são realizados em cada iteração do ciclo de vida do software (desenvolvimento). Isso permite a indentificação antecipada de problemas e ajustes contínuos para melhorar a qualidade do produto.
- Priorização e qualidade: A qualidade é responsabilidade de toda a equipe, não apenas do QA. A mentalidade de "todos são responsáveis pela qualidade" está presente, incentivando a colaboração para garantir um produto final de alta qualidade.


- Res 02: Waterfall (Cascata)
- Os testes são realizados normalmente após o desenvolvimeto, ou seja, os testes são realizados no final do ciclpo de vida do projeto. Isso leva geralmente a descobertas tardias de problemas, tornando as correções onerosa e demoradas.

- Momento do testes: Na cascata, os testes são realizados após a conclusão do desenvolvimento, enquanto a metodologia Ágil, os testes são contínuos e integrados ao longo de todo o processo de desenvolvimento.
- Feedback e Adaptação: Na metodologia Ágil, há um feedback contínuo e a capacidade de se adaptar rapidamente a mudanças, enquanto na Cascata, mudanças são difíceis de serem incorporadas após a fase de testes finais.
- Responsabilidade pela qualidade: Na metodologia Ágil, todo o time é responsável pela qualidade do produto, enquanto na Cascata, os testadores geralmente têm a principal responsabilidade pela garantia de qualidade.

Feito com muita dedicação por Fabrício Perrone 🖤 

[Relatório de incidentes](./incidentes.md)