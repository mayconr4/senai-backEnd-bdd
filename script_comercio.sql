USE comercio;

SELECT * FROM cliente;

SELECT nome , nome_social,ativo FROM cliente;   
SELECT nome, data_nascimento FROM cliente;
SELECT nome, data_nascimento FROM cliente WHERE nome LIKE 'B%';  
SELECT nome, data_nascimento FROM cliente WHERE nome LIKE '%a';
SELECT nome, data_nascimento,id_cliente FROM cliente WHERE id_cliente = 500;
SELECT id_cliente,nome, data_nascimento,ativo FROM cliente WHERE ativo=1;

SELECT cliente.id_cliente, cliente.nome,cliente.data_nascimento FROM cliente; 
SELECT c.id_cliente, c.nome,c.data_nascimento FROM cliente c;
SELECT c.id_cliente, c.nome,c.data_nascimento FROM cliente c WHERE nome='Isadora Caldeira';

SELECT nome  FROM cliente WHERE nome="Ryan sá";


SELECT nome_produto, marca, valor_custo  FROM produto;

SELECT SUM(valor_custo) AS VALOR_TOTAL FROM produto; 
SELECT SUM(valor_venda) AS total_valor  FROM produto;


SELECT nome_produto, valor_custo / valor_venda  AS percentual FROM produto;


SELECT SUM(valor_custo / valor_venda) AS VALOR_TOTAL FROM produto; 
SELECT 
  SUM(valor_custo) / SUM(valor_venda) AS margem_media 
FROM produto;

SELECT AVG(valor_custo) AS media_custo FROM produto;

SELECT COUNT(*) AS total_produtos FROM produto;
SELECT SUM(valor_venda)/COUNT(*) AS media_total_produtos FROM produto;

-- Usando Inner join

SELECT 
cliente.nome , 
pedido.id_pedido,
pedido.valor_total_pedido FROM cliente
INNER JOIN pedido ON cliente.id_cliente = pedido.id_cliente;

SELECT cliente.nome,
		pedido.id_pedido,
        produto.nome_produto,
        pedido.valor_total_pedido
        FROM cliente
INNER JOIN pedido
ON cliente.id_cliente = pedido.id_cliente
INNER JOIN produto
ON pedido.id_pedido   = produto.id_produto;

-- cliente , endereco , documento, pedido, item pedido, produto 

-- nome endereco cidade uf cep cnpj codigo quantidade nome do produto valor total 
	





