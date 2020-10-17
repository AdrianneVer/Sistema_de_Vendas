-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Out-2020 às 02:34
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(5) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `cpf` varchar(17) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `celular` varchar(25) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nome`, `email`, `cpf`, `endereco`, `cidade`, `celular`, `estado`) VALUES
(1, 'Alice', 'alice@gmail.com', '111.222.333-44', 'Rua L2', 'Castanhal', '(91) 1234-2134', 'PA'),
(2, 'Adria Silva', 'adria@gmail.com', '023.456.78-99', 'Rua L3', 'Castanhal', '(91)98734-6789', 'PA'),
(3, 'Silva Costa', 'costa@gmail.com', '023.421.345-99', 'Rua João', 'Belém', '(91)65433-2345', 'PA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `equipamentos`
--

CREATE TABLE `equipamentos` (
  `id_equipamento` int(5) NOT NULL,
  `codigo` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `marca` varchar(20) NOT NULL,
  `modelo` varchar(20) NOT NULL,
  `preco` decimal(6,2) NOT NULL,
  `quantidade` int(8) NOT NULL,
  `descricao` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `equipamentos`
--

INSERT INTO `equipamentos` (`id_equipamento`, `codigo`, `nome`, `marca`, `modelo`, `preco`, `quantidade`, `descricao`) VALUES
(1, 234, 'Celular', 'Samgung', 'Galaxy M', '1.10', 4, 'O sistema operacional Android 10 incorpora respostas inteligentes'),
(2, 1234, 'Notebook', 'lenovo', 'idea', '1.30', 1, 'Sistema operacional Windows 10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id_venda` int(5) NOT NULL,
  `nome` varchar(35) NOT NULL,
  `codigo` int(8) NOT NULL,
  `vendedor` varchar(35) NOT NULL,
  `data_venda` date NOT NULL,
  `preco` decimal(6,2) NOT NULL,
  `pagamento` varchar(12) NOT NULL,
  `parcela` varchar(10) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id_venda`, `nome`, `codigo`, `vendedor`, `data_venda`, `preco`, `pagamento`, `parcela`, `descricao`) VALUES
(1, '2', 2, 'Claus', '2020-10-07', '1.23', 'vista', '1x', 'O cliente retirou o produto na loja');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Índices para tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  ADD PRIMARY KEY (`id_equipamento`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id_venda`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `equipamentos`
--
ALTER TABLE `equipamentos`
  MODIFY `id_equipamento` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id_venda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
