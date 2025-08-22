# Formação SQL Database Specialist
Repositório da formação SQL Database Specialist da DIO.

## Desafio: Refinando um projeto conceitual de banco de dados - E-COMMERCE
Dentro de uma narrativa do contexto de vendas de produtos de um E-COMMERCE, gerou-se um mapa conceitual desse banco de dados envolvendo as entidades PRODUTO, ESTOQUE, CLIENTE, PEDIDO e FORNECEDOR. A partir disso, o desafio gira em torno de refletir sobre essa modelagem e refiná-la pensando nos seguintes aspectos:

- O CLIENTE pode ser uma pessoa física ou jurídica (CPF/CNPJ). Qual técnica utilizar?
- Pensando que o PAGAMENTO pode ser de diversas formas (crédito, débito, PYX), ele deve ser um atributo de CLIENTE ou uma nova ENTIDADE? Se for uma entidade, qual a cardinalidade?
- A ENTREGA (frete) do produto é uma informação a ser persistida? Ela deve ser um atributo de PEDIDO ou uma entidade separada?

Pensando nesses problemas, foi implementado as soluções que encontram-se nos arquivos `E-commerce_refinado.mwb` e/ou `E-commerce_refinado.png`.

