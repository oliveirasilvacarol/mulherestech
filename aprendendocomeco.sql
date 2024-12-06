-- criando meu primeiro banco de dados
CREATE DATABASE senac_copacabana;
-- Selecioando o banco de dados
USE senac_copacabana;

-- criando minha primeira tabela/entidade
CREATE TABLE alunos (
   id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
   matricula INT NOT NULL,
   nome_aluno TEXT NOT NULL,
   genero  varchar(1) NOT NULL
);
-- injeção de dados-teste
INSERT INTO alunos( matricula, nome_aluno, genero)
VALUES (00123, 'Kerollyn', 'F'),
(00023, 'Jordana', 'F'),
(00542,'Mario','M');

-- consultando as injeções realizadas
SELECT * FROM alunos WHERE matricula=1;

-- inserindo uma chave estrangeira ao criar uma tabela
-- opção 1: a tabela AINDA NÃO FOI CRIADA:
CREATE TABLE professores (
	id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
	matricula INT NOT NULL,
	nome_professor TEXT NOT NULL,
	area TEXT NOT NULL,
	CONSTRAINT fk_alunos
	FOREIGN KEY (matricula)
	REFERENCES alunos(matricula)
  );
    -- inserindo varios registros
INSERT INTO professor (matricula, nome_professor, area)
VALUES (1, 'Francisco', 'Tecnologia'),
(2, 'Mario', 'Turismo'),
(3,'Lucas', 'Gastronomia');

-- consultando
SELECT * FROM professor WHERE matricula=2

-- criando tabela 
CREATE TABLE cursos(
	  id_curso NULL PRIMARY KEY AUTO_INCREMENT,
  	nome_curso VARCHAR(50) NOT NULL,
    carga_horaria INT NOT NULL,
  	nivel VARCHAR(50) NOT NULL,
    modalidade VARCHAR(50) NOT NULL,
    area VARCHAR(50) NOT NULL,
    periodicidade VARCHAR(50) NOT NULL,
    data_inicio  DATE NOT NULL,
    data_final DATE NOT NULL,
    valor INT (10, 2) NOT NULL,
    aluno_id INT, 
    professor_id INT,
    FOREIGN KEY (aluno_id) REFERENCES alunos(id),
    FOREIGN KEY (professor_id) REFERENCES professores(id)
  );

-- inserindo varios registros

INSERT INTO cursos (nome_curso, carga_horaria, nivel, modalidade, area, periodicidade, data_inicio, data_final, valor)

VALUES
('Análise de Dados',200h,'Básico', 'Online', 'Tecnologia','3ª,5ª 18:00 / 22:00', '15-01-2025', '14-04-2025', 1500.00),
('Ajudante de Cozinha','60h','Basico', 'Presencial', 'Gastronomia', '3ª,4ª,5ª 08:00 /12:00' ,'20-01-2025', '21-02-2025', 950.00),
('Ecoturismo', '36h','intermediário', 'Presencial', 'Turismo', 'Sáb 09:00 / 13:00 ', '22-02-2025 ', '03-05-2025',  999.99);

  -- consultando informações
  
  SELECT * FROM data_inicio  >'01-01-2025'

-- modificando tabelas que já foram criadas no geral:
ALTER TABLE alunos
ADD email_contato VARCHAR (50);

-- comandos de exclusão:
DROP TABLE alunos;
DROP DATABASE senac_copacabana;

