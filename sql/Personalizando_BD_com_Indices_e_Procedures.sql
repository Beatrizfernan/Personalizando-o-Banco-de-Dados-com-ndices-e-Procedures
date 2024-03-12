-- Parte 1 – Criando índices em Banco de Dados

-- Criação dos índices para consultas no cenário de company

-- Índice para a consulta do departamento com maior número de pessoas
CREATE INDEX idx_departamento ON employees (department_id);

-- Índice para a consulta dos departamentos por cidade
CREATE INDEX idx_cidade_departamento ON departments (city);

-- Índice para a relação de empregados por departamento
CREATE INDEX idx_empregados_departamento ON employees (department_id);

-- Motivos da escolha dos índices:
-- O índice idx_departamento na tabela employees facilita a busca pelo departamento com o maior número de pessoas, 
-- enquanto idx_cidade_departamento na tabela departments melhora a performance ao consultar os departamentos por cidade. 
-- Já o índice idx_empregados_departamento na tabela employees otimiza a consulta da relação de empregados por departamento.

-- Perguntas:

-- Qual o departamento com maior número de pessoas?
SELECT department_id, COUNT(*) AS total_pessoas
FROM employees
GROUP BY department_id
ORDER BY total_pessoas DESC
LIMIT 1;

-- Quais são os departamentos por cidade?
SELECT city, COUNT(*) AS total_departamentos
FROM departments
GROUP BY city;

-- Relação de empregados por departamento
SELECT d.name AS departamento, COUNT(*) AS total_empregados
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY departamento;

-- Parte 2 - Utilização de procedures para manipulação de dados em Banco de Dados

-- Criando a procedure para manipulação de dados
DELIMITER //

CREATE PROCEDURE ManipularDados(
    IN opcao INT,
    IN id INT,
    IN nome VARCHAR(100),
    IN salario DECIMAL(10,2),
    IN cidade VARCHAR(100)
)
BEGIN
    IF opcao = 1 THEN
        -- Inserção de dados
        INSERT INTO employees (employee_id, employee_name, salary, city)
        VALUES (id, nome, salario, cidade);
    ELSEIF opcao = 2 THEN
        -- Atualização de dados
        UPDATE employees
        SET employee_name = nome, salary = salario, city = cidade
        WHERE employee_id = id;
    ELSEIF opcao = 3 THEN
        -- Remoção de dados
        DELETE FROM employees
        WHERE employee_id = id;
    END IF;
END //

DELIMITER ;

-- Exemplo de chamada da procedure para inserção de dados
CALL ManipularDados(1, 101, 'João', 3000.00, 'São Paulo');

-- Exemplo de chamada da procedure para atualização de dados
CALL ManipularDados(2, 101, 'José', 3500.00, 'Rio de Janeiro');

-- Exemplo de chamada da procedure para remoção de dados
CALL ManipularDados(3, 101, '', 0, '');

