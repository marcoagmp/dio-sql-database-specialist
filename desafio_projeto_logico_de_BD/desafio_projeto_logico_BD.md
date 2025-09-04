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

### **Desafio: Construa um Projeto Lógico de banco de Dados do Zero**

De uma outra forma, agora o desafio proposto é montar um modelo relacional de um banco de dados do zero, para uma oficina. O desafio exige a criação do esquema lógico, o script de implementação e a realização de consultas SQL complexas.

---

### **Etapas do Projeto**

1.  **Esquema Lógico**:
    * Desenvolver o esquema lógico do banco de dados relacional, utilizando como base o esquema conceitual criado em um desafio anterior.

2.  **Script SQL**:
    * Criar o script SQL completo para a implementação do esquema do banco de dados.
    * Incluir a persistência de dados (inserção de registros) para possibilitar a realização de testes e consultas.

3.  **Consultas SQL**:
    * Elaborar consultas SQL complexas, indo além das recuperações simples.
    * As consultas devem responder a perguntas específicas sobre os dados da oficina.

---

### **Requisitos para as Consultas**

As consultas SQL precisam obrigatoriamente incluir as seguintes cláusulas:

* `SELECT`: Recuperações de dados.
* `WHERE`: Filtros de dados específicos.
* **Atributos Derivados**: Criação de novas colunas a partir de expressões.
* `ORDER BY`: Ordenação dos resultados.
* `HAVING`: Filtros aplicados a grupos de dados.
* **Junções entre Tabelas**: Combinação de dados de múltiplas tabelas para uma análise mais completa.

---

### **Entrega do Projeto**

* O projeto final deve ser disponibilizado em um **repositório do GitHub**.
* O arquivo **README.md** do repositório deve conter uma descrição detalhada do esquema lógico do banco de dados, fornecendo o contexto necessário para a avaliação.

