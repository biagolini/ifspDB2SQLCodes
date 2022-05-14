-- -----------------------------------------------------
-- Selecionar schema
-- -----------------------------------------------------
USE GameStore;

-- Remover campo
ALTER TABLE tblPrice DROP COLUMN XXXX;



dsDateTimePublish DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP;



-- Add new colluns
-- se sua nova coluna tem um valor default, então pode fazer tudo de uma vez, que o SQL vai preencher com o valor default
ALTER TABLE tblOpportunity
ADD dsDateTimeLastEdition DATETIME NOT NULL DEFAULT GETDATE();


-- adicionar coluna, ainda como não obrigatoria (para poder modificar as antigas)
ALTER TABLE tblOpportunity
ADD dsLastEditor VARCHAR(255) NOT NULL;
-- setar que todos os campos recebem algum dado para a coluna
UPDATE tblOpportunity
SET dsLastEditor = 'Testes desenvolvimento';
-- fechar o campo como obrigatorio
ALTER TABLE tblOpportunity
ALTER COLUMN  dsLastEditor VARCHAR(255) NOT NULL;



-- Add new colluns
-- se sua nova coluna tem um valor default, então pode fazer tudo de uma vez, que o SQL vai preencher com o valor default
ALTER TABLE tblOrder
ADD dsDateTimeOrder DATETIME NOT NULL DEFAULT  CURRENT_TIMESTAMP;





