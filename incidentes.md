# Cadastro de incidentes

## De implementação (Implementation error)

1. Descrição: Ao adicionar um produto ao carrinho, a quantidade selecionada não é refletida corretamente no carrinhod de compras.
2. Passos para reproduzir: 
- Adicionar um produto ao carrinho.
- Verificar a quantidade no carrinho e comparara  com a qunatidade selecionada.
3. Impacto: Médio - Afeta diretamente a precisão das compras.

## Da arquitetura (Architcture error)

1. Descrição: Durante o processo de pagamento, o sistema apresenta falhas intermintentes ao tentar realizar transações com determinado método de pagamento.
2. Passos para a reproduzir:
- Selecionar um método de pagamento específico.
- Tentar concluir a transação diversas vezes.
3. Impacto: Alto - Interfere na funcionalidade principas do ecommerce.

## De Requisitos (Requirement Error):
1. Descrição: Os métodos de entrega expressa não estão exibindo corretamente o prazo de entrega no momento da escolha.
2. Passos para Reproduzir:
Escolher uma opção de entrega expressa. Verificar se o prazo exibido corresponde ao esperado.
3. Impacto: Baixo - Afeta a informação apresentada, mas não impede a finalização da compra.

## Cadastro de Incidentes por Criticidade:
### Bloqueado (Blocker):
1. Descrição: O processo de login está inacessível para todos os usuários.
2. Impacto: Crítico - Impede que os usuários acessem suas contas e prossigam com as compras.
Alta (High):
2. Descrição: Após finalizar a compra, o sistema não envia o e-mail de confirmação para o usuário.
Impacto: Significativo - Os usuários não recebem a confirmação do pedido.

### Média (Medium):
1. Descrição: Durante a escolha do método de pagamento, o sistema exibe uma mensagem de erro ocasionalmente.
2. Impacto: Moderado - Pode causar confusão para os usuários, mas não impede a conclusão do processo.

### Baixa (Low):
1. Descrição: A página de detalhes do produto exibe informações irrelevantes para alguns produtos específicos.
2. Impacto: Mínimo - Não afeta diretamente o processo de compra, mas pode gerar confusão para os usuários.