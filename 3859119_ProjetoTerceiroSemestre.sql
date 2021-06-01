-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2020 às 12:12
-- Versão do servidor: 10.4.14-MariaDB
-- versão do PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `3859119_ProjetoTerceiroSemestre`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `item`
--

CREATE TABLE `item` (
  `codPedido` int(5) NOT NULL,
  `codProduto` int(5) NOT NULL,
  `quantidade` int(5) NOT NULL,
  `preco` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `codPedido` int(5) NOT NULL,
  `codUsuario` int(5) NOT NULL,
  `status` int(1) NOT NULL,
  `dataPedido` varchar(10) NOT NULL,
  `precoTotal` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codProduto` int(5) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `preco` decimal(18,2) NOT NULL,
  `estoque` int(5) NOT NULL,
  `foto` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codProduto`, `nome`, `preco`, `estoque`, `foto`) VALUES
(1010, 'caixa de som', '99.00', 9, 'images/a2a123cc94c9b1150646b03d7cc38c8e.jpg'),
(1011, 'monitor', '570.00', 5, 'images/a259214f3f91309c3be44b1390ceab63.jpg'),
(1012, 'roteador', '120.00', 12, 'images/978f79fc3383db0b9dc899ad64402887.jpg'),
(1014, 'hd', '150.00', 1, 'images/9735d523c9cf0deadc1a504fabc83c73.jpg'),
(1015, 'web cam', '90.00', 54, 'images/b481df0923de7466dc5d984f58461030.jpg'),
(1016, 'mouse gamer', '60.00', 50, 'images/b66a9f4b785685a820c5d2935d03f484.jpg'),
(1017, 'teclado', '75.00', 10, 'images/f5b4213807faab46b35202cc4bd8399b.jpg'),
(1018, 'gabinete', '170.00', 3, 'images/4a3af1e3b39f5a65174d384e449d445f.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `codUsuario` int(5) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `dataNascimento` varchar(10) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `endereco` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`codUsuario`, `nome`, `dataNascimento`, `cpf`, `telefone`, `senha`, `email`, `endereco`) VALUES
(10, 'Pedro viana', '2002-06-09', '48823928877', '11951513464', 'felipe01', 'pedrosan010@gmail.com', 'Rua rio imburana, São Paulo'),
(11, 'Grupo', '2012-12-12', '48923989887', '40028922', 'covid19', 'grupo@uni9.com', 'Avenida Brasil');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `item`
--
ALTER TABLE `item`
  ADD KEY `codPedido` (`codPedido`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`codPedido`),
  ADD KEY `codUsuario` (`codUsuario`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codProduto`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`codUsuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `codPedido` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `codProduto` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `codUsuario` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
