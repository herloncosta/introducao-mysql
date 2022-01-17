-- Criação da tabela
CREATE TABLE pessoas (
    id INT NOT NULL PRIMARY KEY AUTOINCREMENT,
    nome VARCHAR(30) NOT NULL,
    nascimento DATE
)

-- Inserindo dados na tabela
INSERT INTO pessoas (nome, nascimento) VALUES ("Herlon Costa", "1996 08 17");
INSERT INTO pessoas (nome, nascimento) VALUES ("Cintia Santos", "1995 09 04");
INSERT INTO pessoas (nome, nascimento) VALUES ("Elizabete Souza", "1972 08 16");

-- Selecionando dados na tabela
SELECT nome FROM pessoas;
SELECT nascimento FROM pessoas;

-- Atualiza todos os nomes para Herlon Costa
UPDATE pessoas SET nome = "Herlon Costa";

-- Atualiza nome por referência do id
UPDATE pessoas SET nome = "Herlon Costa" WHERE id = 1;
UPDATE pessoas SET nome = "Cintia Santos" WHERE id = 2;
UPDATE pessoas SET nome = "Elizabete Souza" WHERE id = 3;

-- Deleta todos os registros da tabela
DELETE FROM pessoas;

-- Deleta item por referência do id
DELETE FROM pessoas WHERE id = 1;

-- Mostra dados por ordem alfabética, data de nascimento ou id
SELECT * FROM pessoas ORDER BY nome;
SELECT * FROM pessoas ORDER BY nascimento;
SELECT * FROM pessoas ORDER BY id;

-- Mostra dados em ordem crescente (padrão) ou decrescente
SELECT * FROM pessoas ORDER BY nome ASC -- Crescente
SELECT * FROM pessoas ORDER BY nome DESC -- Decrescente

-- Insere nova coluna na tabela
ALTER TABLE `pessoa` ADD `genero` VARCHAR(1) NOT NULL AFTER `nascimento`;

-- Agrupa itens da tabela por grupo especificado
SELECT genero FROM pessoas GROUP BY genero -- F e M

-- Agrupa itens da tabela por grupo especificado e mostra quantidade de itens por grupo
SELECT COUNT(genero), genero FROM pessoas GROUP BY genero -- 1: M  2: F

-- Atividade: Cadastrar gênero para todas as pessoas da lista
UPDATE pessoas SET genero = "M" WHERE id = 1;
UPDATE pessoas SET genero = "F" WHERE id = 2;
UPDATE pessoas SET genero = "F" WHERE id = 3;

-- Consulta item de tabelas relacionadas
SELECT item FROM tabela1 JOIN tabela2 ON tabela1.foreingkey_item = tabela2.id_item;