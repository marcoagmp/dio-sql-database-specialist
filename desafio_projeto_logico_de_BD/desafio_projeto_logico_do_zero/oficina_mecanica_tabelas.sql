-- Criação da tabela Cliente
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    CPF VARCHAR(45),
    Contato VARCHAR(45)
);

-- Criação da tabela Veiculo
CREATE TABLE Veiculo (
    idVeiculo INT PRIMARY KEY AUTO_INCREMENT,
    Placa VARCHAR(45) NOT NULL,
    Modelo VARCHAR(45),
    Marca VARCHAR(45),
    idCliente INT,
    Ano VARCHAR(45),
    CONSTRAINT fk_veiculo_cliente FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente)
);

-- Criação da tabela Mecanico
CREATE TABLE Mecanico (
    idMecanico INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Endereco VARCHAR(45),
    Especialidade VARCHAR(45)
);

-- Criação da tabela Equipe_de_Mecanicos
CREATE TABLE Equipe_de_Mecanicos (
    idEquipe_de_Mecanicos INT PRIMARY KEY AUTO_INCREMENT,
    Nome_equipe VARCHAR(45)
);

-- Criação da tabela Mecanicos_da_Equipe_de_Mecanicos
CREATE TABLE Mecanicos_da_Equipe_de_Mecanicos (
    Mecanicos_idMecanico INT,
    Equipe_de_Mecanicos_idEquipe_de_Mecanicos INT,
    PRIMARY KEY (Mecanicos_idMecanico, Equipe_de_Mecanicos_idEquipe_de_Mecanicos),
    CONSTRAINT fk_Mecanicos_idMecanico FOREIGN KEY (Mecanicos_idMecanico) REFERENCES Mecanico(idMecanico),
    CONSTRAINT fk_Equipe_de_Mecanicos_idEquipe_de_Mecanicos FOREIGN KEY (Equipe_de_Mecanicos_idEquipe_de_Mecanicos) REFERENCES Equipe_de_Mecanicos(idEquipe_de_Mecanicos)
);

-- Criação da tabela Servicos
CREATE TABLE Servicos (
    idServicos INT PRIMARY KEY AUTO_INCREMENT,
    Descricao VARCHAR(45),
    Valor FLOAT
);

-- Criação da tabela Peca
CREATE TABLE Peca (
    idPeca INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(45) NOT NULL,
    Valor FLOAT
);

-- Criação da tabela Pedido
CREATE TABLE Pedido (
    idPedido INT PRIMARY KEY AUTO_INCREMENT,
    Servico VARCHAR(45) NOT NULL,
    Descricao VARCHAR(45),
    `Status` TINYINT,
    Data DATE,
    idEquipe_de_Mecanicos INT,
    CONSTRAINT fk_pedido_equipe FOREIGN KEY (idEquipe_de_Mecanicos) REFERENCES Equipe_de_Mecanicos(idEquipe_de_Mecanicos)
);

-- Criação da tabela Servicos_has_Pedido (relacionamento N:N)
CREATE TABLE Servicos_has_Pedido (
    Servicos_idServicos INT,
    Pedido_idPedido INT,
    PRIMARY KEY (Servicos_idServicos, Pedido_idPedido),
    CONSTRAINT fk_servicos_has_pedido_servicos FOREIGN KEY (Servicos_idServicos) REFERENCES Servicos(idServicos),
    CONSTRAINT fk_servicos_has_pedido_pedido FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido)
);

-- Criação da tabela Ordem_de_Servico
CREATE TABLE Ordem_de_Servico (
    idOrdem_de_Servico INT PRIMARY KEY AUTO_INCREMENT,
    `Status` VARCHAR(45) NOT NULL,
    Data_de_Emissao DATE,
    Data_para_Conclusao DATE,
    Valor FLOAT,
    Pedido_idPedido INT,
    Cliente_idCliente INT,
    Equipe_de_Mecanicos_idEquipe_de_Mecanicos INT,
    CONSTRAINT fk_ordem_de_servico_pedido FOREIGN KEY (Pedido_idPedido) REFERENCES Pedido(idPedido),
    CONSTRAINT fk_ordem_de_servico_cliente FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente),
    CONSTRAINT fk_ordem_de_servico_equipe FOREIGN KEY (Equipe_de_Mecanicos_idEquipe_de_Mecanicos) REFERENCES Equipe_de_Mecanicos(idEquipe_de_Mecanicos)
);

-- Criação da tabela Pecas_da_OS (relacionamento N:N com atributos)
CREATE TABLE Pecas_da_OS (
    Peca_idPeca INT,
    Ordem_de_Servico_idOrdem_de_Servico INT,
    Quantidade INT NOT NULL,
    Valor_total FLOAT,
    PRIMARY KEY (Peca_idPeca, Ordem_de_Servico_idOrdem_de_Servico),
    CONSTRAINT fk_pecas_da_os_peca FOREIGN KEY (Peca_idPeca) REFERENCES Peca(idPeca),
    CONSTRAINT fk_pecas_da_os_ordem_servico FOREIGN KEY (Ordem_de_Servico_idOrdem_de_Servico) REFERENCES Ordem_de_Servico(idOrdem_de_Servico)
);
