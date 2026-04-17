-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.45 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.16.0.7229
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para db_sys_clinic
CREATE DATABASE IF NOT EXISTS `db_sys_clinic` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_sys_clinic`;

-- Copiando estrutura para tabela db_sys_clinic.tb_agendamentos
CREATE TABLE IF NOT EXISTS `tb_agendamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_medico` int NOT NULL,
  `data_agendamento` date NOT NULL,
  `hora_agendamento` time NOT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  `status_agendamento` varchar(20) DEFAULT 'Agendado',
  PRIMARY KEY (`id`),
  KEY `fk_agendamentos_clientes` (`id_cliente`),
  KEY `fk_agendamentos_medicos` (`id_medico`),
  CONSTRAINT `fk_agendamentos_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `tb_clientes` (`id_cliente`),
  CONSTRAINT `fk_agendamentos_medicos` FOREIGN KEY (`id_medico`) REFERENCES `tb_medicos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela db_sys_clinic.tb_agendamentos: ~51 rows (aproximadamente)
DELETE FROM `tb_agendamentos`;
INSERT INTO `tb_agendamentos` (`id`, `id_cliente`, `id_medico`, `data_agendamento`, `hora_agendamento`, `observacao`, `status_agendamento`) VALUES
	(1, 1, 1, '2026-04-20', '08:00:00', 'Consulta inicial', 'Agendado'),
	(2, 2, 1, '2026-04-20', '08:00:00', 'Consulta inicial', 'Agendado'),
	(3, 3, 2, '2026-04-20', '08:30:00', 'Retorno', 'Agendado'),
	(4, 4, 3, '2026-04-20', '09:00:00', 'Dor no peito', 'Agendado'),
	(5, 5, 4, '2026-04-20', '09:30:00', 'Exame de rotina', 'Agendado'),
	(6, 6, 5, '2026-04-20', '10:00:00', 'Dor de garganta', 'Agendado'),
	(7, 7, 1, '2026-04-21', '08:00:00', 'Dor abdominal', 'Agendado'),
	(8, 8, 2, '2026-04-21', '08:30:00', 'Dor no joelho', 'Agendado'),
	(9, 9, 3, '2026-04-21', '09:00:00', 'Check-up cardíaco', 'Agendado'),
	(10, 10, 4, '2026-04-21', '09:30:00', 'Consulta ginecológica', 'Agendado'),
	(11, 11, 5, '2026-04-21', '10:00:00', 'Sinusite', 'Agendado'),
	(12, 12, 1, '2026-04-22', '08:00:00', 'Gastrite', 'Agendado'),
	(13, 13, 2, '2026-04-22', '08:30:00', 'Dor lombar', 'Agendado'),
	(14, 14, 3, '2026-04-22', '09:00:00', 'Pressão alta', 'Agendado'),
	(15, 15, 4, '2026-04-22', '09:30:00', 'Preventivo', 'Agendado'),
	(16, 16, 5, '2026-04-22', '10:00:00', 'Otite', 'Agendado'),
	(17, 17, 1, '2026-04-23', '08:00:00', 'Refluxo', 'Agendado'),
	(18, 18, 2, '2026-04-23', '08:30:00', 'Lesão no braço', 'Agendado'),
	(19, 19, 3, '2026-04-23', '09:00:00', 'Palpitações', 'Agendado'),
	(20, 20, 4, '2026-04-23', '09:30:00', 'Retorno', 'Agendado'),
	(21, 21, 5, '2026-04-23', '10:00:00', 'Dor de ouvido', 'Agendado'),
	(22, 22, 1, '2026-04-24', '08:00:00', 'Consulta digestiva', 'Agendado'),
	(23, 23, 2, '2026-04-24', '08:30:00', 'Dor no ombro', 'Agendado'),
	(24, 24, 3, '2026-04-24', '09:00:00', 'Falta de ar', 'Agendado'),
	(25, 25, 4, '2026-04-24', '09:30:00', 'Rotina', 'Agendado'),
	(26, 26, 5, '2026-04-24', '10:00:00', 'Rouquidão', 'Agendado'),
	(27, 27, 1, '2026-04-25', '08:00:00', 'Problemas gástricos', 'Agendado'),
	(28, 28, 2, '2026-04-25', '08:30:00', 'Dor no punho', 'Agendado'),
	(29, 29, 3, '2026-04-25', '09:00:00', 'Dor torácica leve', 'Agendado'),
	(30, 30, 4, '2026-04-25', '09:30:00', 'Consulta anual', 'Agendado'),
	(31, 31, 5, '2026-04-25', '10:00:00', 'Inflamação garganta', 'Agendado'),
	(32, 32, 1, '2026-04-26', '08:00:00', 'Azia', 'Agendado'),
	(33, 33, 2, '2026-04-26', '08:30:00', 'Dor no tornozelo', 'Agendado'),
	(34, 34, 3, '2026-04-26', '09:00:00', 'Arritmia', 'Agendado'),
	(35, 35, 4, '2026-04-26', '09:30:00', 'Exame preventivo', 'Agendado'),
	(36, 36, 5, '2026-04-26', '10:00:00', 'Ouvido inflamado', 'Agendado'),
	(37, 37, 1, '2026-04-27', '08:00:00', 'Refluxo leve', 'Agendado'),
	(38, 38, 2, '2026-04-27', '08:30:00', 'Dor na coluna', 'Agendado'),
	(39, 39, 3, '2026-04-27', '09:00:00', 'Pressão alta', 'Agendado'),
	(40, 40, 4, '2026-04-27', '09:30:00', 'Retorno exames', 'Agendado'),
	(41, 41, 5, '2026-04-27', '10:00:00', 'Rinite', 'Agendado'),
	(42, 42, 1, '2026-04-28', '08:00:00', 'Consulta estomacal', 'Agendado'),
	(43, 43, 2, '2026-04-28', '08:30:00', 'Lesão muscular', 'Agendado'),
	(44, 44, 3, '2026-04-28', '09:00:00', 'Check-up coração', 'Agendado'),
	(45, 45, 4, '2026-04-28', '09:30:00', 'Consulta ginecológica', 'Agendado'),
	(46, 46, 5, '2026-04-28', '10:00:00', 'Sinusite', 'Agendado'),
	(47, 47, 1, '2026-04-29', '08:00:00', 'Dor abdominal', 'Agendado'),
	(48, 48, 2, '2026-04-29', '08:30:00', 'Dor no joelho', 'Agendado'),
	(49, 49, 3, '2026-04-29', '09:00:00', 'Palpitações', 'Agendado'),
	(50, 50, 4, '2026-04-29', '09:30:00', 'Preventivo', 'Agendado'),
	(51, 51, 5, '2026-04-29', '10:00:00', 'Otite', 'Agendado');

-- Copiando estrutura para tabela db_sys_clinic.tb_clientes
CREATE TABLE IF NOT EXISTS `tb_clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `inativo` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela db_sys_clinic.tb_clientes: ~100 rows (aproximadamente)
DELETE FROM `tb_clientes`;
INSERT INTO `tb_clientes` (`id_cliente`, `nome`, `telefone`, `email`, `inativo`) VALUES
	(1, 'Lucas Rafael', '83999990001', 'lucas.rafael@gmail.com', 0),
	(2, 'Maria Silva', '83999990002', 'maria.silva@gmail.com', 0),
	(3, 'João Santos', '83999990003', 'joao.santos@gmail.com', 0),
	(4, 'Ana Souza', '83999990004', 'ana.souza@gmail.com', 0),
	(5, 'Pedro Oliveira', '83999990005', 'pedro.oliveira@gmail.com', 0),
	(6, 'Fernanda Costa', '83999990006', 'fernanda.costa@gmail.com', 0),
	(7, 'Carlos Pereira', '83999990007', 'carlos.pereira@gmail.com', 0),
	(8, 'Juliana Alves', '83999990008', 'juliana.alves@gmail.com', 0),
	(9, 'Bruno Lima', '83999990009', 'bruno.lima@gmail.com', 0),
	(10, 'Camila Rocha', '83999990010', 'camila.rocha@gmail.com', 0),
	(11, 'Rafael Mendes', '83999990011', 'rafael.mendes@gmail.com', 0),
	(12, 'Patrícia Gomes', '83999990012', 'patricia.gomes@gmail.com', 0),
	(13, 'André Martins', '83999990013', 'andre.martins@gmail.com', 0),
	(14, 'Beatriz Fernandes', '83999990014', 'beatriz.fernandes@gmail.com', 0),
	(15, 'Gustavo Ribeiro', '83999990015', 'gustavo.ribeiro@gmail.com', 0),
	(16, 'Larissa Teixeira', '83999990016', 'larissa.teixeira@gmail.com', 0),
	(17, 'Diego Carvalho', '83999990017', 'diego.carvalho@gmail.com', 0),
	(18, 'Aline Barbosa', '83999990018', 'aline.barbosa@gmail.com', 0),
	(19, 'Rodrigo Nunes', '83999990019', 'rodrigo.nunes@gmail.com', 0),
	(20, 'Tatiane Freitas', '83999990020', 'tatiane.freitas@gmail.com', 0),
	(21, 'Eduardo Batista', '83999990021', 'eduardo.batista@gmail.com', 0),
	(22, 'Vanessa Cardoso', '83999990022', 'vanessa.cardoso@gmail.com', 0),
	(23, 'Leonardo Araujo', '83999990023', 'leonardo.araujo@gmail.com', 0),
	(24, 'Carolina Pires', '83999990024', 'carolina.pires@gmail.com', 0),
	(25, 'Marcelo Duarte', '83999990025', 'marcelo.duarte@gmail.com', 0),
	(26, 'Renata Melo', '83999990026', 'renata.melo@gmail.com', 0),
	(27, 'Paulo Henrique', '83999990027', 'paulo.henrique@gmail.com', 0),
	(28, 'Simone Castro', '83999990028', 'simone.castro@gmail.com', 0),
	(29, 'Felipe Moraes', '83999990029', 'felipe.moraes@gmail.com', 0),
	(30, 'Débora Farias', '83999990030', 'debora.farias@gmail.com', 0),
	(31, 'Adriano Lopes', '83999990031', 'adriano.lopes@gmail.com', 0),
	(32, 'Bianca Torres', '83999990032', 'bianca.torres@gmail.com', 0),
	(33, 'César Monteiro', '83999990033', 'cesar.monteiro@gmail.com', 0),
	(34, 'Daniela Ramos', '83999990034', 'daniela.ramos@gmail.com', 0),
	(35, 'Elton Vieira', '83999990035', 'elton.vieira@gmail.com', 0),
	(36, 'Fabiana Duarte', '83999990036', 'fabiana.duarte@gmail.com', 0),
	(37, 'Gilberto Neves', '83999990037', 'gilberto.neves@gmail.com', 0),
	(38, 'Helena Braga', '83999990038', 'helena.braga@gmail.com', 0),
	(39, 'Igor Pacheco', '83999990039', 'igor.pacheco@gmail.com', 0),
	(40, 'Jéssica Andrade', '83999990040', 'jessica.andrade@gmail.com', 0),
	(41, 'Kleber Matos', '83999990041', 'kleber.matos@gmail.com', 0),
	(42, 'Lívia Peixoto', '83999990042', 'livia.peixoto@gmail.com', 0),
	(43, 'Márcio Tavares', '83999990043', 'marcio.tavares@gmail.com', 0),
	(44, 'Natália Coelho', '83999990044', 'natalia.coelho@gmail.com', 0),
	(45, 'Otávio Barros', '83999990045', 'otavio.barros@gmail.com', 0),
	(46, 'Priscila Nogueira', '83999990046', 'priscila.nogueira@gmail.com', 0),
	(47, 'Ricardo Falcão', '83999990047', 'ricardo.falcao@gmail.com', 0),
	(48, 'Sabrina Queiroz', '83999990048', 'sabrina.queiroz@gmail.com', 0),
	(49, 'Thiago Cunha', '83999990049', 'thiago.cunha@gmail.com', 0),
	(50, 'Ursula Dantas', '83999990050', 'ursula.dantas@gmail.com', 0),
	(51, 'Valter Rezende', '83999990051', 'valter.rezende@gmail.com', 0),
	(52, 'Wagner Azevedo', '83999990052', 'wagner.azevedo@gmail.com', 0),
	(53, 'Xavier Brito', '83999990053', 'xavier.brito@gmail.com', 0),
	(54, 'Yara Sales', '83999990054', 'yara.sales@gmail.com', 0),
	(55, 'Zilda Moura', '83999990055', 'zilda.moura@gmail.com', 0),
	(56, 'Alessandro Pinto', '83999990056', 'alessandro.pinto@gmail.com', 0),
	(57, 'Brenda Lacerda', '83999990057', 'brenda.lacerda@gmail.com', 0),
	(58, 'Caio Antunes', '83999990058', 'caio.antunes@gmail.com', 0),
	(59, 'Débora Quezada', '83999990059', 'debora.quezada@gmail.com', 0),
	(60, 'Everton Freire', '83999990060', 'everton.freire@gmail.com', 0),
	(61, 'Flávia Pimenta', '83999990061', 'flavia.pimenta@gmail.com', 0),
	(62, 'Gustavo Lemos', '83999990062', 'gustavo.lemos@gmail.com', 0),
	(63, 'Hugo Batista', '83999990063', 'hugo.batista@gmail.com', 0),
	(64, 'Isabela Nascimento', '83999990064', 'isabela.nascimento@gmail.com', 0),
	(65, 'Jonas Medeiros', '83999990065', 'jonas.medeiros@gmail.com', 0),
	(66, 'Karen Dias', '83999990066', 'karen.dias@gmail.com', 0),
	(67, 'Leandro Furtado', '83999990067', 'leandro.furtado@gmail.com', 0),
	(68, 'Mirela Borges', '83999990068', 'mirela.borges@gmail.com', 0),
	(69, 'Nicolas Teodoro', '83999990069', 'nicolas.teodoro@gmail.com', 0),
	(70, 'Olívia Guimarães', '83999990070', 'olivia.guimaraes@gmail.com', 0),
	(71, 'Paula Esteves', '83999990071', 'paula.esteves@gmail.com', 0),
	(72, 'Quésia Barbalho', '83999990072', 'quesia.barbalho@gmail.com', 0),
	(73, 'Ruan Macedo', '83999990073', 'ruan.macedo@gmail.com', 0),
	(74, 'Sérgio Amaral', '83999990074', 'sergio.amaral@gmail.com', 0),
	(75, 'Tamires Veloso', '83999990075', 'tamires.veloso@gmail.com', 0),
	(76, 'Ulisses Paiva', '83999990076', 'ulisses.paiva@gmail.com', 0),
	(77, 'Vânia Souto', '83999990077', 'vania.souto@gmail.com', 0),
	(78, 'Willian Pires', '83999990078', 'willian.pires@gmail.com', 0),
	(79, 'Ximena Rocha', '83999990079', 'ximena.rocha@gmail.com', 0),
	(80, 'Yuri Valença', '83999990080', 'yuri.valenca@gmail.com', 0),
	(81, 'Zaqueu Correia', '83999990081', 'zaqueu.correia@gmail.com', 0),
	(82, 'Amanda Guedes', '83999990082', 'amanda.guedes@gmail.com', 0),
	(83, 'Bruno Queiroga', '83999990083', 'bruno.queiroga@gmail.com', 0),
	(84, 'Clara Montenegro', '83999990084', 'clara.montenegro@gmail.com', 0),
	(85, 'Diego Paes', '83999990085', 'diego.paes@gmail.com', 0),
	(86, 'Eduarda Teles', '83999990086', 'eduarda.teles@gmail.com', 0),
	(87, 'Fábio Holanda', '83999990087', 'fabio.holanda@gmail.com', 0),
	(88, 'Gabriela Mota', '83999990088', 'gabriela.mota@gmail.com', 0),
	(89, 'Henrique Queiroz', '83999990089', 'henrique.queiroz@gmail.com', 0),
	(90, 'Iasmim Farias', '83999990090', 'iasmim.farias@gmail.com', 0),
	(91, 'João Victor Melo', '83999990091', 'joao.victor.melo@gmail.com', 0),
	(92, 'Karolline Batista', '83999990092', 'karolline.batista@gmail.com', 0),
	(93, 'Luiz Fernando', '83999990093', 'luiz.fernando@gmail.com', 0),
	(94, 'Matheus Araújo', '83999990094', 'matheus.araujo@gmail.com', 0),
	(95, 'Nayara Silva', '83999990095', 'nayara.silva@gmail.com', 0),
	(96, 'Osvaldo Rocha', '83999990096', 'osvaldo.rocha@gmail.com', 0),
	(97, 'Pâmela Duarte', '83999990097', 'pamela.duarte@gmail.com', 0),
	(98, 'Rayssa Costa', '83999990098', 'rayssa.costa@gmail.com', 0),
	(99, 'Samuel Nóbrega', '83999990099', 'samuel.nobrega@gmail.com', 0),
	(100, 'Talita Freire', '83999990100', 'talita.freire@gmail.com', 0);

-- Copiando estrutura para tabela db_sys_clinic.tb_medicos
CREATE TABLE IF NOT EXISTS `tb_medicos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `crm` varchar(20) DEFAULT NULL,
  `especialidade` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Copiando dados para a tabela db_sys_clinic.tb_medicos: ~15 rows (aproximadamente)
DELETE FROM `tb_medicos`;
INSERT INTO `tb_medicos` (`id`, `nome`, `telefone`, `crm`, `especialidade`) VALUES
	(1, 'Dr. João Almeida', '83988881001', 'CRM2001', 'Gastroenterologia'),
	(2, 'Dra. Maria Fernandes', '83988881002', 'CRM2002', 'Ortopedia'),
	(3, 'Dr. Carlos Henrique', '83988881003', 'CRM2003', 'Cardiologia'),
	(4, 'Dra. Ana Paula', '83988881004', 'CRM2004', 'Ginecologia'),
	(5, 'Dr. Pedro Gomes', '83988881005', 'CRM2005', 'Otorrinolaringologia'),
	(6, 'Dra. Fernanda Lima', '83988881006', 'CRM2006', 'Gastroenterologia'),
	(7, 'Dr. Bruno Costa', '83988881007', 'CRM2007', 'Ortopedia'),
	(8, 'Dra. Juliana Alves', '83988881008', 'CRM2008', 'Cardiologia'),
	(9, 'Dr. Rafael Mendes', '83988881009', 'CRM2009', 'Ginecologia'),
	(10, 'Dra. Camila Rocha', '83988881010', 'CRM2010', 'Otorrinolaringologia'),
	(11, 'Dr. Gustavo Ribeiro', '83988881011', 'CRM2011', 'Gastroenterologia'),
	(12, 'Dra. Patrícia Gomes', '83988881012', 'CRM2012', 'Ortopedia'),
	(13, 'Dr. André Martins', '83988881013', 'CRM2013', 'Cardiologia'),
	(14, 'Dra. Beatriz Fernandes', '83988881014', 'CRM2014', 'Ginecologia'),
	(15, 'Dr. Diego Carvalho', '83988881015', 'CRM2015', 'Otorrinolaringologia');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
