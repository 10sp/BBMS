-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 17, 2019 at 01:26 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank_hosp`
--

DROP TABLE IF EXISTS `bank_hosp`;
CREATE TABLE IF NOT EXISTS `bank_hosp` (
  `Bb_Id` int(10) NOT NULL,
  `Hid` int(10) NOT NULL,
  KEY `Bb_Id` (`Bb_Id`),
  KEY `Hid` (`Hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

DROP TABLE IF EXISTS `bank_info`;
CREATE TABLE IF NOT EXISTS `bank_info` (
  `Bb_Id` int(10) NOT NULL,
  `Blood_Id` int(10) NOT NULL,
  `Blood_Grp` varchar(15) NOT NULL,
  `Quantity` int(9) NOT NULL,
  KEY `Bb_Id` (`Bb_Id`),
  KEY `Blood_Id` (`Blood_Id`,`Blood_Grp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

DROP TABLE IF EXISTS `blood`;
CREATE TABLE IF NOT EXISTS `blood` (
  `Blood-Id` int(10) NOT NULL AUTO_INCREMENT,
  `Blood_Grp` varchar(15) NOT NULL,
  PRIMARY KEY (`Blood-Id`,`Blood_Grp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

DROP TABLE IF EXISTS `blood_bank`;
CREATE TABLE IF NOT EXISTS `blood_bank` (
  `Bb_Id` int(10) NOT NULL AUTO_INCREMENT,
  `Bb_Name` varchar(500) NOT NULL,
  `Bb_Address` varchar(500) NOT NULL,
  `Bb_Phone` bigint(100) NOT NULL,
  PRIMARY KEY (`Bb_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`Bb_Id`, `Bb_Name`, `Bb_Address`, `Bb_Phone`) VALUES
(33, 'LifeSouth Community Blood Center	', '1007 1st Street North	Alabaster', 5874635007),
(34, 'Lifesouth	', '7419 US Highway 431	Albertville', 5874635950),
(35, 'Lifesouth Community Blood Center	', '8612 US Highway 431	Albertville	', 5874635951),
(36, 'LifeSouth Community Blood Centers-East Alabama Region	', '1914 Opelika Road	Auburn', 5874636830),
(37, 'Alabama Plasma Care Inc	', '2101 3rd Ave S	Birmingham	', 5874635234),
(38, 'American Red Cross Caldwell Trace Donor Center	', '700 Caldwell Trace	Birmingham', 5874635242),
(39, 'Biological Life Plasma Service	', '2197 Parkway Lake Drive	Birmingham', 5874635244),
(40, 'Civitan Regional Blood System	', '396 W Oxmoor Road	Birmingham', 5874635201),
(41, 'IBR Plasma Center	', '222 Gadsden Highway	Birmingham', 5874635233),
(42, 'IBR Plasma Center	', '222 Gadsden Hwy - Roebuck Plaza	Birmingham', 5874635235),
(43, 'LifeSouth Community Blood Center	', '50 Medical Park Drive East	Birmingham', 5874635235),
(44, 'LifeSouth Community Blood Center	', '2010 Brookwood Medical Centre Drive	Birmingham	', 5874635202),
(45, 'Lifesouth Community Blood Center - Birmingham Region	', '396 W Oxmoor Rd	Birmingham', 5874635203),
(46, 'Sera-Tech Biologicals Plasma', '1620 3rd Ave N	Birmingham	', 5874635203),
(47, 'Southern Blood Service Inc', '3800 Colonnade Pkwy	Birmingham', 5874635243),
(48, 'Shelby County School District', '410 E College St	Columbiana', 5874635051);

-- --------------------------------------------------------

--
-- Table structure for table `blood_donation`
--

DROP TABLE IF EXISTS `blood_donation`;
CREATE TABLE IF NOT EXISTS `blood_donation` (
  `Bb_Id` int(10) NOT NULL,
  `Did` int(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Eligibility` tinyint(1) NOT NULL,
  `Blood_Group` varchar(15) DEFAULT NULL,
  `Quantity` int(9) DEFAULT NULL,
  `Don_Date` timestamp NULL DEFAULT NULL,
  KEY `Bb_Id` (`Bb_Id`),
  KEY `Did` (`Did`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

DROP TABLE IF EXISTS `donor`;
CREATE TABLE IF NOT EXISTS `donor` (
  `Did` int(10) NOT NULL AUTO_INCREMENT,
  `Dname` varchar(500) NOT NULL,
  `Address` varchar(500) NOT NULL,
  `Gender` varchar(11) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Dob` date NOT NULL,
  `Age` int(3) NOT NULL,
  `Blood_Group` varchar(15) NOT NULL,
  `Last_Don_Blood` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Did`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`Did`, `Dname`, `Address`, `Gender`, `Phone`, `Dob`, `Age`, `Blood_Group`, `Last_Don_Blood`) VALUES
(1, 'Frank	Jeffers', 'Rua Luiz Augusto de Souza 722 Pirassununga São Paulo Brazil', 'male', 1977732882, '1996-04-10', 23, 'B+', '2018-11-09 18:30:00'),
(2, 'Robert	Smith', 'Rua Arlindo Souza Monteiro 58 Uberlândia Minas Gerais Brazil', 'male', 3489047866, '0000-00-00', 36, 'A+', '2018-01-03 18:30:00'),
(3, 'Larry	Conroy', 'Rua 57 855 Manaus Amazonas Brazil', 'male', 9287227603, '1985-07-11', 34, 'O-', '2018-03-31 18:30:00'),
(4, 'Linda	Treat', 'Rua Pedro Mascagni 1924 Itatiba São Paulo Brazil', 'female', 1168013957, '1995-12-04', 24, 'AB+', '2018-04-30 18:30:00'),
(5, 'Mary	Grant', 'Quadra QS 429 Bloco G 1972 Samambaia Distrito Federal Brazil', 'female', 6145125371, '0000-00-00', 22, 'B+', '2018-09-23 18:30:00'),
(6, 'Nadine	Case', 'Rua Laurinda Marques 1395 Carapicuíba São Paulo Brazil', 'female', 1130949671, '2000-01-01', 19, 'AB+', '2018-03-18 18:30:00'),
(7, 'Thomas	Swann', 'Travessa Canastra 1871 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2198619718, '1995-05-12', 23, 'B+', '2018-01-17 18:30:00'),
(8, 'Richard	Town', 'Rua Aibu 1323 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2143004382, '0000-00-00', 35, 'AB-', '2018-12-28 18:30:00'),
(9, 'Willie	Palmer', 'Rua Nossa Senhora da Conceição 634 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2131519735, '0000-00-00', 37, 'B+', '2018-03-10 18:30:00'),
(10, 'Edith	Henson', 'Rua Seis 517 Belo Horizonte Minas Gerais Brazil', 'female', 3175802265, '1979-07-04', 40, 'B+', '2018-07-02 18:30:00'),
(11, 'Rita	Lamberton', 'Rua Niterói 695 Carapicuíba São Paulo Brazil', 'female', 1192686102, '0000-00-00', 32, 'A-', '2018-05-20 18:30:00'),
(12, 'Eugene	Rodriguez', 'Rua José Chimenti 1636 São Paulo São Paulo Brazil', 'male', 1160638879, '0000-00-00', 38, 'B+', '2018-08-10 18:30:00'),
(13, 'Robert	Reilly', 'Rua Serra dos Pirineus 1593 Recife Pernambuco Brazil', 'male', 8160554727, '1987-02-07', 32, 'A+', '2018-09-13 18:30:00'),
(14, 'Matthew	Steffey', 'Rua Três Coroas 1294 São Paulo São Paulo Brazil', 'male', 1127035434, '0000-00-00', 36, 'O+', '2018-09-17 18:30:00'),
(15, 'James	Ross', 'Rua Dolores de Castilho 1543 Jandira São Paulo Brazil', 'male', 1179105753, '0000-00-00', 32, 'AB+', '2018-08-29 18:30:00'),
(16, 'Leslie	Johnson', 'Praça Constelação 1033 Goiânia Goiás Brazil', 'female', 6229478066, '0000-00-00', 34, 'B+', '2018-09-05 18:30:00'),
(17, 'Robert	Dillard', 'Rua Inhotim 1545 Betim Minas Gerais Brazil', 'male', 3188385786, '0000-00-00', 22, 'AB+', '2018-03-12 18:30:00'),
(18, 'Jennifer	Hoban', 'Rua João Alves Carneiro 850 Recife Pernambuco Brazil', 'female', 8198303555, '0000-00-00', 37, 'B+', '2018-11-29 18:30:00'),
(19, 'Cameron	Snell', 'Estrada Municipal 1281 Jundiaí São Paulo Brazil', 'male', 1128668647, '0000-00-00', 38, 'B+', '2017-12-31 18:30:00'),
(20, 'Philip	Williams', 'Rua da Liberdade 496 Petrolina Pernambuco Brazil', 'male', 8783584519, '1986-06-05', 33, 'B-', '2018-06-08 18:30:00'),
(21, 'Leon	Russell', 'Rua Castelo dos Mouros 1218 São Paulo São Paulo Brazil', 'male', 1129012263, '1982-11-02', 37, 'O+', '2018-07-11 18:30:00'),
(22, 'Judith	Smith', 'Rua Ananias Virginio de Lucena 1841 João Pessoa Paraíba Brazil', 'female', 8352904977, '0000-00-00', 31, 'O+', '2018-04-09 18:30:00'),
(23, 'Mary	Flowers', 'Rua Vicente Celestino 1685 João Pessoa Paraíba Brazil', 'female', 8328026323, '1996-02-08', 23, 'O-', '2018-11-14 18:30:00'),
(24, 'Christopher	Hotchkiss', 'Rua Afonso Furtado 1853 Votorantim São Paulo Brazil', 'male', 1579686059, '0000-00-00', 40, 'O+', '2018-07-14 18:30:00'),
(25, 'Kim	Smith', 'Rua Júlio Ribeiro 434 Colombo Paraná Brazil', 'male', 4126962085, '0000-00-00', 23, 'O+', '2018-08-05 18:30:00'),
(26, 'Maria	Cover', 'Quadra Trinta 788 Marabá Pará Brazil', 'female', 9479347410, '1986-04-11', 33, 'B+', '2018-11-03 18:30:00'),
(27, 'Susan	Moore', 'Rua Primavera 1848 Itu São Paulo Brazil', 'female', 1194067691, '0000-00-00', 35, 'B+', '2018-12-13 18:30:00'),
(28, 'Josephine	Parker', 'Rua Bertolino Antônio Machado 264 Tubarão Santa Catarina Brazil', 'female', 4886902221, '0000-00-00', 25, 'O+', '2018-10-10 18:30:00'),
(29, 'James	Trogdon', 'Rua Brilhante 1805 Duque de Caxias Rio de Janeiro Brazil', 'male', 2193669070, '1998-02-08', 21, 'B-', '2018-08-15 18:30:00'),
(30, 'John	Navarro', 'Rua Francisco D\'Áurea 767 Campinas São Paulo Brazil', 'male', 1961677026, '0000-00-00', 19, 'A+', '2018-07-24 18:30:00'),
(31, 'Kyle	Maier', 'Beco Santa Terezinha 492 Manaus Amazonas Brazil', 'male', 9232996427, '0000-00-00', 28, 'O+', '2018-02-21 18:30:00'),
(32, 'Edward	Clark', 'Rua José Sebastião da Silva 1686 Campina Grande Paraíba Brazil', 'male', 8347245938, '0000-00-00', 35, 'AB+', '2018-11-21 18:30:00'),
(33, 'Wallace	Johnson', 'Rua Saldanha Marinho 1321 Cotia São Paulo Brazil', 'male', 1157583947, '0000-00-00', 22, 'O+', '2018-08-19 18:30:00'),
(34, 'Jack	Nash', 'Rua São Benedito 1326 Cariacica Espírito Santo Brazil', 'male', 2788055906, '1986-04-04', 33, 'O+', '2018-06-30 18:30:00'),
(35, 'Howard	Robbins', 'Alameda Porto Alegre 1232 Aparecida de Goiânia Goiás Brazil', 'male', 6255765637, '0000-00-00', 35, 'O+', '2018-02-27 18:30:00'),
(36, 'Frank	Coffee', 'Rua Calondela 658 Piraquara Paraná Brazil', 'male', 4161544189, '1997-08-09', 22, 'AB+', '2018-11-05 18:30:00'),
(37, 'Marilyn	Bradshaw', 'Rua Itapecerica 1399 Pará de Minas Minas Gerais Brazil', 'female', 3755248281, '0000-00-00', 23, 'O+', '2017-12-31 18:30:00'),
(38, 'Michael	Emmons', 'Avenida José Chaluppe 198 Itapevi São Paulo Brazil', 'male', 1187295358, '0000-00-00', 26, 'A+', '2018-02-27 18:30:00'),
(39, 'Maria	Mason', 'Avenida Rio das Velhas 1130 Betim Minas Gerais Brazil', 'female', 3167069552, '0000-00-00', 19, 'A+', '2018-02-10 18:30:00'),
(40, 'David	Rodriguez', 'Rua Aureliano Mourão 83 São João Del Rei Minas Gerais Brazil', 'male', 3293492419, '1981-10-09', 38, 'A+', '2018-09-06 18:30:00'),
(41, 'Mary	Sanders', 'Rua São Sebastião 1147 Itabuna Bahia Brazil', 'female', 7353369132, '1994-10-08', 25, 'AB+', '2018-01-10 18:30:00'),
(42, 'Peggy	Espinoza', 'Travessa F 1101 Belém Pará Brazil', 'female', 9156425078, '1986-10-11', 33, 'A+', '2018-07-09 18:30:00'),
(43, 'Marie	Baudoin', 'Rua Desembargador Borges de Medeiros 1914 Pelotas Rio Grande do Sul Brazil', 'female', 5331776942, '0000-00-00', 19, 'O+', '2018-08-14 18:30:00'),
(44, 'Gregory	Silverman', 'Rua Nova São Vicente 1033 Cariacica Espírito Santo Brazil', 'male', 2740973211, '0000-00-00', 34, 'AB-', '2018-10-19 18:30:00'),
(45, 'Joseph	Hood', 'Rua Armando Bellagamba Orlandi 272 Amparo São Paulo Brazil', 'male', 1954858487, '1990-09-10', 29, 'O+', '2018-05-31 18:30:00'),
(46, 'Jessie	Turner', 'Rua Freitas Júnior 161 Sorocaba São Paulo Brazil', 'female', 1578044216, '0000-00-00', 31, 'O+', '2018-05-12 18:30:00'),
(47, 'James	White', 'Rua Osvaldo Cruz 899 Paulo Afonso Bahia Brazil', 'male', 7573543115, '0000-00-00', 24, 'O+', '2018-07-22 18:30:00'),
(48, 'Ian	Parra', 'Rua 8 977 Fortaleza Ceará Brazil', 'male', 8561263324, '0000-00-00', 30, 'O+', '2018-08-30 18:30:00'),
(49, 'Dorothy	Edwards', 'Rodovia Estadual Paulo Virgílio 916 Guaratinguetá São Paulo Brazil', 'female', 1278786745, '0000-00-00', 34, 'B+', '2018-07-03 18:30:00'),
(50, 'Richard	Hayes', 'Rua B 1409 Porto Alegre Rio Grande do Sul Brazil', 'male', 5179195355, '1993-01-04', 26, 'B+', '2018-12-21 18:30:00'),
(51, 'Shelley	Davis', 'Rua Belo Horizonte 1040 Coronel Fabriciano Minas Gerais Brazil', 'female', 3179138653, '0000-00-00', 31, 'B+', '2018-01-03 18:30:00'),
(52, 'Michael	Nguyen', 'Alameda Ipiranga 858 Belém Pará Brazil', 'male', 9132653600, '0000-00-00', 35, 'O+', '2018-07-10 18:30:00'),
(53, 'David	Jones', 'Quadra QI 11 122 Taguatinga Distrito Federal Brazil', 'male', 6122898812, '0000-00-00', 27, 'A-', '2018-08-18 18:30:00'),
(54, 'Dennis	Hershman', 'Rua Anézio Cordeiro Filho 1554 Campo Limpo Paulista São Paulo Brazil', 'male', 1135732608, '0000-00-00', 20, 'O+', '2018-08-16 18:30:00'),
(55, 'Michelle	Wood', 'Rua Turmalina 1511 Divinópolis Minas Gerais Brazil', 'female', 3753285035, '0000-00-00', 37, 'A-', '2018-11-04 18:30:00'),
(56, 'Stephen	Allen', 'Rua Uberto Marino 324 Jacareí São Paulo Brazil', 'male', 1239548557, '1987-08-04', 32, 'B+', '2018-10-23 18:30:00'),
(57, 'Geoffrey	Kelly', 'Rua VA 8 1848 Goiânia Goiás Brazil', 'male', 6274988726, '0000-00-00', 35, 'A+', '2018-09-09 18:30:00'),
(58, 'Linda	Hall', 'Rua do Limoeiro 434 Serra Espírito Santo Brazil', 'female', 2791702247, '1998-10-07', 21, 'A-', '2018-04-13 18:30:00'),
(59, 'Lewis	Roper', 'Estrada de Acesso Shamballa Village 1762 Itu São Paulo Brazil', 'male', 1141038903, '1981-03-02', 38, 'O+', '2018-06-08 18:30:00'),
(60, 'Monique	Hernandez', 'Rua Quarenta e Dois 293 Paulista Pernambuco Brazil', 'female', 8137273327, '0000-00-00', 36, 'B+', '2018-06-02 18:30:00'),
(61, 'Thomas	Lewis', 'Rua Whashingtn 38 Três Lagoas Mato Grosso do Sul Brazil', 'male', 6742727396, '1988-05-05', 31, 'B+', '2018-03-28 18:30:00'),
(62, 'Shelley	Gibson', 'Rua Brasílio José Betezek 1298 Curitiba Paraná Brazil', 'female', 4149377508, '0000-00-00', 24, 'A+', '2018-05-21 18:30:00'),
(63, 'Keith	McCarthy', 'Rua Laje do Muriae 847 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2143484438, '1979-06-06', 40, 'A+', '2018-09-25 18:30:00'),
(64, 'Billy	Hays', 'Rua Benedito Jorge do Amaral 446 Bragança Paulista São Paulo Brazil', 'male', 1172219525, '0000-00-00', 39, 'B+', '2018-07-23 18:30:00'),
(65, 'Irene	Renaud', 'Rua Pato Branco 1571 Cascavel Paraná Brazil', 'female', 4554699103, '0000-00-00', 25, 'O+', '2018-08-16 18:30:00'),
(66, 'Hilda	McDill', 'Rua Primeiro de Maio 935 Fortaleza Ceará Brazil', 'female', 8523853823, '0000-00-00', 20, 'O+', '2018-05-27 18:30:00'),
(67, 'Eleanor	Velez', 'Rua Tenente João Glisson 1321 Rio de Janeiro Rio de Janeiro Brazil', 'female', 2144275482, '1983-10-10', 36, 'O+', '2018-12-05 18:30:00'),
(68, 'Timothy	Johnson', 'Rua Luís Gama 813 Santo André São Paulo Brazil', 'male', 1168786100, '1987-04-04', 32, 'B+', '2018-05-30 18:30:00'),
(69, 'Marlo	Collins', 'Rua do Trevo 330 Queimados Rio de Janeiro Brazil', 'female', 2132507661, '0000-00-00', 19, 'O+', '2018-11-25 18:30:00'),
(70, 'Joseph	Cary', 'Avenida Pedro Ludovico 1254 Jataí Goiás Brazil', 'male', 6430977865, '1995-11-06', 24, 'A-', '2018-04-27 18:30:00'),
(71, 'Douglas	Smith', 'Quadra 812 Sul Alameda 7 527 Palmas Tocantins Brazil', 'male', 6336145176, '1993-02-11', 26, 'O+', '2018-09-07 18:30:00'),
(72, 'Mary	Christie', 'Avenida Benedito Rodrigues Lisboa 1389 São José do Rio Preto São Paulo Brazil', 'female', 1732527649, '1979-06-02', 40, 'B+', '2018-05-09 18:30:00'),
(73, 'Edna	Dean', 'Rua Doutor José André da Cruz 1197 Teixeira de Freitas Bahia Brazil', 'female', 7362936892, '1989-07-04', 30, 'O+', '2018-07-13 18:30:00'),
(74, 'John	Willis', 'Rua Antônio Martins 670 Itaúna Minas Gerais Brazil', 'male', 3742844221, '1987-06-03', 32, 'O-', '2018-05-02 18:30:00'),
(75, 'Daria	Mucci', 'Rua Castro Alves 1690 Jaboatão dos Guararapes Pernambuco Brazil', 'female', 8170206888, '0000-00-00', 22, 'B+', '2018-10-17 18:30:00'),
(76, 'Sharon	Maggard', 'Rua Novo Mundo 1160 Gravataí Rio Grande do Sul Brazil', 'female', 5148649911, '0000-00-00', 29, 'O+', '2018-09-11 18:30:00'),
(77, 'Jessie	Lashbrook', 'Praça Oswaldo Caldarelli 1516 Londrina Paraná Brazil', 'female', 4370062912, '1997-09-02', 22, 'O+', '2018-06-28 18:30:00'),
(78, 'Donald	Carter', 'Rua Floriano Peixoto 250 Sousa Paraíba Brazil', 'male', 8345758879, '0000-00-00', 27, 'B+', '2018-07-30 18:30:00'),
(79, 'Albert	Frank', 'Rua Senador Ezechias da Rocha 1510 Maceió Alagoas Brazil', 'male', 8286574163, '1997-03-04', 22, 'O-', '2018-05-28 18:30:00'),
(80, 'James	Stiner', 'Rua Marmelo 577 Curitiba Paraná Brazil', 'male', 4153185661, '0000-00-00', 20, 'O+', '2018-08-28 18:30:00'),
(81, 'Mary	Propes', 'Rua Governador Israel Pinheiro 1940 Cataguases Minas Gerais Brazil', 'female', 3295808268, '0000-00-00', 26, 'O-', '2018-10-23 18:30:00'),
(82, 'Alexis	Durham', 'Rua Guarulhos 1531 Caucaia Ceará Brazil', 'female', 8590209563, '1994-04-01', 25, 'O+', '2018-08-11 18:30:00'),
(83, 'Randall	Stone', 'Rua Manoel Pires Leite 470 Garanhuns Pernambuco Brazil', 'male', 8757463649, '0000-00-00', 23, 'O+', '2018-01-02 18:30:00'),
(84, 'Terrance	Lawrence', 'Avenida Duque de Caxias 1564 Campo Grande Mato Grosso do Sul Brazil', 'male', 6757103128, '0000-00-00', 24, 'O+', '2018-03-23 18:30:00'),
(85, 'Pamela	Gilchrist', 'Rua Guanabara 635 Natal Rio Grande do Norte Brazil', 'female', 8457504440, '0000-00-00', 28, 'O+', '2018-08-27 18:30:00'),
(86, 'Edward	Hyde', 'Rua Serra do Parati 234 Campinas São Paulo Brazil', 'male', 1921776286, '0000-00-00', 29, 'O+', '2018-02-15 18:30:00'),
(87, 'David	Lanham', 'Rua Bem Bastos 793 Poços de Caldas Minas Gerais Brazil', 'male', 3545302652, '0000-00-00', 21, 'O+', '2018-02-09 18:30:00'),
(88, 'Carolyn	Bills', 'Rua Santa Bárbara 328 São José Santa Catarina Brazil', 'female', 4874838091, '0000-00-00', 38, 'O+', '2018-11-03 18:30:00'),
(89, 'Robert	Paige', 'Beco do Cooperão 673 Cataguases Minas Gerais Brazil', 'male', 3242003212, '0000-00-00', 24, 'O+', '2018-12-28 18:30:00'),
(90, 'Efren	Stirling', 'Rua Serra de Itaberaba 517 Itapevi São Paulo Brazil', 'male', 1149847628, '0000-00-00', 34, 'O+', '2018-12-16 18:30:00'),
(91, 'Dorothy	Edwards', 'Rua Nicolau Labriola 56 Itatiba São Paulo Brazil', 'female', 1193777954, '0000-00-00', 40, 'A-', '2018-01-24 18:30:00'),
(92, 'Dennis	Everett', 'Rua José Peixoto Lobo 1209 São Paulo São Paulo Brazil', 'male', 1134322580, '0000-00-00', 24, 'B+', '2018-04-01 18:30:00'),
(93, 'Edward	Lopez', 'Rua Januário J. Ferreira 1343 Gurupi Tocantins Brazil', 'male', 6390858353, '1999-07-06', 20, 'O+', '2018-10-07 18:30:00'),
(94, 'Michael	Turner', 'Rua Major Walter Carlson 357 São Paulo São Paulo Brazil', 'male', 1143815732, '0000-00-00', 36, 'A-', '2018-10-22 18:30:00'),
(95, 'Robert	Davis', 'Rua Ângelo Durigon 472 Lages Santa Catarina Brazil', 'male', 4935576663, '1987-10-06', 32, 'B+', '2018-01-21 18:30:00'),
(96, 'Alfredo	Rogers', 'Rua Mil e Sessenta 561 Volta Redonda Rio de Janeiro Brazil', 'male', 2486974444, '1987-06-09', 32, 'B+', '2018-04-22 18:30:00'),
(97, 'Marjorie	Torres', 'Rua Aveloz 14 Belo Horizonte Minas Gerais Brazil', 'female', 3174399112, '0000-00-00', 26, 'O-', '2018-12-28 18:30:00'),
(98, 'Robert	Quinlan', 'Rua Galiléia 1551 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2171492932, '1998-04-05', 21, 'A+', '2018-01-15 18:30:00'),
(99, 'Thomas	Hornick', 'Rua 24 227 Taguatinga Distrito Federal Brazil', 'male', 6156365190, '1988-11-02', 31, 'A+', '2018-01-31 18:30:00'),
(100, 'Edward	Zager', 'Vila José Gomes 608 Fortaleza Ceará Brazil', 'male', 8576782579, '0000-00-00', 22, 'O+', '2018-03-22 18:30:00'),
(101, 'Fred	Henderson', 'Jardim Miguel Badra 226 São Paulo São Paulo Brazil', 'male', 1181546917, '1994-07-09', 25, 'O+', '2018-09-28 18:30:00'),
(102, 'Jason	Robins', 'Rua Jequitirana 402 São Paulo São Paulo Brazil', 'male', 1186553475, '0000-00-00', 21, 'O-', '2018-02-27 18:30:00'),
(103, 'Roman	Woodruff', 'Rua Um 70 Almirante Tamandaré Paraná Brazil', 'male', 4120087272, '0000-00-00', 24, 'A+', '2018-06-14 18:30:00'),
(104, 'Nellie	Thrasher', 'Escada Projetada Cinco 703 Vitória Espírito Santo Brazil', 'female', 2771802501, '0000-00-00', 22, 'O+', '2018-09-03 18:30:00'),
(105, 'Jerome	Gaither', 'Rua Val de Palmas 1196 São Paulo São Paulo Brazil', 'male', 1136268118, '0000-00-00', 34, 'AB+', '2018-10-06 18:30:00'),
(106, 'Melissa	Doyle', 'Rua Regência 1795 Cachoeirinha Rio Grande do Sul Brazil', 'female', 5191616741, '2000-12-02', 19, 'A+', '2018-02-01 18:30:00'),
(107, 'William	Fargo', 'Rua Ernesto Boscariol 1117 São Paulo São Paulo Brazil', 'male', 1135209411, '1985-02-03', 34, 'A+', '2018-12-18 18:30:00'),
(108, 'Karen	Redmon', 'Rua Dezenove 813 Franca São Paulo Brazil', 'female', 1633512313, '0000-00-00', 26, 'O+', '2018-01-31 18:30:00'),
(109, 'Brian	Curtis', 'Travessa Vileta 1102 Belém Pará Brazil', 'male', 9182639083, '0000-00-00', 26, 'O+', '2018-09-16 18:30:00'),
(110, 'Carlos	Waddell', 'Avenida Alto da Fonte 1785 Salvador Bahia Brazil', 'male', 7129494218, '0000-00-00', 21, 'O+', '2018-07-20 18:30:00'),
(111, 'Shawn	Metcalf', 'Quadra QNP 36 Conjunto A 1187 Ceilândia Distrito Federal Brazil', 'male', 6176189204, '0000-00-00', 39, 'A+', '2018-03-02 18:30:00'),
(112, 'Frank	Bryd', 'Rua Plínio Negreiro da Silva 158 Teófilo Otoni Minas Gerais Brazil', 'male', 3335188700, '1984-01-12', 34, 'O-', '2018-12-15 18:30:00'),
(113, 'Ben	Daley', 'Praça Coração de Maria 943 Betim Minas Gerais Brazil', 'male', 3198293959, '0000-00-00', 35, 'A+', '2018-02-13 18:30:00'),
(114, 'Nicholas	Calabro', 'Praça Manoel Hipólito Dantas 605 Uberlândia Minas Gerais Brazil', 'male', 3442498425, '1997-03-05', 22, 'O+', '2018-04-19 18:30:00'),
(115, 'Geneva	Temple', 'Avenida Silas Salgado 993 Macapá Amapá Brazil', 'female', 9634736607, '0000-00-00', 33, 'A+', '2018-11-04 18:30:00'),
(116, 'Robert	Smith', 'Rua Major Aderbal de Oliveira 1003 São Caetano do Sul São Paulo Brazil', 'male', 1142645337, '0000-00-00', 25, 'A+', '2018-03-12 18:30:00'),
(117, 'Joshua	Ramos', 'Rua Francisco Alves Pereira 912 Lençóis Paulista São Paulo Brazil', 'male', 1435515920, '1988-04-04', 31, 'A+', '2018-12-10 18:30:00'),
(118, 'Rafael	Granger', 'Rua Doutor José Barbosa 421 Juiz de Fora Minas Gerais Brazil', 'male', 3259258872, '0000-00-00', 27, 'A+', '2018-01-15 18:30:00'),
(119, 'Douglas	Knox', 'Rua Professor João Batista Britto 1210 São Paulo São Paulo Brazil', 'male', 1188354415, '0000-00-00', 26, 'O+', '2018-05-08 18:30:00'),
(120, 'Charlene	Talty', 'Rua 16 1121 Formosa Goiás Brazil', 'female', 6171575691, '1990-08-07', 29, 'B+', '2018-12-14 18:30:00'),
(121, 'Wayne	Rios', 'Rua Paulo Fiorelli 1428 Jaú São Paulo Brazil', 'male', 1738779466, '0000-00-00', 31, 'B+', '2018-08-11 18:30:00'),
(122, 'Jimmie	Hayes', 'Rua Piracicaba 401 Itu São Paulo Brazil', 'male', 1188233393, '1983-08-09', 36, 'A+', '2018-03-15 18:30:00'),
(123, 'Jeffrey	Schindler', 'Travessa São João da Barra 1475 Camaragibe Pernambuco Brazil', 'male', 8120983235, '0000-00-00', 36, 'A+', '2018-12-27 18:30:00'),
(124, 'Betty	Howard', 'Rua Risolete Knittel 1023 Joinville Santa Catarina Brazil', 'female', 4771166571, '0000-00-00', 22, 'O+', '2018-04-27 18:30:00'),
(125, 'Ralph	Aiken', 'Rua Professor Antônio Philiphi 125 São José Santa Catarina Brazil', 'male', 4884368951, '0000-00-00', 35, 'O+', '2018-05-10 18:30:00'),
(126, 'Paul	Hewitt', 'Rua Napoleão Bonaparte 17 Franco da Rocha São Paulo Brazil', 'male', 1167228188, '0000-00-00', 24, 'B+', '2018-07-10 18:30:00'),
(127, 'Jeffrey	Stabler', 'Rua Ramiro Rezende 1114 Varginha Minas Gerais Brazil', 'male', 3592674219, '1984-03-09', 35, 'A+', '2018-09-23 18:30:00'),
(128, 'Maribel	Jones', 'Rua Vicente Cipriano 543 Votorantim São Paulo Brazil', 'female', 1599654913, '1994-12-02', 25, 'B+', '2018-06-15 18:30:00'),
(129, 'Richard	Ewert', 'Rua Joaquim Cardoso 1275 Ipatinga Minas Gerais Brazil', 'male', 3187657844, '0000-00-00', 24, 'B+', '2018-07-26 18:30:00'),
(130, 'Irene	Haas', 'Rua Jean Gabriel Villin 990 São Paulo São Paulo Brazil', 'female', 1126553195, '0000-00-00', 31, 'O+', '2018-04-12 18:30:00'),
(131, 'Wanda	Cendejas', 'Rua Hippólito do Valle Pereira 1236 Florianópolis Santa Catarina Brazil', 'female', 4820878720, '0000-00-00', 26, 'AB-', '2018-02-06 18:30:00'),
(132, 'Paul	Barone', 'Avenida Minas Gerais 794 Goiânia Goiás Brazil', 'male', 6232627774, '1994-02-07', 25, 'O+', '2018-07-02 18:30:00'),
(133, 'Christy	Binns', 'Rua das Tulipas 1033 Salto São Paulo Brazil', 'female', 1192914590, '1998-09-02', 21, 'O+', '2018-11-13 18:30:00'),
(134, 'Raymond	Peeler', 'Rua Raposo Tavares 1854 Embu São Paulo Brazil', 'male', 1161498866, '0000-00-00', 39, 'O+', '2018-11-18 18:30:00'),
(135, 'Enrique	Beaudry', 'Rua Juriti 561 Feira de Santana Bahia Brazil', 'male', 7596564219, '0000-00-00', 38, 'O-', '2018-06-20 18:30:00'),
(136, 'Xavier	Peterson', 'Rua Doutor Guilherme Henrique Surerus 696 Juiz de Fora Minas Gerais Brazil', 'male', 3268382784, '0000-00-00', 32, 'B+', '2018-06-29 18:30:00'),
(137, 'Willie	Word', 'Quadra QR 104 Conjunto 01 1673 Samambaia Distrito Federal Brazil', 'female', 6120143879, '0000-00-00', 21, 'B+', '2018-09-22 18:30:00'),
(138, 'Brandon	Gaylord', 'Quadra CLSW 303 Bloco C 606 Cruzeiro Distrito Federal Brazil', 'male', 6135545365, '0000-00-00', 33, 'O+', '2018-04-17 18:30:00'),
(139, 'George	Carpenter', 'Rua Bela Vista 629 São Sebastião Distrito Federal Brazil', 'male', 6131883649, '0000-00-00', 26, 'B+', '2018-10-03 18:30:00'),
(140, 'Lloyd	Maris', 'Rua Orlando Giraldelli 1510 Hortolândia São Paulo Brazil', 'male', 1998618778, '0000-00-00', 24, 'O+', '2018-06-17 18:30:00'),
(141, 'Daniel	Whitehead', 'Rua Padre Faustino 619 Belo Horizonte Minas Gerais Brazil', 'male', 3162725908, '0000-00-00', 21, 'O+', '2018-11-29 18:30:00'),
(142, 'Maureen	Rice', 'Rua Rio Amora 1820 Abreu e Lima Pernambuco Brazil', 'female', 8178842381, '1987-09-03', 32, 'O+', '2018-02-04 18:30:00'),
(143, 'Robert	Anthony', 'Rua Floresta 201 Natal Rio Grande do Norte Brazil', 'male', 8489948001, '1986-10-03', 33, 'O+', '2018-12-28 18:30:00'),
(144, 'Jeremy	Oaks', 'Rua Benedito Camargo 1769 Jundiaí São Paulo Brazil', 'male', 1136752850, '0000-00-00', 23, 'O+', '2018-05-03 18:30:00'),
(145, 'Jeffery	Harris', 'Rua José Ferreira Filho 896 Ourinhos São Paulo Brazil', 'male', 1432524301, '0000-00-00', 22, 'A+', '2018-07-21 18:30:00'),
(146, 'Sallie	Wright', 'Rua Salvador Enes 901 Rio de Janeiro Rio de Janeiro Brazil', 'female', 2157267447, '2000-11-02', 19, 'A+', '2018-01-14 18:30:00'),
(147, 'James	Hunley', 'Rua Sebastião Humberto Pieri 425 Criciúma Santa Catarina Brazil', 'male', 4834557834, '1984-10-08', 35, 'O+', '2018-12-14 18:30:00'),
(148, 'David	Bracken', 'Rua Domingos Vieira 168 Belo Horizonte Minas Gerais Brazil', 'male', 3177876248, '1991-05-11', 28, 'A+', '2018-03-27 18:30:00'),
(149, 'Kirk	Sturgis', 'Avenida Itambé 915 Taubaté São Paulo Brazil', 'male', 1225213011, '0000-00-00', 22, 'O+', '2018-07-17 18:30:00'),
(150, 'Daniel	Smith', 'Avenida Atlético 1990 Cotia São Paulo Brazil', 'male', 1189749811, '0000-00-00', 24, 'A+', '2018-06-08 18:30:00'),
(151, 'Dennis	Eason', 'Acesso Dezesseis C 1680 Porto Alegre Rio Grande do Sul Brazil', 'male', 5150874841, '0000-00-00', 33, 'B+', '2018-04-25 18:30:00'),
(152, 'Josephine	Alston', 'Alameda das Amendoeiras 580 Franca São Paulo Brazil', 'female', 1639712819, '0000-00-00', 20, 'A+', '2018-09-07 18:30:00'),
(153, 'Elizabeth	McGehee', 'Rua Aiapuã 1452 Recife Pernambuco Brazil', 'female', 8149442634, '0000-00-00', 28, 'A+', '2018-05-07 18:30:00'),
(154, 'Charles	Jones', 'Rua Júlio Castilho 1550 Barra Mansa Rio de Janeiro Brazil', 'male', 2447706950, '0000-00-00', 33, 'A+', '2018-12-29 18:30:00'),
(155, 'Troy	Frankel', 'Praça Dom Geraldo Fernandes 606 Curitiba Paraná Brazil', 'male', 4172327227, '0000-00-00', 30, 'O+', '2018-09-11 18:30:00'),
(156, 'Vince	Carroll', 'Rua Augusto Cavalcante 12 Arcoverde Pernambuco Brazil', 'male', 8765692612, '0000-00-00', 19, 'O+', '2018-02-19 18:30:00'),
(157, 'Kristin	Wallace', 'Rua VF 28 764 Goiânia Goiás Brazil', 'female', 6263278933, '0000-00-00', 35, 'B+', '2018-09-16 18:30:00'),
(158, 'Daniel	Smith', 'Rua Jussara 1942 Guarulhos São Paulo Brazil', 'male', 1131765947, '1988-04-12', 30, 'B+', '2018-02-06 18:30:00'),
(159, 'Emily	Hill', 'Rua Aratimbo 1415 Belford Roxo Rio de Janeiro Brazil', 'female', 2181006591, '1986-07-08', 33, 'B+', '2018-09-22 18:30:00'),
(160, 'Debbie	Hunt', 'Rua Matão 354 Apucarana Paraná Brazil', 'female', 4354508833, '0000-00-00', 26, 'A+', '2018-06-21 18:30:00'),
(161, 'Jason	Dempster', 'Rua Francisco Crestana 605 São Carlos São Paulo Brazil', 'male', 1687704716, '0000-00-00', 25, 'AB+', '2018-03-05 18:30:00'),
(162, 'Thomas	Eklund', 'Rua Theotônio Pires de Campos 1821 Jaú São Paulo Brazil', 'male', 1737907126, '1987-08-02', 32, 'A+', '2018-07-01 18:30:00'),
(163, 'Monica	Turner', 'Rua Manoel Barrio Garcia 926 São Paulo São Paulo Brazil', 'female', 1148116670, '0000-00-00', 29, 'O+', '2018-12-01 18:30:00'),
(164, 'George	Gonzalez', 'Rua Guararema 1890 São Paulo São Paulo Brazil', 'male', 1190332502, '0000-00-00', 23, 'A+', '2018-11-26 18:30:00'),
(165, 'Virginia	Palmer', 'Rua Primavera de Barros 1996 Belém Pará Brazil', 'female', 9180463547, '1994-05-04', 25, 'A+', '2018-05-14 18:30:00'),
(166, 'William	Brown', 'Rua João Ramalho 1639 Ferraz de Vasconcelos São Paulo Brazil', 'male', 1135808809, '0000-00-00', 33, 'B+', '2018-10-29 18:30:00'),
(167, 'Helen	Moreno', 'Travessa do Arame 677 São Luís Maranhão Brazil', 'female', 9862912277, '1992-07-04', 27, 'A+', '2018-02-23 18:30:00'),
(168, 'Daniel	Lolley', 'Travessa Rolândia 160 Foz do Iguaçu Paraná Brazil', 'male', 4587219292, '0000-00-00', 20, 'A+', '2018-10-01 18:30:00'),
(169, 'Denise	Dewitt', 'Rua do Itamaraty 1243 Campo Limpo Paulista São Paulo Brazil', 'female', 1167862809, '1979-02-11', 40, 'O+', '2018-03-27 18:30:00'),
(170, 'Merle	Ward', 'Rua Dom João dos Santos 723 Contagem Minas Gerais Brazil', 'male', 3134304703, '1987-01-06', 32, 'O+', '2018-08-01 18:30:00'),
(171, 'Myron	Holmes', 'Rua Vicinal Fortaleza 1647 Goiânia Goiás Brazil', 'male', 6223049694, '0000-00-00', 37, 'A+', '2018-01-14 18:30:00'),
(172, 'Randy	Little', 'Rua Freitas Saldanha 1778 São Paulo São Paulo Brazil', 'male', 1138659307, '0000-00-00', 35, 'A+', '2018-03-31 18:30:00'),
(173, 'Fredrick	Tatum', 'Rua Santa Madalena 55 Maracanaú Ceará Brazil', 'male', 8594413634, '0000-00-00', 24, 'O+', '2018-02-28 18:30:00'),
(174, 'Justin	Chu', 'Avenida Madre Paulina 462 Avaré São Paulo Brazil', 'male', 1453926840, '0000-00-00', 40, 'A+', '2018-07-04 18:30:00'),
(175, 'Leroy	Knop', 'Rua Dom Jonas Batinga 18 Arapiraca Alagoas Brazil', 'male', 8220985827, '0000-00-00', 23, 'O+', '2018-09-01 18:30:00'),
(176, 'William	Barnes', 'Rua Padre Nelson Farias 695 Fortaleza Ceará Brazil', 'male', 8548784713, '1981-05-11', 38, 'A+', '2018-03-09 18:30:00'),
(177, 'Gary	Wong', 'Rua 17B 1789 Maracanaú Ceará Brazil', 'male', 8573563379, '0000-00-00', 39, 'O+', '2018-07-19 18:30:00'),
(178, 'Judy	Moak', 'Rua Breno Arruda 900 Gravataí Rio Grande do Sul Brazil', 'female', 5162264409, '0000-00-00', 35, 'O+', '2018-04-28 18:30:00'),
(179, 'Alfred	Martin', 'Travessa Efe 879 Guarulhos São Paulo Brazil', 'male', 1158789937, '0000-00-00', 29, 'O+', '2018-10-04 18:30:00'),
(180, 'Gregg	Thatcher', 'Rua Valério Lambare 1242 Toledo Paraná Brazil', 'male', 4598146467, '0000-00-00', 24, 'B+', '2018-06-03 18:30:00'),
(181, 'Francisco	Lloyd', 'Travessa Sargento Ernesto Ferreira da Silva 665 Araucária Paraná Brazil', 'male', 4152853607, '0000-00-00', 23, 'O+', '2018-05-31 18:30:00'),
(182, 'Christy	Milton', 'Rua Doutor Eugênio Fortes Coelho 1630 São Paulo São Paulo Brazil', 'female', 1178137117, '0000-00-00', 29, 'B+', '2018-07-16 18:30:00'),
(183, 'Aaron	Clements', 'Rua Leandro Pinto 1063 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2147596078, '0000-00-00', 26, 'A-', '2018-05-11 18:30:00'),
(184, 'Jonathan	Isbell', 'Avenida Imperatriz 512 Araguaína Tocantins Brazil', 'male', 6325966636, '1996-11-07', 23, 'A+', '2018-02-09 18:30:00'),
(185, 'Arthur	Plummer', 'Rua Antônio Manoel Galvão 1654 Salvador Bahia Brazil', 'male', 7127705473, '1987-09-12', 31, 'B+', '2018-10-31 18:30:00'),
(186, 'Leon	Cho', 'Rua Dinora Barbetta 1204 Queimados Rio de Janeiro Brazil', 'male', 2145249901, '1985-04-08', 34, 'A+', '2018-07-02 18:30:00'),
(187, 'Rene	Swenson', 'Rua Cinquenta e Um 4 Ituiutaba Minas Gerais Brazil', 'male', 3426736293, '0000-00-00', 39, 'O+', '2018-01-13 18:30:00'),
(188, 'Rochelle	Sumner', 'Rua Vinte e Nove 866 Suzano São Paulo Brazil', 'female', 1154718377, '0000-00-00', 22, 'O+', '2018-02-08 18:30:00'),
(189, 'Adelle	Stennett', 'Rua Luiz Gonzaga Peres 61 Novo Hamburgo Rio Grande do Sul Brazil', 'female', 5194866219, '0000-00-00', 26, 'O+', '2018-12-19 18:30:00'),
(190, 'Ryan	Kemp', 'Rua Orlando Pinto Saraiva 189 São Paulo São Paulo Brazil', 'male', 1136153900, '0000-00-00', 35, 'A+', '2018-01-27 18:30:00'),
(191, 'Alonzo	Alvarez', 'Rua João Marinho Campos 1879 Ananindeua Pará Brazil', 'male', 9194932381, '0000-00-00', 24, 'B+', '2018-02-15 18:30:00'),
(192, 'Jc	Gonzalez', 'Rua das Cegonhas 1681 Várzea Paulista São Paulo Brazil', 'male', 1153053600, '0000-00-00', 33, 'A+', '2018-10-21 18:30:00'),
(193, 'Carl	Tilley', 'Rua José Bastos 527 Tatuí São Paulo Brazil', 'male', 1552178995, '0000-00-00', 23, 'B+', '2018-08-20 18:30:00'),
(194, 'Robert	Cook', 'Praça da Sé 1001 Crato Ceará Brazil', 'male', 8861376990, '1979-04-08', 40, 'O+', '2018-02-02 18:30:00'),
(195, 'Wayne	Stephenson', 'Praça Alberto Eduardo Bellinghausen 1502 São Bernardo do Campo São Paulo Brazil', 'male', 1125617084, '0000-00-00', 35, 'O+', '2018-09-19 18:30:00'),
(196, 'Gary	Fulgham', 'Rua Palmo Carani 19 Sorocaba São Paulo Brazil', 'male', 1591795165, '2000-03-09', 19, 'O+', '2018-11-05 18:30:00'),
(197, 'Paulette	Adams', 'Rua Euclides Silvestre 1324 São José do Rio Preto São Paulo Brazil', 'female', 1765012835, '1987-03-03', 32, 'A-', '2018-11-06 18:30:00'),
(198, 'Gloria	Higgins', 'Rua Campos Gerais 718 Teófilo Otoni Minas Gerais Brazil', 'female', 3365064820, '1991-05-02', 28, 'O+', '2018-10-18 18:30:00'),
(199, 'Maria	Schwanke', 'Rua Noventa e Seis 405 Paulista Pernambuco Brazil', 'female', 8156547706, '0000-00-00', 22, 'O+', '2018-11-22 18:30:00'),
(200, 'Roberta	Hall', 'Rua Visconde de Cairu 1284 Duque de Caxias Rio de Janeiro Brazil', 'female', 2192445259, '0000-00-00', 38, 'O+', '2018-03-29 18:30:00'),
(201, 'Carlos	Ryder', 'Rua Projetada H 1435 Dourados Mato Grosso do Sul Brazil', 'male', 6776904037, '1997-03-03', 22, 'AB+', '2018-06-28 18:30:00'),
(202, 'Emerson	Nathanson', 'Rua Sebastião A. Pereira 1701 São João da Boa Vista São Paulo Brazil', 'male', 1965638381, '0000-00-00', 20, 'B+', '2018-03-07 18:30:00'),
(203, 'Robert	Skinner', 'Rua Santa Luzia 246 Cariacica Espírito Santo Brazil', 'male', 2742292338, '0000-00-00', 24, 'A+', '2018-08-13 18:30:00'),
(204, 'Scott	Myers', 'Rua João Alfredo 1210 Maringá Paraná Brazil', 'male', 4432115318, '1994-07-07', 25, 'O+', '2018-08-22 18:30:00'),
(205, 'Laura	Ritchie', 'Rua Gilberto Barreto Finazzi 495 Bauru São Paulo Brazil', 'female', 1483253454, '0000-00-00', 39, 'A+', '2018-06-19 18:30:00'),
(206, 'Evan	Harper', 'Estrada do Itaqui 788 Itapevi São Paulo Brazil', 'male', 1159437204, '0000-00-00', 31, 'AB+', '2018-01-08 18:30:00'),
(207, 'Sherman	Robinson', 'Rua Valdir Porto Correia 375 Criciúma Santa Catarina Brazil', 'male', 4859806288, '0000-00-00', 25, 'O+', '2018-11-21 18:30:00'),
(208, 'Cesar	Monroe', 'Travessa Aurora 377 Maceió Alagoas Brazil', 'male', 8246366249, '0000-00-00', 30, 'A+', '2018-03-14 18:30:00'),
(209, 'David	Olson', 'Rua Setenta e Três 1067 Contagem Minas Gerais Brazil', 'male', 3143185761, '1990-08-05', 29, 'B+', '2018-01-02 18:30:00'),
(210, 'Daniel	Johnson', 'Rua Emir Macedo Nogueira 107 Diadema São Paulo Brazil', 'male', 1154216074, '0000-00-00', 39, 'A+', '2018-10-30 18:30:00'),
(211, 'Charles	Stanley', 'Rua Pequi 1894 Timóteo Minas Gerais Brazil', 'male', 3173064345, '0000-00-00', 35, 'B+', '2018-06-12 18:30:00'),
(212, 'Jacob	Hawkins', 'Praça Roberto Andreoli 1890 Ribeirão Preto São Paulo Brazil', 'male', 1626878313, '0000-00-00', 23, 'O+', '2018-04-15 18:30:00'),
(213, 'Ronald	Clouse', 'Servidão Tau 838 Teresópolis Rio de Janeiro Brazil', 'male', 2187018967, '0000-00-00', 21, 'A+', '2018-04-02 18:30:00'),
(214, 'Gilbert	Oneil', 'Rua Aníbal Thomaz Gomes 1446 São Paulo São Paulo Brazil', 'male', 1171599395, '0000-00-00', 24, 'O+', '2018-03-02 18:30:00'),
(215, 'John	Cronin', 'Rua SN 1 1003 Goiânia Goiás Brazil', 'male', 6269548517, '0000-00-00', 23, 'B+', '2018-05-16 18:30:00'),
(216, 'Kevin	Peterson', 'Quadra QR 601 Conjunto 13 536 Samambaia Distrito Federal Brazil', 'male', 6122409583, '0000-00-00', 31, 'A+', '2018-12-20 18:30:00'),
(217, 'Mauricio	Parker', 'Rua Antônia Benachio Ribeiro 1963 Jundiaí São Paulo Brazil', 'male', 1180686290, '1991-04-04', 28, 'O+', '2018-01-24 18:30:00'),
(218, 'Samuel	Gibson', 'Rua Henrique Bonini 86 Atibaia São Paulo Brazil', 'male', 1189493885, '0000-00-00', 25, 'O+', '2018-04-16 18:30:00'),
(219, 'Louise	Brownlee', 'Rua Coronel Fernando Prestes 1399 Botucatu São Paulo Brazil', 'female', 1457376417, '0000-00-00', 36, 'A+', '2018-09-24 18:30:00'),
(220, 'Everett	Stewart', 'Rua Alcídio Paganelli 1813 Bebedouro São Paulo Brazil', 'male', 1746763703, '1994-04-08', 25, 'O+', '2018-04-22 18:30:00'),
(221, 'Jennifer	Evans', 'Rua Sítio dos Macines 1669 Guarulhos São Paulo Brazil', 'female', 1126555911, '1985-12-04', 34, 'B+', '2018-04-17 18:30:00'),
(222, 'James	Martinez', 'Via Secundária VI 372 Gurupi Tocantins Brazil', 'male', 6377203538, '1979-12-07', 40, 'A+', '2018-06-15 18:30:00'),
(223, 'Anh	Stevens', 'Rua Valdivino Bastos de Jesus 1144 Campo Grande Mato Grosso do Sul Brazil', 'female', 6747719249, '1981-06-06', 38, 'B+', '2018-01-15 18:30:00'),
(224, 'Christine	Mock', 'Rua Orfeu Colombini 594 Araras São Paulo Brazil', 'female', 1957415126, '1981-10-07', 38, 'O+', '2018-01-26 18:30:00'),
(225, 'Joseph	Stearns', 'Praça Gastão de Andrada de Moraes 1600 Campinas São Paulo Brazil', 'male', 1961799656, '0000-00-00', 39, 'A+', '2018-02-19 18:30:00'),
(226, 'Benjamin	Torres', 'Rua Quatro 361 Ribeirão Preto São Paulo Brazil', 'male', 1644679628, '0000-00-00', 36, 'O+', '2018-10-29 18:30:00'),
(227, 'Joann	Newton', 'Alameda São Nicolau 897 Serra Espírito Santo Brazil', 'female', 2743656526, '1989-08-01', 30, 'O+', '2018-05-03 18:30:00'),
(228, 'Bret	Reyes', 'Rua AB 1006 Teixeira de Freitas Bahia Brazil', 'male', 7345516765, '1983-08-12', 35, 'O+', '2018-01-13 18:30:00'),
(229, 'Catherine	Pittman', 'Rua Joaquim Costa Lage 829 Itabira Minas Gerais Brazil', 'female', 3165695709, '1986-03-09', 33, 'A+', '2018-05-01 18:30:00'),
(230, 'Delaine	Sisler', 'Rua Capim Grosso 199 Feira de Santana Bahia Brazil', 'female', 7571165295, '0000-00-00', 34, 'AB+', '2018-02-15 18:30:00'),
(231, 'Raymond	Rice', 'Rua Eunice 755 Embu São Paulo Brazil', 'male', 1171804365, '1980-06-06', 39, 'A-', '2018-10-08 18:30:00'),
(232, 'John	Bayles', 'Rua Adolfo Bezerra 5 Camaragibe Pernambuco Brazil', 'male', 8192206445, '0000-00-00', 35, 'B+', '2018-07-10 18:30:00'),
(233, 'Donald	Michael', 'Rua Theodoro Sampaio 525 Ponta Grossa Paraná Brazil', 'male', 4287176243, '1984-08-10', 35, 'B+', '2018-11-04 18:30:00'),
(234, 'Gregory	Pearson', 'Avenida Nascente 1158 Caucaia Ceará Brazil', 'male', 8522833860, '0000-00-00', 34, 'B-', '2018-07-07 18:30:00'),
(235, 'Janice	Reynolds', 'Rua Sousa Porto 1602 Nilópolis Rio de Janeiro Brazil', 'female', 2162469958, '0000-00-00', 33, 'O+', '2018-12-08 18:30:00'),
(236, 'Kenneth	Rosado', 'Rua Topázio 577 Cabo Frio Rio de Janeiro Brazil', 'male', 2244284297, '0000-00-00', 36, 'B+', '2018-01-03 18:30:00'),
(237, 'Seth	Stowe', 'Avenida Luiz Lua Gonzaga 52 Aracaju Sergipe Brazil', 'male', 7958283901, '0000-00-00', 35, 'O+', '2018-05-11 18:30:00'),
(238, 'Cameron	Hackler', 'Rua Arnold Zickuhr 1098 Blumenau Santa Catarina Brazil', 'male', 4796182757, '0000-00-00', 19, 'B+', '2018-04-27 18:30:00'),
(239, 'Rachel	Morgan', 'Rua Octávio de Moraes Lopes 567 São Paulo São Paulo Brazil', 'female', 1155558754, '0000-00-00', 20, 'B+', '2018-05-12 18:30:00'),
(240, 'Kenny	Severs', 'Rua Martins de Souza 1515 São Paulo São Paulo Brazil', 'male', 1160473858, '0000-00-00', 36, 'A+', '2018-01-02 18:30:00'),
(241, 'Darius	McDowell', 'Rua Terracota 1049 Belo Horizonte Minas Gerais Brazil', 'male', 3140093993, '1996-04-06', 23, 'B+', '2018-12-29 18:30:00'),
(242, 'Kevin	Hanson', 'Rua Acapú 1827 Campo Grande Mato Grosso do Sul Brazil', 'male', 6742883597, '0000-00-00', 22, 'O+', '2018-11-10 18:30:00'),
(243, 'Vicki	Brewster', 'Quadra Quadra 604 Conjunto 24 788 Recanto das Emas Distrito Federal Brazil', 'female', 6122273512, '0000-00-00', 39, 'O+', '2018-02-13 18:30:00'),
(244, 'Gregg	Thompson', 'Avenida Desembargador Pinho 1825 João Pessoa Paraíba Brazil', 'male', 8333237935, '0000-00-00', 23, 'AB+', '2018-09-06 18:30:00'),
(245, 'Shirley	Bennett', 'Rua São Francisco de Paula 456 São Paulo São Paulo Brazil', 'female', 1172957752, '1980-05-02', 39, 'O+', '2018-08-25 18:30:00'),
(246, 'Steve	Arndt', 'Conjunto Jardim Floresta Park 1441 Ananindeua Pará Brazil', 'male', 9173284001, '0000-00-00', 26, 'B+', '2018-12-18 18:30:00'),
(247, 'Helen	Watkins', 'Rua 13 A 1211 Rio Claro São Paulo Brazil', 'female', 1948924563, '0000-00-00', 35, 'B+', '2018-05-25 18:30:00'),
(248, 'John	Burgess', 'Travessa Marcílio Dias 490 Nilópolis Rio de Janeiro Brazil', 'male', 2124625030, '1990-08-11', 29, 'O+', '2018-12-10 18:30:00'),
(249, 'David	Bailey', 'Rua Antônio Norberto de Melo 1380 Pará de Minas Minas Gerais Brazil', 'male', 3790234058, '0000-00-00', 21, 'O+', '2018-10-18 18:30:00'),
(250, 'Woodrow	Anderson', 'Rua Dom Daniel Baeta Neves 1964 Sete Lagoas Minas Gerais Brazil', 'male', 3137678860, '1983-10-10', 36, 'O+', '2018-08-26 18:30:00'),
(251, 'Kenneth	Williams', 'Rua Januário Magna 885 Campinas São Paulo Brazil', 'male', 1977622200, '1997-02-07', 22, 'O+', '2018-10-20 18:30:00'),
(252, 'Kimberly	Fomby', 'Travessa Dois 577 Ponta Grossa Paraná Brazil', 'female', 4289684810, '1992-12-01', 27, 'A+', '2018-10-08 18:30:00'),
(253, 'William	Davis', 'Avenida Antônio Trajano 1460 Três Lagoas Mato Grosso do Sul Brazil', 'male', 6783869449, '0000-00-00', 39, 'O+', '2018-10-28 18:30:00'),
(254, 'Harold	Soule', 'Avenida Central Conjunto 15 1006 Sobradinho Distrito Federal Brazil', 'male', 6184973370, '0000-00-00', 22, 'B+', '2018-06-22 18:30:00'),
(255, 'Johnnie	Hughes', 'Vila José Claudino 1702 Jaboatão dos Guararapes Pernambuco Brazil', 'male', 8128343432, '0000-00-00', 35, 'O+', '2018-01-17 18:30:00'),
(256, 'Gregory	Neilson', 'Rua FN 27 1707 Goiânia Goiás Brazil', 'male', 6266004043, '0000-00-00', 31, 'B+', '2018-06-30 18:30:00'),
(257, 'Joaquin	Trader', 'Rua Laura M. Roberta 195 Jandira São Paulo Brazil', 'male', 1185386547, '1990-08-02', 29, 'O+', '2018-08-09 18:30:00'),
(258, 'Leonard	Thompson', 'Rua GB 1 D 763 Goiânia Goiás Brazil', 'male', 6253747263, '1998-12-01', 21, 'O+', '2018-05-06 18:30:00'),
(259, 'Eileen	Robb', 'Rua Eucaliptos 1374 Belford Roxo Rio de Janeiro Brazil', 'female', 2151874980, '0000-00-00', 38, 'A-', '2018-12-07 18:30:00'),
(260, 'Fred	Riley', 'Loteamento Novo Horizonte 1939 Timon Maranhão Brazil', 'male', 9976974543, '1982-03-10', 37, 'O+', '2018-06-25 18:30:00'),
(261, 'Elizabeth	Loredo', 'Rua 25e 1425 Aparecida de Goiânia Goiás Brazil', 'female', 6282249150, '1978-06-12', 40, 'B+', '2018-11-07 18:30:00'),
(262, 'Kristin	Ragan', 'Avenida Esplanada 434 Araçatuba São Paulo Brazil', 'female', 1838737797, '1996-10-03', 23, 'O+', '2018-04-01 18:30:00'),
(263, 'Ryan	Kraft', 'Rua Andreia Gabriel 1592 São Gonçalo Rio de Janeiro Brazil', 'male', 2132247129, '1985-04-02', 34, 'B+', '2018-05-26 18:30:00'),
(264, 'Tracie	Rojas', 'Quadra Quadra 06 206 Novo Gama Goiás Brazil', 'female', 6170326933, '1993-04-02', 26, 'AB+', '2018-09-23 18:30:00'),
(265, 'Charlene	Dugas', 'Rua Luís Donizete 433 Manaus Amazonas Brazil', 'female', 9225593180, '0000-00-00', 26, 'B+', '2018-01-22 18:30:00'),
(266, 'Alice	Blevins', 'Rua Maria Domingas 1367 Várzea Grande Mato Grosso Brazil', 'female', 6537093235, '1997-06-02', 22, 'A+', '2018-10-17 18:30:00'),
(267, 'John	Hall', 'Rua Desembargador Arno Hoeschl 1578 Florianópolis Santa Catarina Brazil', 'male', 4865024684, '1982-11-08', 37, 'O+', '2018-05-21 18:30:00'),
(268, 'Kenneth	Felix', 'Rua Francisco Joaquim Pinto Filho 1968 Sertãozinho São Paulo Brazil', 'male', 1684868656, '0000-00-00', 21, 'O+', '2018-06-26 18:30:00'),
(269, 'Eleanor	Stanley', 'Rua Asa Branca 883 Caruaru Pernambuco Brazil', 'female', 8178792741, '1988-06-12', 30, 'B+', '2018-08-02 18:30:00'),
(270, 'Adrian	Vincent', 'Avenida Manoel Goulart 1569 Presidente Prudente São Paulo Brazil', 'male', 1882678656, '0000-00-00', 35, 'A+', '2018-02-24 18:30:00'),
(271, 'James	Palacios', 'Rua Manderá 1659 São Paulo São Paulo Brazil', 'male', 1141883140, '0000-00-00', 38, 'B+', '2018-02-27 18:30:00'),
(272, 'Jacqueline	Swartz', 'Quadra Seis 804 Marabá Pará Brazil', 'female', 9474739824, '1985-05-08', 34, 'A+', '2018-03-15 18:30:00'),
(273, 'Robin	Dowdle', 'Rua Vaticano 576 Campo Grande Mato Grosso do Sul Brazil', 'female', 6773056684, '0000-00-00', 31, 'B+', '2018-07-15 18:30:00'),
(274, 'George	Switzer', 'Rua Mucum 1127 São Paulo São Paulo Brazil', 'male', 1143557364, '0000-00-00', 35, 'A+', '2018-10-21 18:30:00'),
(275, 'Mathew	Kemp', 'Rua 6 Unidade 205 566 Goiânia Goiás Brazil', 'male', 6275058907, '0000-00-00', 25, 'B-', '2018-04-18 18:30:00'),
(276, 'John	Foster', 'Rua São Silvestre 1677 Cariacica Espírito Santo Brazil', 'male', 2758087601, '0000-00-00', 37, 'AB+', '2018-09-01 18:30:00'),
(277, 'Janie	French', 'Rua Antenor Fassarela 1791 Vila Velha Espírito Santo Brazil', 'female', 2754947013, '1998-11-06', 21, 'O+', '2018-01-23 18:30:00'),
(278, 'Keith	Wallen', 'Rua Panamá 1195 Serra Espírito Santo Brazil', 'male', 2781074670, '0000-00-00', 36, 'O+', '2018-10-27 18:30:00'),
(279, 'Aaron	Quigley', 'Avenida Praia de Belas 485 Porto Alegre Rio Grande do Sul Brazil', 'male', 5121286163, '1997-05-08', 22, 'O+', '2018-03-27 18:30:00'),
(280, 'Sue	Brown', 'Rua Trino Fabri 216 Juiz de Fora Minas Gerais Brazil', 'female', 3263285324, '0000-00-00', 22, 'B+', '2018-11-30 18:30:00'),
(281, 'Luis	Zapata', 'Avenida Rio de Janeiro 1416 Caraguatatuba São Paulo Brazil', 'male', 1247044670, '1998-04-01', 21, 'A+', '2018-11-03 18:30:00'),
(282, 'Robert	Attebery', 'Rua Luiz Andriolo 1648 Itapetininga São Paulo Brazil', 'male', 1593106911, '0000-00-00', 19, 'B+', '2018-12-13 18:30:00'),
(283, 'Jacquelyn	Hoisington', 'Rua Irecê 1740 Jaboatão dos Guararapes Pernambuco Brazil', 'female', 8165632330, '0000-00-00', 39, 'A+', '2018-09-25 18:30:00'),
(284, 'Brian	Jerez', 'Rua Itamar Rates Barroso 88 Juiz de Fora Minas Gerais Brazil', 'male', 3223983528, '0000-00-00', 32, 'A-', '2018-03-04 18:30:00'),
(285, 'Harriet	Carter', 'Rua 12 1714 Maracanaú Ceará Brazil', 'female', 8547104033, '0000-00-00', 22, 'O+', '2018-01-14 18:30:00'),
(286, 'Victor	Lee', 'Quadra SHIN QI 03 Conjunto 09 666 Lago Norte Distrito Federal Brazil', 'male', 6138717740, '1999-12-09', 20, 'A+', '2018-01-01 18:30:00'),
(287, 'Bernadette	Thorton', 'Rua Hilda Butzke 692 Blumenau Santa Catarina Brazil', 'female', 4782572298, '0000-00-00', 30, 'A+', '2018-04-24 18:30:00'),
(288, 'Ross	Sheldon', 'Rua Anísio Vitorino de Queiroz 1828 Paulista Pernambuco Brazil', 'male', 8143018140, '1991-10-05', 28, 'A+', '2018-07-19 18:30:00'),
(289, 'Kelly	Weitz', 'Travessa Poloni 1558 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2183307687, '0000-00-00', 23, 'AB+', '2018-09-10 18:30:00'),
(290, 'David	Ford', 'Rua Guilherme Gade 1205 São Gonçalo Rio de Janeiro Brazil', 'male', 2159003167, '0000-00-00', 21, 'B+', '2018-08-17 18:30:00'),
(291, 'Lloyd	Carpenter', 'Rua Flávio Lima 1262 Fortaleza Ceará Brazil', 'male', 8565058872, '1996-08-04', 23, 'O+', '2018-04-23 18:30:00'),
(292, 'Mayme	Hinojosa', 'Praça João Ângelo Colucci 1043 Tupã São Paulo Brazil', 'female', 1464024700, '1993-01-05', 26, 'B+', '2018-03-12 18:30:00'),
(293, 'Aaron	Nicola', 'Caminho 14-Qd C 1142 Salvador Bahia Brazil', 'male', 7199753153, '1991-05-08', 28, 'B+', '2018-02-24 18:30:00'),
(294, 'Daryl	Perrine', 'Quadra Quadra 38 Conjunto H 243 Paranoá Distrito Federal Brazil', 'male', 6195833075, '0000-00-00', 27, 'O+', '2018-01-23 18:30:00'),
(295, 'Ernest	Myers', 'Avenida Pasteur 518 Varginha Minas Gerais Brazil', 'male', 3552477070, '1998-11-01', 21, 'B+', '2018-03-31 18:30:00'),
(296, 'Robert	Hammond', 'Quadra QR 606 Conjunto 14-A 1378 Samambaia Distrito Federal Brazil', 'male', 6160805424, '0000-00-00', 19, 'A+', '2018-09-21 18:30:00'),
(297, 'Garrett	McDavid', 'Rua J J Cowsert 700 Rio de Janeiro Rio de Janeiro Brazil', 'male', 2194426432, '0000-00-00', 22, 'B+', '2018-01-02 18:30:00'),
(298, 'Claire	Vogel', 'Rua César Felice Battistin 282 São Bernardo do Campo São Paulo Brazil', 'female', 1142109041, '1983-02-05', 36, 'A-', '2018-10-05 18:30:00'),
(299, 'Kermit	Eastin', 'Quadra EQNM 23/25 Bloco D 173 Ceilândia Distrito Federal Brazil', 'male', 6156689535, '1995-01-01', 24, 'O+', '2018-09-25 18:30:00'),
(300, 'Anthony	Masterson', 'Rua Onze 1015 Itabira Minas Gerais Brazil', 'male', 3149112657, '0000-00-00', 40, 'A+', '2018-08-26 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
CREATE TABLE IF NOT EXISTS `hospital` (
  `Hid` int(10) NOT NULL AUTO_INCREMENT,
  `Hname` varchar(20) NOT NULL,
  `Haddress` varchar(50) NOT NULL,
  `Hcontact` int(10) NOT NULL,
  PRIMARY KEY (`Hid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `officer`
--

DROP TABLE IF EXISTS `officer`;
CREATE TABLE IF NOT EXISTS `officer` (
  `Oid` int(10) NOT NULL AUTO_INCREMENT,
  `Bb_Id` int(10) NOT NULL,
  `O_Name` varchar(20) NOT NULL,
  `O_Contact` int(10) NOT NULL,
  PRIMARY KEY (`Oid`),
  KEY `Bb_Id` (`Bb_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood_donation`
--
ALTER TABLE `blood_donation`
  ADD CONSTRAINT `blood_donation_ibfk_1` FOREIGN KEY (`Bb_Id`) REFERENCES `blood_bank` (`Bb_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_donation_ibfk_2` FOREIGN KEY (`Did`) REFERENCES `donor` (`Did`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `officer`
--
ALTER TABLE `officer`
  ADD CONSTRAINT `officer_ibfk_1` FOREIGN KEY (`Bb_Id`) REFERENCES `blood_bank` (`Bb_Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
