-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 03-Out-2018 às 14:30
-- Versão do servidor: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php01`
--
CREATE DATABASE IF NOT EXISTS `php01` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `php01`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `postagem`
--

CREATE TABLE IF NOT EXISTS `postagem` (
  `id_postagem` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `texto_postagem` varchar(140) NOT NULL,
  `data_inclusao` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_postagem`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `postagem`
--

INSERT INTO `postagem` (`id_postagem`, `id_usuario`, `texto_postagem`, `data_inclusao`) VALUES
(5, 1, 'iae gente!', '2017-09-26 07:33:34'),
(6, 2, 'oi gente!!', '2017-09-26 08:33:03'),
(7, 3, 'olá!', '2017-09-26 08:33:21'),
(8, 1, 'Olá gente!\r\n', '2017-10-19 11:23:07'),
(14, 2, 'oii!!\r\n', '2017-10-24 07:50:58'),
(15, 1, 'asd', '2017-10-27 10:20:15'),
(16, 5, 'eu sou feia', '2017-10-27 10:20:49'),
(17, 9, 'oiii', '2018-08-30 17:18:28'),
(18, 9, 'eeeeeeri', '2018-08-30 17:18:37'),
(19, 9, 'oii\r\n', '2018-10-02 10:45:18'),
(20, 9, 'oiiiiii', '2018-10-02 16:21:23'),
(21, 9, 'oi', '2018-10-02 16:25:06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `codigo` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(32) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`codigo`, `usuario`, `email`, `senha`) VALUES
(1, 'Flora Caires', 'f@f', '202cb962ac59075b964b07152d234b70'),
(2, 'Melissa', 'm@m', '202cb962ac59075b964b07152d234b70'),
(3, 'Pedro', 'l@l', '202cb962ac59075b964b07152d234b70'),
(4, 'root', 'u@u', 'root'),
(5, 'Micaelle ', 'm@a', '202cb962ac59075b964b07152d234b70'),
(6, 'henrique', 'h@e', '202cb962ac59075b964b07152d234b70'),
(7, 'teste01', 't01@t01', '8626084f8f75b0a8cb3f6e4b2f0ad743'),
(8, 'Karla Geovana', 'a@123.com', '5fcd162c2418ef549b7b912976468942'),
(9, 'Karlinha', 'k@K', 'c4ca4238a0b923820dcc509a6f75849b');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_seguidores`
--

CREATE TABLE IF NOT EXISTS `usuarios_seguidores` (
  `id_usuario_seguidor` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `seguindo_id_usuario` int(11) DEFAULT NULL,
  `data_registro` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_usuario_seguidor`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios_seguidores`
--

INSERT INTO `usuarios_seguidores` (`id_usuario_seguidor`, `id_usuario`, `seguindo_id_usuario`, `data_registro`) VALUES
(1, 9, 8, '2018-10-02 10:01:30'),
(2, 9, 1, '2018-10-02 10:11:21');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
