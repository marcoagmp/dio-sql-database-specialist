-- Inserindo dados na tabela Cliente
INSERT INTO Cliente (Nome, CPF, Contato) VALUES
('João Silva', '111.111.111-11', '(11) 98765-4321'),
('Maria Oliveira', '222.222.222-22', '(22) 91234-5678'),
('Pedro Souza', '333.333.333-33', '(33) 95555-4444');

-- Inserindo dados na tabela Veiculo
INSERT INTO Veiculo (Placa, Modelo, Marca, idCliente, Ano) VALUES
('ABC-1234', 'Gol', 'Volkswagen', 1, '2015'),
('XYZ-5678', 'Civic', 'Honda', 2, '2019'),
('DEF-9012', 'Onix', 'Chevrolet', 3, '2020');

-- Inserindo dados na tabela Mecanico
INSERT INTO Mecanico (Nome, Endereco, Especialidade) VALUES
('Carlos Augusto', 'Rua das Chaves, 123', 'Motor'),
('Fernanda Lima', 'Avenida das Peças, 45', 'Elétrica'),
('Roberto Santos', 'Praça do Carro, 78', 'Suspensão');

-- Inserindo dados na tabela Equipe_de_Mecanicos
INSERT INTO Equipe_de_Mecanicos (Nome_equipe) VALUES
('Equipe Alpha'),
('Equipe Beta');

-- Inserindo dados na tabela Mecanicos_da_Equipe_de_Mecanicos
INSERT INTO Mecanicos_da_Equipe_de_Mecanicos (Mecanicos_idMecanico, Equipe_de_Mecanicos_idEquipe_de_Mecanicos) VALUES
(1, 1),
(2, 1),
(3, 2);

-- Inserindo dados na tabela Servicos
INSERT INTO Servicos (Descricao, Valor) VALUES
('Troca de Oleo', 150.00),
('Alinhamento e Balanceamento', 200.00),
('Revisão Geral', 500.00),
('Reparo Eletrico', 350.00),
('Troca de Pastilha de Freio', 180.00);

-- Inserindo dados na tabela Peca
INSERT INTO Peca (Nome, Valor) VALUES
('Filtro de Oleo', 35.00),
('Pastilha de Freio', 90.00),
('Vela de Ignicao', 25.00),
('Amortecedor', 250.00);

-- Inserindo dados na tabela Pedido
INSERT INTO Pedido (Servico, Descricao, Status, Data, idEquipe_de_Mecanicos) VALUES
('Troca de Oleo', 'Troca de oleo e filtro do motor.', 1, '2025-08-28', 1),
('Revisao', 'Revisao de 20.000km.', 1, '2025-08-29', 1),
('Reparo Eletrico', 'Problema no alternador.', 0, '2025-08-30', 2);

-- Inserindo dados na tabela Servicos_has_Pedido
INSERT INTO Servicos_has_Pedido (Servicos_idServicos, Pedido_idPedido) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3);

-- Inserindo dados na tabela Ordem_de_Servico
INSERT INTO Ordem_de_Servico (Status, Data_de_Emissao, Data_para_Conclusao, Valor, Pedido_idPedido, Cliente_idCliente, Equipe_de_Mecanicos_idEquipe_de_Mecanicos) VALUES
('Em andamento', '2025-09-01', '2025-09-05', 350.00, 1, 1, 1),
('Concluida', '2025-09-02', '2025-09-03', 750.00, 2, 2, 1),
('Aguardando pecas', '2025-09-03', '2025-09-08', 400.00, 3, 3, 2);

-- Inserindo dados na tabela Pecas_da_OS
INSERT INTO Pecas_da_OS (Peca_idPeca, Ordem_de_Servico_idOrdem_de_Servico, Quantidade, Valor_total) VALUES
(1, 1, 1, 35.00),
(2, 2, 2, 180.00),
(3, 3, 1, 25.00);
