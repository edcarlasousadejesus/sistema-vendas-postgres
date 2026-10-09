# Sistema de Vendas - Banco de Dados PostgreSQL

Projeto prático de modelagem e implementação de um banco de dados relacional desenvolvido para a faculdade.

## 🛠️ Tecnologias Utilizadas
* SGBD: PostgreSQL 18
* Linguagem: SQL (DDL, DML, DQL)

## 🗄️ Estrutura da Base de Dados
O banco é composto pelas tabelas:
* `clientes`: Registo dos clientes.
* `categorias`: Categorias de produtos.
* `produtos`: Catálogo com preço e stock.
* `pedidos`: Registo das vendas.
* `itens_pedido`: Associação entre pedidos e produtos.

## 🚀 Como Restaurar a Base de Dados
Para importar o backup num ambiente PostgreSQL local, execute no terminal:
