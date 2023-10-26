
-- Inserts --
INSERT INTO viagens.usuarios (id, nome, email, data_nascimento, endereco) VALUES 
(2, 'Taylor Gabriel', 'taylor@teste.com', '2014-10-19', 'Rua das Tulipas, 200, Uberlândia, MG'),
(3, 'Maria Santos', 'maria@teste.com', '1992-05-15', 'Rua B, 123, letras, MG'),
(4, 'Pedro Soza', 'pedro@teste.com', '1999-04-06', 'Av C, 789, são paulo, SP'),
(5, 'Lilian Marques', 'lilian@teste.com' '1997-04-16', 'Rua do girassol, n 100, rio de janeiro, RJ'); 

INSERT INTO viagens.destinos (id, nome, descricao) VALUES 
(1, 'Praia das Tartarugas', 'Uma bela praia com areias brancas e mar cristalino'),
(2, 'Cachoeira do Vale Verde', 'Uma cachoeira exuberante cercada por natureza'),
(3, 'Cidade Histórica de Pedra Alta', 'Uma cidade rica em história e arquitetura');

INSERT INTO viagens.reservas (id, id_usuario, id_destino, data, status) VALUES 
(2, 2, 2, '2023-07-10', 'confirmada'),
(3, 3, 3, '2023-08-05', 'pendente'),
(4, 4, 1, '2023-09-20', 'cancelada'),
(6, 5, 3, '2023-12-20', 'confirmada');

-- Selects --

-- Selecionar todos os registros da tabela "usuarios"
SELECT * FROM usuarios;

-- Selecionar apenas o nome e o email dos usuários
SELECT nome, email FROM usuarios;

-- Selecionar os usuários que possuem o nome "João Silva"
SELECT * FROM usuarios WHERE nome = 'Pedro Soza';

-- Selecionar os usuários que nasceram antes de uma determinada data
SELECT * FROM usuarios WHERE data_nascimento < '1992-05-15';

-- Like
SELECT * FROM usuarios WHERE nome LIKE '%Souza%';
