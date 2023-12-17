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