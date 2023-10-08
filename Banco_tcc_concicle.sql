-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08-Out-2023 às 23:37
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tcc_concicle`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anunciar`
--

CREATE TABLE `anunciar` (
  `ID_anunciar` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `ID_avaliacao` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL,
  `data_av` date NOT NULL,
  `hora_av` time NOT NULL,
  `comentario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `ID_carco` int(11) NOT NULL,
  `cargo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`ID_carco`, `cargo`) VALUES
(1, 'usuario'),
(2, 'vendedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `ID_categ` int(11) NOT NULL,
  `Nome_categ` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`ID_categ`, `Nome_categ`) VALUES
(1, 'madeira'),
(2, 'plastico'),
(3, 'vidro'),
(4, 'metal'),
(5, 'pvc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `ID_contato` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `tel_fixo` varchar(15) DEFAULT NULL,
  `tel_celular` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`ID_contato`, `ID_usuario`, `tel_fixo`, `tel_celular`) VALUES
(1, 1, '', '11982652049'),
(2, 2, '', '11982652049');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `ID_endereco` int(11) NOT NULL,
  `CEP` varchar(10) NOT NULL,
  `UF` varchar(2) NOT NULL,
  `rua` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `num_casa` int(5) NOT NULL,
  `complemento` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`ID_endereco`, `CEP`, `UF`, `rua`, `bairro`, `cidade`, `num_casa`, `complemento`) VALUES
(1, '06602190', 'SP', 'Rua Odilon Correia Pires', 'Vila Eunice', 'Jandira', 94, 'casa '),
(2, '06602190', 'SP', 'Rua Odilon Correia Pires', 'Vila Eunice', 'Jandira', 94, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `ID_img` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL,
  `nome_imagem` varchar(25) NOT NULL,
  `tamanho_imagem` varchar(25) NOT NULL,
  `tipo_imagem` varchar(10) NOT NULL,
  `caminho_imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`ID_img`, `ID_user`, `nome_imagem`, `tamanho_imagem`, `tipo_imagem`, `caminho_imagem`) VALUES
(1, 1, 'philip1', '2163', '.png', 'uploads/philip10.png'),
(2, 2, '1232', '19129', '.png', 'uploads/12320.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens_prod`
--

CREATE TABLE `imagens_prod` (
  `ID_img` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL,
  `nome_imagem` varchar(25) NOT NULL,
  `tamanho_imagem` varchar(25) NOT NULL,
  `tipo_imagem` varchar(10) NOT NULL,
  `caminho_imagem` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imagens_prod`
--

INSERT INTO `imagens_prod` (`ID_img`, `ID_prod`, `nome_imagem`, `tamanho_imagem`, `tipo_imagem`, `caminho_imagem`) VALUES
(21, 6, 'Produto exemplo', '1633331', '.png', 'uploads-prod/Produto exemplo0.png'),
(22, 6, 'Produto exemplo', '1621398', '.png', 'uploads-prod/Produto exemplo1.png'),
(23, 6, 'Produto exemplo', '1821676', '.png', 'uploads-prod/Produto exemplo2.png'),
(24, 6, 'Produto exemplo', '2460039', '.png', 'uploads-prod/Produto exemplo3.png'),
(25, 7, 'qwe', '1633331', '.png', 'uploads-prod/qwe0.png'),
(26, 7, 'qwe', '1621398', '.png', 'uploads-prod/qwe1.png'),
(27, 7, 'qwe', '1821676', '.png', 'uploads-prod/qwe2.png'),
(28, 7, 'qwe', '2460039', '.png', 'uploads-prod/qwe3.png'),
(29, 8, 'q', '1653514', '.png', 'uploads-prod/q0.png'),
(30, 8, 'q', '1767595', '.png', 'uploads-prod/q1.png'),
(31, 8, 'q', '1835094', '.png', 'uploads-prod/q2.png'),
(32, 8, 'q', '1555663', '.png', 'uploads-prod/q3.png'),
(33, 9, 'Qweqewq', '1206415', '.png', 'uploads-prod/Qweqewq0.png'),
(34, 10, 'QweqewqQweqewqQweqewq', '3181219', '.png', 'uploads-prod/QweqewqQweqewqQweqewq0.png'),
(35, 10, 'QweqewqQweqewqQweqewq', '2277780', '.png', 'uploads-prod/QweqewqQweqewqQweqewq1.png'),
(36, 10, 'QweqewqQweqewqQweqewq', '683179', '.png', 'uploads-prod/QweqewqQweqewqQweqewq2.png'),
(37, 10, 'QweqewqQweqewqQweqewq', '1255747', '.png', 'uploads-prod/QweqewqQweqewqQweqewq3.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `ID_pedido` int(11) NOT NULL,
  `ID_userEnder` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `status_pedido` varchar(15) NOT NULL,
  `data_emissao` date NOT NULL,
  `data_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_prod`
--

CREATE TABLE `pedido_prod` (
  `ID_pedidoProd` int(11) NOT NULL,
  `ID_pedido` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `ID_prod` int(11) NOT NULL,
  `ID_categ` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `quantidade` int(5) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `ativo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`ID_prod`, `ID_categ`, `ID_usuario`, `quantidade`, `preco`, `nome`, `descricao`, `ativo`) VALUES
(6, 1, 1, 123, '123.00', 'Produto exemplo', 'color: #000;\r\n    font-size: 20pt;\r\n    text-align: center;\r\n    text-transform: uppercase;color: #000;\r\n    font-size: 20pt;\r\n    text-align: center;\r\n    text-transform: uppercase;color: #000;\r\n    font-size: 20pt;\r\n    text-align: center;\r\n    text-transform: uppercase;color: #000;\r\n    font-size: 20pt;\r\n    text-align: center;\r\n    text-transform: uppercase;', 1),
(7, 2, 1, 123, '123.00', 'qwe', '123', 1),
(8, 3, 1, 123, '123.00', 'q', 'QweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewq', 0),
(9, 4, 1, 123, '123.00', 'Qweqewq', 'QweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewq', 1),
(10, 5, 2, 123, '123.00', 'QweqewqQweqewqQweqewq', 'QweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewqQweqewq', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recibo`
--

CREATE TABLE `recibo` (
  `ID_recibo` int(11) NOT NULL,
  `ID_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_ender`
--

CREATE TABLE `user_ender` (
  `ID_userEnder` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_endereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `user_ender`
--

INSERT INTO `user_ender` (`ID_userEnder`, `ID_usuario`, `ID_endereco`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `ID_usuario` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `sobrenome` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `CPF` varchar(14) NOT NULL,
  `cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `nome`, `sobrenome`, `senha`, `email`, `CPF`, `cargo`) VALUES
(1, 'philip', 'viana', '$2y$10$9z3Js/gBqf/T96MECR4/zuY0RGJmJHM4VQOJk10TrdDEFLSo523RG', 'philipviana122@gmail.com', '54937283898', 2),
(2, '123', '123', '$2y$10$UscROqXNH3PjTCE8BgUFpO3PFVDfnF0jr9Y1SptRLhv0c2mNflI96', '123@123', '33056446805', 2);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anunciar`
--
ALTER TABLE `anunciar`
  ADD PRIMARY KEY (`ID_anunciar`),
  ADD KEY `FK_IDproduto_anunciar` (`ID_prod`),
  ADD KEY `FK_IDusuario_anunciar` (`ID_usuario`);

--
-- Índices para tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`ID_avaliacao`),
  ADD KEY `FK_IDusuario_avaliacao` (`ID_usuario`),
  ADD KEY `FK_IDproduto_avaliacao` (`ID_prod`);

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`ID_carco`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`ID_categ`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`ID_contato`),
  ADD KEY `FK_IDusuario_contato` (`ID_usuario`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`ID_endereco`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`ID_img`),
  ADD KEY `FK_IDuser` (`ID_user`);

--
-- Índices para tabela `imagens_prod`
--
ALTER TABLE `imagens_prod`
  ADD PRIMARY KEY (`ID_img`),
  ADD KEY `FK_IDimg_prod` (`ID_prod`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`ID_pedido`),
  ADD KEY `FK_ID_UserEnder_pedido` (`ID_userEnder`);

--
-- Índices para tabela `pedido_prod`
--
ALTER TABLE `pedido_prod`
  ADD PRIMARY KEY (`ID_pedidoProd`),
  ADD KEY `FK_IDpedido_produto` (`ID_pedido`),
  ADD KEY `FK_IDproduto_pedido` (`ID_prod`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`ID_prod`),
  ADD KEY `FK_IDcateg_prod` (`ID_categ`),
  ADD KEY `FK_IDusuario_prod` (`ID_usuario`);

--
-- Índices para tabela `recibo`
--
ALTER TABLE `recibo`
  ADD PRIMARY KEY (`ID_recibo`),
  ADD KEY `FK_IDpedido_recibo` (`ID_pedido`);

--
-- Índices para tabela `user_ender`
--
ALTER TABLE `user_ender`
  ADD PRIMARY KEY (`ID_userEnder`),
  ADD KEY `FK_IDusuario_ender` (`ID_usuario`),
  ADD KEY `FK_IDendereco_user` (`ID_endereco`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `anunciar`
--
ALTER TABLE `anunciar`
  MODIFY `ID_anunciar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `ID_avaliacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_carco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `ID_categ` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `ID_contato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `endereco`
--
ALTER TABLE `endereco`
  MODIFY `ID_endereco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `ID_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `imagens_prod`
--
ALTER TABLE `imagens_prod`
  MODIFY `ID_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `ID_pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pedido_prod`
--
ALTER TABLE `pedido_prod`
  MODIFY `ID_pedidoProd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `produto`
--
ALTER TABLE `produto`
  MODIFY `ID_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `recibo`
--
ALTER TABLE `recibo`
  MODIFY `ID_recibo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `user_ender`
--
ALTER TABLE `user_ender`
  MODIFY `ID_userEnder` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `anunciar`
--
ALTER TABLE `anunciar`
  ADD CONSTRAINT `FK_IDproduto_anunciar` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`),
  ADD CONSTRAINT `FK_IDusuario_anunciar` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `FK_IDproduto_avaliacao` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`),
  ADD CONSTRAINT `FK_IDusuario_avaliacao` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `FK_IDusuario_contato` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `imagens`
--
ALTER TABLE `imagens`
  ADD CONSTRAINT `FK_IDuser` FOREIGN KEY (`ID_user`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `imagens_prod`
--
ALTER TABLE `imagens_prod`
  ADD CONSTRAINT `FK_IDimg_prod` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `FK_ID_UserEnder_pedido` FOREIGN KEY (`ID_userEnder`) REFERENCES `user_ender` (`ID_userEnder`);

--
-- Limitadores para a tabela `pedido_prod`
--
ALTER TABLE `pedido_prod`
  ADD CONSTRAINT `FK_IDpedido_produto` FOREIGN KEY (`ID_pedido`) REFERENCES `pedido` (`ID_pedido`),
  ADD CONSTRAINT `FK_IDproduto_pedido` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `FK_IDcateg_prod` FOREIGN KEY (`ID_categ`) REFERENCES `categoria` (`ID_categ`),
  ADD CONSTRAINT `FK_IDusuario_prod` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `recibo`
--
ALTER TABLE `recibo`
  ADD CONSTRAINT `FK_IDpedido_recibo` FOREIGN KEY (`ID_pedido`) REFERENCES `pedido` (`ID_pedido`);

--
-- Limitadores para a tabela `user_ender`
--
ALTER TABLE `user_ender`
  ADD CONSTRAINT `FK_IDendereco_user` FOREIGN KEY (`ID_endereco`) REFERENCES `endereco` (`ID_endereco`),
  ADD CONSTRAINT `FK_IDusuario_ender` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
