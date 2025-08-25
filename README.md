# Formação SQL Database Specialist
Repositório da formação SQL Database Specialist da DIO.

## Desafio: Refinando um projeto conceitual de banco de dados - E-COMMERCE
Dentro de uma narrativa do contexto de vendas de produtos de um E-COMMERCE, gerou-se um mapa conceitual desse banco de dados envolvendo as entidades PRODUTO, ESTOQUE, CLIENTE, PEDIDO e FORNECEDOR. A partir disso, o desafio gira em torno de refletir sobre essa modelagem e refiná-la pensando nos seguintes aspectos:

- O CLIENTE pode ser uma pessoa física ou jurídica (CPF/CNPJ). Qual técnica utilizar?
- Pensando que o PAGAMENTO pode ser de diversas formas (crédito, débito, PYX), ele deve ser um atributo de CLIENTE ou uma nova ENTIDADE? Se for uma entidade, qual a cardinalidade?
- A ENTREGA (frete) do produto é uma informação a ser persistida? Ela deve ser um atributo de PEDIDO ou uma entidade separada?

### Soluções do Desafio
Pensando nesses problemas, foi implementado as soluções que podem ser vistas nos arquivos `E-commerce_refinado.mwb` e/ou `E-commerce_refinado.png`, da pasta `E-commerce`. O raciocínio foi o seguinte:
1. Para os CLIENTES, necessita-se de uma _especialização_ já que o CLIENTE pode ser tanto uma pessoa física quanto uma pessoa jurídica, ou seja, a pessoa ser física ou jurídica é uma especialização de uma classe mais geral (que no caso é CLIENTE). Como o Workbench não tem as ferramentas de generalização/especialização, foram geradas duas tabelas - uma para CPF e outra para PJ - de forma que o relacionamento é de 1 / 1 em ambas. Como nenhum dos relacionamentos é mandatório, isto é, o CLIENTE é somente uma das opções (CPF ou PJ) então o relacionamento fica (0..1) para 1;
2. Talvez com uma intenção de persistir os dados de pagamentos para uma posterior consulta, por exemplo uma contagem do quanto foi vendido em Crédito ou Débito, gerou-se uma nova entidade PAGAMENTO que relaciona-se com CLIENTE de 1 para _n_ (1 cliente pode ter _n_ formas de pagamento, mas o pagamento é realizado por apenas 1 cliente);
3. Pensando na mesma persistência dos dados para a entrega, gerou-se uma nova entidade ENTREGA que relaciona-se com PEDIDO de 1 para 1 (1 entrega é gerada para apenas 1 pedido e 1 um pedido possui apenas 1 entrega associada).

## Desafio: Construindo um esquema conceitual para banco de dados - Oficina Mecânica
Em outro sentido, foi proposto um desafio para montar um sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica. Foram identificadas as entidades mais importantes (CLIENTE, VEÍCULO, PEDIDO, EQUIPE DE MECÂNICOS, MECÂNICO, ORDEM DE SERVIÇOS, SERVIÇOS e PEÇAS) bem como seus atributos. 

A narrativa baseia-se no modo como se sucede o esquema geral de ordens de serviço: CLIENTE faz um PEDIDO; PEDIDO é analisado pela EQUIPE DE MECÂNICOS; PEDIDO retorna para o CLIENTE liberar ou não; se liberado, PEDIDO gera uma ORDEM DE SERVIÇO (O.S.). A partir disso, criou-se um esquema geral para o contexto de uma oficina mecânica onde o foco é realizar serviços em veículos. 
A construção desse esquema tem como fundamento os seguintes tópicos: 
1. Cliente pode levar mais de um carro para ser realizado serviços;
2. Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma O.S. com data de entrega;
3. A partir da O.S., calcula-se o valor de cada serviço, consultando uma tabela de referência de mão de obra;
4. O valor de cada peça também irá compor a O.S.;
5. O cliente autoriza a execução dos serviços;
6. A mesma equipe avalia e executa os serviços;
7. Mecânicos possuem código, nome, endereço e especialidade;
8. Cada O.S. possui: número, data de emissão, valor, status, e data para conclusão;
9. Uma O.S. pode ser composta por vários serviços e um mesmo serviço pode estar contido em mais de uma O.S.;
10. Uma O.S. pode ter vários tipos de peças e uma peça pode estar presente em mais de uma O.S..

O esquema conceitual encontra-se na pasta `OS_Oficina_Mecânica` nos arquivos `OS_Oficina_Mecânica_refinado.mwb` e `OS_Oficina_Mecânica_refinado.png`.




