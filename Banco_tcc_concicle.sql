-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 29-Nov-2023 às 02:42
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`ID_avaliacao`, `ID_usuario`, `ID_prod`, `data_av`, `hora_av`, `comentario`) VALUES
(1, 2, 4, '2023-11-28', '22:19:00', 'RF'),
(2, 2, 4, '2023-11-28', '22:19:13', 'w3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `ID_carco` int(11) NOT NULL,
  `cargo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`ID_carco`, `cargo`) VALUES
(1, 'usuario'),
(2, 'vendedor');

-- --------------------------------------------------------

--
-- Estrutura da tabela `carrinho_prod`
--

CREATE TABLE `carrinho_prod` (
  `ID_carrinho` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL,
  `qtd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `carrinho_prod`
--

INSERT INTO `carrinho_prod` (`ID_carrinho`, `ID_usuario`, `ID_prod`, `qtd`) VALUES
(13, 2, 4, 1),
(14, 2, 3, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `ID_categ` int(11) NOT NULL,
  `Nome_categ` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `DDD` varchar(2) DEFAULT NULL,
  `tel_celular` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`ID_contato`, `ID_usuario`, `tel_fixo`, `DDD`, `tel_celular`) VALUES
(2, 2, '', '11', '982652049');

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
  `num_casa` int(11) NOT NULL,
  `complemento` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`ID_endereco`, `CEP`, `UF`, `rua`, `bairro`, `cidade`, `num_casa`, `complemento`) VALUES
(2, '06602190', 'SP', 'Rua Odilon Correia Pires', 'Vila Eunice', 'Jandira', 94, 'N?A');

-- --------------------------------------------------------

--
-- Estrutura da tabela `favoritar`
--

CREATE TABLE `favoritar` (
  `ID_fav` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL,
  `fav_valor` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `favoritar`
--

INSERT INTO `favoritar` (`ID_fav`, `ID_prod`, `fav_valor`) VALUES
(3, 3, '2'),
(4, 4, '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fav_user`
--

CREATE TABLE `fav_user` (
  `ID_fav_user` int(11) NOT NULL,
  `ID_fav` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `ID_historico` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `estado` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`ID_historico`, `ID_usuario`, `ID_prod`, `qtd`, `estado`) VALUES
(28, 2, 4, 1, 'Pagamento em Avaliação'),
(29, 2, 3, 1, 'Pagamento em Avaliação');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`ID_img`, `ID_user`, `nome_imagem`, `tamanho_imagem`, `tipo_imagem`, `caminho_imagem`) VALUES
(2, 2, 'philip2', '909615', '.jpg', 'uploads/philip20.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `imagens_prod`
--

INSERT INTO `imagens_prod` (`ID_img`, `ID_prod`, `nome_imagem`, `tamanho_imagem`, `tipo_imagem`, `caminho_imagem`) VALUES
(3, 3, '123', '111649', 'jpeg', 'uploads-prod/1230jpeg'),
(4, 4, 'dsad', '37550', '.jpg', 'uploads-prod/dsad0.jpg'),
(5, 4, 'dsad', '449218', '.jpg', 'uploads-prod/dsad1.jpg'),
(6, 4, 'dsad', '12073489', '.png', 'uploads-prod/dsad2.png');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_prod`
--

CREATE TABLE `pedido_prod` (
  `ID_pedidoProd` int(11) NOT NULL,
  `ID_pedido` int(11) NOT NULL,
  `ID_prod` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `ID_prod` int(11) NOT NULL,
  `ID_categ` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preco` decimal(10,2) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `ativo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`ID_prod`, `ID_categ`, `ID_usuario`, `quantidade`, `preco`, `nome`, `descricao`, `ativo`) VALUES
(3, 3, 2, 123, 123.00, '123', '123', 1),
(4, 3, 2, 123, 123.00, 'dsad', 'asdasdsa', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `recibo`
--

CREATE TABLE `recibo` (
  `ID_recibo` int(11) NOT NULL,
  `ID_pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_ender`
--

CREATE TABLE `user_ender` (
  `ID_userEnder` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_endereco` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `user_ender`
--

INSERT INTO `user_ender` (`ID_userEnder`, `ID_usuario`, `ID_endereco`) VALUES
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `nome`, `sobrenome`, `senha`, `email`, `CPF`, `cargo`) VALUES
(2, 'philip', 'viana122', '$2y$10$M81.a5pWb.fuqF.VDxq8SOJ0/nQJKcDUkwP1IVWSVADq7NiRIfLcy', 'Philipviana122@gmail.com', '54937283898', 2);

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
-- Índices para tabela `carrinho_prod`
--
ALTER TABLE `carrinho_prod`
  ADD PRIMARY KEY (`ID_carrinho`),
  ADD KEY `FK_IDuser_carrinho` (`ID_usuario`),
  ADD KEY `FK_IDprod_carrinho` (`ID_prod`);

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
-- Índices para tabela `favoritar`
--
ALTER TABLE `favoritar`
  ADD PRIMARY KEY (`ID_fav`),
  ADD KEY `FK_IDproduto` (`ID_prod`);

--
-- Índices para tabela `fav_user`
--
ALTER TABLE `fav_user`
  ADD PRIMARY KEY (`ID_fav_user`),
  ADD KEY `FK_IDfavoritar` (`ID_fav`),
  ADD KEY `FK_IDusuario` (`ID_user`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`ID_historico`),
  ADD KEY `FK_IDuser_historico` (`ID_usuario`),
  ADD KEY `FK_IDprod_historico` (`ID_prod`);

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
  MODIFY `ID_avaliacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `ID_carco` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `carrinho_prod`
--
ALTER TABLE `carrinho_prod`
  MODIFY `ID_carrinho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT de tabela `favoritar`
--
ALTER TABLE `favoritar`
  MODIFY `ID_fav` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fav_user`
--
ALTER TABLE `fav_user`
  MODIFY `ID_fav_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `ID_historico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `ID_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `imagens_prod`
--
ALTER TABLE `imagens_prod`
  MODIFY `ID_img` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `ID_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
-- Limitadores para a tabela `carrinho_prod`
--
ALTER TABLE `carrinho_prod`
  ADD CONSTRAINT `FK_IDprod_carrinho` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`),
  ADD CONSTRAINT `FK_IDprod_historico` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`),
  ADD CONSTRAINT `FK_IDuser_carrinho` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`),
  ADD CONSTRAINT `FK_IDuser_historico` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `FK_IDusuario_contato` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `favoritar`
--
ALTER TABLE `favoritar`
  ADD CONSTRAINT `FK_IDfavoritar` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`);

--
-- Limitadores para a tabela `fav_user`
--
ALTER TABLE `fav_user`
  ADD CONSTRAINT `FK_IDfav_user` FOREIGN KEY (`ID_fav`) REFERENCES `favoritar` (`ID_fav`),
  ADD CONSTRAINT `FK_IDusuario_fav` FOREIGN KEY (`ID_user`) REFERENCES `usuario` (`ID_usuario`);

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `FK_IDhistorico_prod` FOREIGN KEY (`ID_prod`) REFERENCES `produto` (`ID_prod`),
  ADD CONSTRAINT `FK_IDhistorico_user` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

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
