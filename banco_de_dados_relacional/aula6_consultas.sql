-- Criando um usuário sem reserva -- 
INSERT INTO usuarios (nome, email, data_nascimento, rua, numero, cidade, estado) 
VALUES ("Sem Reserva", "semreserva@teste.com", "1999-09-09", "rua", "12", "cidade", "estado"); 

-- Traz apenas os usuario com reservas
-- INNER JOIN trás apenas dados que forem comuns na tabela A e B

SELECT * FROM usuarios us
INNER JOIN reservas rs
	ON us.id = rs.id_usuario;


INSERT INTO viagens.destinos ( nome, descricao) VALUES 
('Deestino sem reserva', 'Uma bela praia com areias brancas e mar cristalino')

-- RIGHT JOIN retorna todas  as linhas das tabelas à direita da junção e as linhas correspondetes da tabela à esquerda. 
SELECT * FROM reservas rs
RIGHT JOIN destinos des
	ON des.id = rs.id_destino;

-- LEFT JOIN retorna todas as linhas da tabela à esquerda da junção e as linhas correspondentes da tabela à direita
SELECT * FROM destinos des
LEFT JOIN reservas rs
	ON des.id = rs.id_destino;

-- SUb consultas: Elas permitem realizar consultas mais complexas permitindo q vc utilize o resultado
-- de uma consulta como entrada para outra consulta. 

-- Usuários que não fizeram nenhuma reserva
SELECT nome
FROM usuarios
WHERE id NOT IN (SELECT id_usuario FROM reservas);

-- Subconsulta para encontrar os destinos menos populares (com menos reservas):

SELECT nome
FROM destinos
WHERE id NOT IN (SELECT id_destino FROM reservas)
ORDER BY id;

-- contagem de reservas por usuario

SELECT nome, (SELECT COUNT(*) FROM reservas WHERE id_usuario = usuarios.id) AS total_reservas
FROM usuarios;