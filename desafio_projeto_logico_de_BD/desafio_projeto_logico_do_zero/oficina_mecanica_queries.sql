					-- Recuperações Simples (SELECT)

--Pergunta: Quais são todos os clientes registrados na oficina?

	SELECT * FROM Cliente;

					-- Filtros com WHERE

--Pergunta: Qual o nome do mecânico com a especialidade "Elétrica"?]

	SELECT Nome FROM Mecanico WHERE Especialidade = 'Elétrica';

					-- Expressões para Gerar Atributos Derivados
-- Pergunta: Qual o valor total de cada Ordem de Serviço, somando o valor dos serviços e o valor das peças usadas?

	SELECT
		idOrdem_de_Servico,
		(SELECT SUM(Valor) FROM Servicos_has_Pedido WHERE Pedido_idPedido = O.Pedido_idPedido) AS Valor_Total_Servicos,
		(SELECT SUM(Valor_total) FROM Pecas_da_OS WHERE Ordem_de_Servico_idOrdem_de_Servico = O.idOrdem_de_Servico) AS Valor_Total_Pecas,
		Valor AS Valor_Total_OS_Original
	FROM
		Ordem_de_Servico AS O;

					-- Ordenação dos Dados (ORDER BY)
					
-- Pergunta: Quais são todos os serviços, ordenados do mais caro para o mais barato?

	SELECT Descricao, Valor 
	FROM Servicos 
	ORDER BY Valor DESC;

					-- Condição de filtro aos grupos(HAVING)
					
-- Pergunta: Quais equipes de mecânicos possuem mais de um membro?

	SELECT
		E.Nome_equipe,
		COUNT(M.Mecanicos_idMecanico) AS Numero_de_Membros
	FROM
		Equipe_de_Mecanicos AS E
	INNER JOIN Mecanicos_da_Equipe_de_Mecanicos AS M
		ON E.idEquipe_de_Mecanicos = M.Equipe_de_Mecanicos_idEquipe_de_Mecanicos
	GROUP BY
		E.Nome_equipe
	HAVING
		COUNT(M.Mecanicos_idMecanico) > 1;					
						
					-- Junções entre Tabelas (JOIN)

-- Pergunta: Qual é o nome do cliente e a placa do veículo associados a cada Ordem de Serviço?

	SELECT
		C.Nome,
		V.Placa,
		O.idOrdem_de_Servico AS Ordem_de_Servico_ID
	FROM
		Ordem_de_Servico AS O
	INNER JOIN Cliente AS C
		ON O.Cliente_idCliente = C.idCliente
	INNER JOIN Veiculo AS V
		ON C.idCliente = V.idCliente;
