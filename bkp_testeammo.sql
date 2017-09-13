-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.19-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para ammovarejo
CREATE DATABASE IF NOT EXISTS `ammovarejo` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ammovarejo`;

-- Copiando estrutura para tabela ammovarejo.produto
CREATE TABLE IF NOT EXISTS `produto` (
  `idProduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `descricao` varchar(200) DEFAULT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `tamanho` varchar(30) DEFAULT NULL,
  `preco` decimal(10,2) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  `dtCriacao` datetime DEFAULT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ammovarejo.produto: ~2 rows (aproximadamente)
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` (`idProduto`, `nome`, `descricao`, `tipo`, `tamanho`, `preco`, `desconto`, `dtCriacao`) VALUES
	(1, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(2, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(3, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:14'),
	(4, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(5, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(6, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(7, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(8, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(9, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(10, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(11, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Solteiro Extra', 298.00, 15.00, '2017-09-13 15:25:09'),
	(12, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(13, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(14, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(15, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(16, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(17, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(18, 'Lençol', 'Kit Cama 210 fios', 'Classic', 'Casal Extra', 350.50, 25.00, '2017-09-13 15:25:58'),
	(19, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:17'),
	(20, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:19'),
	(21, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:22'),
	(22, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:23'),
	(23, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:24'),
	(24, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:25'),
	(25, 'Toalha', 'Kit Toalhas', 'Classic', 'Adulto', 79.90, 0.00, '2017-09-13 16:59:26');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;

-- Copiando estrutura para tabela ammovarejo.produto_foto
CREATE TABLE IF NOT EXISTS `produto_foto` (
  `idProdutoFK` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  KEY `idProduto` (`idProdutoFK`),
  CONSTRAINT `FK__produto` FOREIGN KEY (`idProdutoFK`) REFERENCES `produto` (`idProduto`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Copiando dados para a tabela ammovarejo.produto_foto: ~8 rows (aproximadamente)
/*!40000 ALTER TABLE `produto_foto` DISABLE KEYS */;
INSERT INTO `produto_foto` (`idProdutoFK`, `foto`) VALUES
	(1, '1'),
	(1, '2'),
	(1, '3'),
	(1, '4'),
	(2, '1'),
	(2, '2'),
	(2, '3'),
	(2, '4'),
	(3, '1'),
	(3, '2'),
	(4, '1'),
	(5, '1'),
	(6, '1'),
	(7, '1'),
	(8, '1'),
	(9, '1'),
	(10, '1'),
	(11, '1'),
	(12, '1'),
	(13, '1'),
	(14, '1'),
	(15, '1'),
	(16, '1'),
	(17, '1'),
	(18, '1'),
	(4, '2'),
	(5, '2'),
	(6, '2'),
	(7, '2'),
	(8, '2'),
	(9, '2'),
	(10, '2'),
	(11, '2'),
	(12, '2'),
	(13, '2'),
	(14, '2'),
	(15, '2'),
	(16, '2'),
	(17, '2'),
	(18, '2'),
	(4, '3'),
	(5, '3'),
	(6, '3'),
	(7, '3'),
	(8, '3'),
	(9, '3'),
	(10, '3'),
	(11, '3'),
	(12, '3'),
	(13, '3'),
	(14, '3'),
	(15, '3'),
	(16, '3'),
	(17, '3'),
	(18, '3'),
	(4, '4'),
	(5, '4'),
	(6, '4'),
	(7, '4'),
	(8, '4'),
	(9, '4'),
	(10, '4'),
	(11, '4'),
	(12, '4'),
	(13, '4'),
	(14, '4'),
	(15, '4'),
	(16, '4'),
	(17, '4'),
	(18, '4'),
	(19, '1'),
	(19, '2'),
	(20, '1'),
	(20, '2'),
	(21, '1'),
	(21, '2'),
	(22, '1'),
	(22, '2'),
	(23, '1'),
	(23, '2'),
	(24, '1'),
	(24, '2'),
	(25, '1'),
	(25, '2');
/*!40000 ALTER TABLE `produto_foto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
