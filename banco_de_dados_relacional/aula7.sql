-- Para contar a quantia de usuários

SELECT COUNT(*) FROM usuarios;

-- Calcula quantia de reservas por destino --
SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino ;

-- Maior Idade
SELECT MAX(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS media_idade
FROM usuarios;

-- Menor Idade
SELECT MIN(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS media_idade
FROM usuarios;

-- Media de idade dos usuarios
SELECT AVG(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS idade
FROM usuarios;

-- Soma da idade dos usuarios
SELECT SUM(TIMESTAMPDIFF(YEAR, data_nascimento, CURRENT_DATE())) AS media_idade
FROM usuarios;

-- Limit
SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino LIMIT 1 OFFSET 2;

SELECT *, COUNT(*) AS total_reservas FROM reservas GROUP BY id_destino LIMIT 1;

-- Ordenação de resultados
SELECT nome -- Ordem alfabetica
FROM usuarios
ORDER BY nome;

SELECT COUNT(*) AS qtd_reservas, id_destino FROM reservas -- Ordem de quantia de destinos
GROUP BY id_destino
ORDER BY qtd_reservas; 

SELECT COUNT(*) AS qtd_reservas, id_destino FROM reservas -- Ordem descendente de quantia de destinos
GROUP BY id_destino
ORDER BY qtd_reservas DESC;

SELECT nome, data_nascimento
FROM usuarios
ORDER BY data_nascimento, nome; -- A ordenção pode ser feita em múltiplos campos

