# **Personalizando o Banco de Dados com Índices e Procedures**

Este repositório contém um script SQL para personalizar um banco de dados MySQL com índices e procedures. O script aborda dois aspectos principais: a criação de índices para otimizar consultas e a implementação de uma procedure para manipulação de dados.

## **Parte 1 – Criando índices em Banco de Dados**

Nesta parte do desafio, são criados índices para melhorar o desempenho de consultas em um cenário de uma empresa fictícia. Os índices são projetados para facilitar a busca pelo departamento com o maior número de pessoas, consultar os departamentos por cidade e obter a relação de empregados por departamento.

### **Motivação dos Índices:**

- **`idx_departamento`**: Facilita a busca pelo departamento com o maior número de pessoas.
- **`idx_cidade_departamento`**: Melhora a performance ao consultar os departamentos por cidade.
- **`idx_empregados_departamento`**: Otimiza a consulta da relação de empregados por departamento.

### **Perguntas Abordadas:**

- Qual o departamento com maior número de pessoas?
- Quais são os departamentos por cidade?
- Relação de empregados por departamento

## **Parte 2 - Utilização de procedures para manipulação de dados em Banco de Dados**

Nesta parte do desafio, é criada uma procedure chamada **`ManipularDados`** para manipulação de dados no banco de dados. A procedure pode ser utilizada para inserir, atualizar ou remover registros da base de dados, dependendo da opção selecionada.

### **Funcionalidades da Procedure:**

- Inserção de novos registros.
- Atualização de registros existentes.
- Remoção de registros da base de dados.

## **Instruções de Uso**

- Execute o script SQL em seu ambiente de banco de dados MySQL.
- Após a execução, você poderá utilizar as consultas e a procedure definidas conforme necessário para sua aplicação.

## **Arquivos Incluídos**

- **`Personalizando_BD_com_Indices_e_Procedures.sql`**: Script SQL com a criação dos índices e da procedure.
