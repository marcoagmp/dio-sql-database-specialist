# Desafio: Construindo seu primeiro projeto lógico de Banco de Dados

## Descrição do Desafio
O objetivo é replicar a **modelagem lógica de um banco de dados para um cenário de e-commerce**. O projeto deve focar na correta definição de chaves primárias e estrangeiras, `constraints` e **relacionamentos do tipo EER** (Entidade-Relacionamento Estendido).

---

## Requisitos Técnicos
O desafio exige a criação de:
* Um script SQL para a **criação do esquema** do banco de dados.
* Persistência de dados para testes.
* **Queries SQL complexas**, utilizando as seguintes cláusulas:
    * `SELECT` (recuperações simples)
    * `WHERE` (filtros)
    * Expressões para gerar **atributos derivados**
    * `ORDER BY` (ordenação)
    * `HAVING` (condições de filtro para grupos)
    * `JOIN` (junções entre tabelas)

---

## Diretrizes
* Não há um número mínimo de queries.
* Todas as cláusulas listadas devem estar presentes nas queries.
* É necessário elaborar **perguntas que possam ser respondidas** pelas consultas.
* O projeto final deve ser adicionado a um **repositório no GitHub**, incluindo uma descrição do projeto lógico no arquivo `README`.

---

## Refinamentos Propostos (Objetivos Específicos)
A modelagem deve incluir os seguintes refinamentos:
* **Cliente:** Uma conta pode ser Pessoa Jurídica (PJ) ou Pessoa Física (PF), mas não ambas.
* **Pagamento:** Um cliente pode ter mais de uma forma de pagamento cadastrada.
* **Entrega:** A entrega deve ter um **status** e um **código de rastreio**.

---

## Perguntas de Exemplo para as Queries SQL
Algumas perguntas sugeridas para orientar a criação das queries são:
* Quantos pedidos foram feitos por cada cliente?
* Algum vendedor também é fornecedor?
* Qual a relação de produtos, fornecedores e estoques?
* Qual a relação entre os nomes dos fornecedores e os nomes dos produtos?
