CREATE TABLE TAB_FATURAMENTO (DATA_VENDA DATE NULL, TOTAL_VENDA FLOAT);

INSERT INTO TAB_FATURAMENTO
SELECT A.DATA_VENDA, SUM(B.QUANTIDADE * B.PRECO) FROM
notas_fiscais A INNER JOIN itens_notas_fiscais B
ON A.NUMERO = B.NUMERO
GROUP BY A.DATA_VENDA;

SELECT * FROM tb_faturamento;
