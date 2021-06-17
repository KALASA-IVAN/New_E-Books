-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2021 at 12:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-books`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `book_name` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `district_id` int(11) NOT NULL,
  `province_id` int(11) NOT NULL,
  `district_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`district_id`, `province_id`, `district_name`) VALUES
(101, 1, 'Nyarugenge\r\n'),
(102, 1, 'Gasabo\r\n'),
(103, 1, 'Kicukiro\r\n'),
(201, 2, 'Nyanza\r\n'),
(202, 2, 'Gisagara\r\n'),
(203, 2, 'Nyaruguru\r\n'),
(204, 2, 'Huye\r\n'),
(205, 2, 'Nyamagabe\r\n'),
(206, 2, 'Ruhango\r\n'),
(207, 2, 'Muhanga\r\n'),
(208, 2, 'Kamonyi\r\n'),
(301, 3, 'Karongi\r\n'),
(302, 3, 'Rutsiro\r\n'),
(303, 3, 'Rubavu\r\n'),
(304, 3, 'Nyabihu\r\n'),
(305, 3, 'Ngororero\r\n'),
(306, 3, 'Rusizi\r\n'),
(307, 3, 'Nyamasheke\r\n'),
(401, 4, 'Rulindo\r\n'),
(402, 4, 'Gakenke\r\n'),
(403, 4, 'Musanze\r\n'),
(404, 4, 'Burera\r\n'),
(405, 4, 'Gicumbi\r\n'),
(501, 5, 'Rwamagana\r\n'),
(502, 5, 'Nyagatare\r\n'),
(503, 5, 'Gatsibo\r\n'),
(504, 5, 'Kayonza\r\n'),
(505, 5, 'Kirehe\r\n'),
(506, 5, 'Ngoma\r\n'),
(507, 5, 'Bugesera\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `roleId` int(11) NOT NULL,
  `Role` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sector`
--

CREATE TABLE `sector` (
  `sector_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `sector_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sector`
--

INSERT INTO `sector` (`sector_id`, `district_id`, `sector_name`) VALUES
(10101, 101, 'Gitega\r\n'),
(10102, 101, 'Kanyinya\r\n'),
(10103, 101, 'Kigali\r\n'),
(10104, 101, 'Kimisagara\r\n'),
(10105, 101, 'Mageragere\r\n'),
(10106, 101, 'Muhima\r\n'),
(10107, 101, 'Nyakabanda\r\n'),
(10108, 101, 'Nyamirambo\r\n'),
(10109, 101, 'Nyarugenge\r\n'),
(10110, 101, 'Rwezamenyo\r\n'),
(10201, 102, 'Bumbogo\r\n'),
(10202, 102, 'Gatsata\r\n'),
(10203, 102, 'Gikomero\r\n'),
(10204, 102, 'Gisozi\r\n'),
(10205, 102, 'Jabana\r\n'),
(10206, 102, 'Jali\r\n'),
(10207, 102, 'Kacyiru\r\n'),
(10208, 102, 'Kimihurura\r\n'),
(10209, 102, 'Kimironko\r\n'),
(10210, 102, 'Kinyinya\r\n'),
(10211, 102, 'Ndera\r\n'),
(10212, 102, 'Nduba\r\n'),
(10213, 102, 'Remera\r\n'),
(10214, 102, 'Rusororo\r\n'),
(10215, 102, 'Rutunga\r\n'),
(10301, 103, 'Gahanga\r\n'),
(10302, 103, 'Gatenga\r\n'),
(10303, 103, 'Gikondo\r\n'),
(10304, 103, 'Kagarama\r\n'),
(10305, 103, 'Kanombe\r\n'),
(10306, 103, 'Kicukiro\r\n'),
(10307, 103, 'Kigarama\r\n'),
(10308, 103, 'Masaka\r\n'),
(10309, 103, 'Niboye\r\n'),
(10310, 103, 'Nyarugunga\r\n'),
(20101, 201, 'Busasamana\r\n'),
(20102, 201, 'Busoro\r\n'),
(20103, 201, 'Cyabakamyi\r\n'),
(20104, 201, 'Kibilizi\r\n'),
(20105, 201, 'Kigoma\r\n'),
(20106, 201, 'Mukingo\r\n'),
(20107, 201, 'Muyira\r\n'),
(20108, 201, 'Ntyazo\r\n'),
(20109, 201, 'Nyagisozi\r\n'),
(20110, 201, 'Rwabicuma\r\n'),
(20201, 202, 'Gikonko\r\n'),
(20202, 202, 'Gishubi\r\n'),
(20203, 202, 'Kansi\r\n'),
(20204, 202, 'Kibirizi\r\n'),
(20205, 202, 'Kigembe\r\n'),
(20206, 202, 'Mamba\r\n'),
(20207, 202, 'Muganza\r\n'),
(20208, 202, 'Mugombwa\r\n'),
(20209, 202, 'Mukindo\r\n'),
(20210, 202, 'Musha\r\n'),
(20211, 202, 'Ndora\r\n'),
(20212, 202, 'Nyanza\r\n'),
(20213, 202, 'Save\r\n'),
(20301, 203, 'Busanze\r\n'),
(20302, 203, 'Cyahinda\r\n'),
(20303, 203, 'Kibeho\r\n'),
(20304, 203, 'Kivu\r\n'),
(20305, 203, 'Mata\r\n'),
(20306, 203, 'Muganza\r\n'),
(20307, 203, 'Munini\r\n'),
(20308, 203, 'Ngera\r\n'),
(20309, 203, 'Ngoma\r\n'),
(20310, 203, 'Nyabimata\r\n'),
(20311, 203, 'Nyagisozi\r\n'),
(20312, 203, 'Ruheru\r\n'),
(20313, 203, 'Ruramba\r\n'),
(20314, 203, 'Rusenge\r\n'),
(20401, 204, 'Gishamvu\r\n'),
(20402, 204, 'Huye\r\n'),
(20403, 204, 'Karama\r\n'),
(20404, 204, 'Kigoma\r\n'),
(20405, 204, 'Kinazi\r\n'),
(20406, 204, 'Maraba\r\n'),
(20407, 204, 'Mbazi\r\n'),
(20408, 204, 'Mukura\r\n'),
(20409, 204, 'Ngoma\r\n'),
(20410, 204, 'Ruhashya\r\n'),
(20411, 204, 'Rusatira\r\n'),
(20412, 204, 'Rwaniro\r\n'),
(20413, 204, 'Simbi\r\n'),
(20414, 204, 'Tumba\r\n'),
(20501, 205, 'Buruhukiro\r\n'),
(20502, 205, 'Cyanika\r\n'),
(20503, 205, 'Gasaka\r\n'),
(20504, 205, 'Gatare\r\n'),
(20505, 205, 'Kaduha\r\n'),
(20506, 205, 'Kamegeri\r\n'),
(20507, 205, 'Kibirizi\r\n'),
(20508, 205, 'Kibumbwe\r\n'),
(20509, 205, 'Kitabi\r\n'),
(20510, 205, 'Mbazi\r\n'),
(20511, 205, 'Mugano\r\n'),
(20512, 205, 'Musange\r\n'),
(20513, 205, 'Musebeya\r\n'),
(20514, 205, 'Mushubi\r\n'),
(20515, 205, 'Nkomane\r\n'),
(20516, 205, 'Tare\r\n'),
(20517, 205, 'Uwinkingi\r\n'),
(20601, 206, 'Bweramana\r\n'),
(20602, 206, 'Byimana\r\n'),
(20603, 206, 'Kabagali\r\n'),
(20604, 206, 'Kinazi\r\n'),
(20605, 206, 'Kinihira\r\n'),
(20606, 206, 'Mbuye\r\n'),
(20607, 206, 'Mwendo\r\n'),
(20608, 206, 'Ntongwe\r\n'),
(20609, 206, 'Ruhango\r\n'),
(20701, 207, 'Cyeza\r\n'),
(20702, 207, 'Kabacuzi\r\n'),
(20703, 207, 'Kibangu\r\n'),
(20704, 207, 'Kiyumba\r\n'),
(20705, 207, 'Muhanga\r\n'),
(20706, 207, 'Mushishiro\r\n'),
(20707, 207, 'Nyabinoni\r\n'),
(20708, 207, 'Nyamabuye\r\n'),
(20709, 207, 'Nyarusange\r\n'),
(20710, 207, 'Rongi\r\n'),
(20711, 207, 'Rugendabari\r\n'),
(20712, 207, 'Shyogwe\r\n'),
(20801, 208, 'Gacurabwenge\r\n'),
(20802, 208, 'Karama\r\n'),
(20803, 208, 'Kayenzi\r\n'),
(20804, 208, 'Kayumbu\r\n'),
(20805, 208, 'Mugina\r\n'),
(20806, 208, 'Musambira\r\n'),
(20807, 208, 'Ngamba\r\n'),
(20808, 208, 'Nyamiyaga\r\n'),
(20809, 208, 'Nyarubaka\r\n'),
(20810, 208, 'Rugarika\r\n'),
(20811, 208, 'Rukoma\r\n'),
(20812, 208, 'Runda\r\n'),
(30101, 301, 'Bwishyura\r\n'),
(30102, 301, 'Gashari\r\n'),
(30103, 301, 'Gishyita\r\n'),
(30104, 301, 'Gitesi\r\n'),
(30105, 301, 'Mubuga\r\n'),
(30106, 301, 'Murambi\r\n'),
(30107, 301, 'Murundi\r\n'),
(30108, 301, 'Mutuntu\r\n'),
(30109, 301, 'Rubengera\r\n'),
(30110, 301, 'Rugabano\r\n'),
(30111, 301, 'Ruganda\r\n'),
(30112, 301, 'Rwankuba\r\n'),
(30113, 301, 'Twumba\r\n'),
(30201, 302, 'Boneza\r\n'),
(30202, 302, 'Gihango\r\n'),
(30203, 302, 'Kigeyo\r\n'),
(30204, 302, 'Kivumu\r\n'),
(30205, 302, 'Manihira\r\n'),
(30206, 302, 'Mukura\r\n'),
(30207, 302, 'Murunda\r\n'),
(30208, 302, 'Musasa\r\n'),
(30209, 302, 'Mushonyi\r\n'),
(30210, 302, 'Mushubati\r\n'),
(30211, 302, 'Nyabirasi\r\n'),
(30212, 302, 'Ruhango\r\n'),
(30213, 302, 'Rusebeya\r\n'),
(30301, 303, 'Bugeshi\r\n'),
(30302, 303, 'Busasamana\r\n'),
(30303, 303, 'Cyanzarwe\r\n'),
(30304, 303, 'Gisenyi\r\n'),
(30305, 303, 'Kanama\r\n'),
(30306, 303, 'Kanzenze\r\n'),
(30307, 303, 'Mudende\r\n'),
(30308, 303, 'Nyakiriba\r\n'),
(30309, 303, 'Nyamyumba\r\n'),
(30310, 303, 'Nyundo\r\n'),
(30311, 303, 'Rubavu\r\n'),
(30312, 303, 'Rugerero\r\n'),
(30401, 304, 'Bigogwe\r\n'),
(30402, 304, 'Jenda\r\n'),
(30403, 304, 'Jomba\r\n'),
(30404, 304, 'Kabatwa\r\n'),
(30405, 304, 'Karago\r\n'),
(30406, 304, 'Kintobo\r\n'),
(30407, 304, 'Mukamira\r\n'),
(30408, 304, 'Muringa\r\n'),
(30409, 304, 'Rambura\r\n'),
(30410, 304, 'Rugera\r\n'),
(30411, 304, 'Rurembo\r\n'),
(30412, 304, 'Shyira\r\n'),
(30501, 305, 'BWIRA\r\n'),
(30502, 305, 'GATUMBA\r\n'),
(30503, 305, 'HINDIRO\r\n'),
(30504, 305, 'KABAYA\r\n'),
(30505, 305, 'KAGEYO\r\n'),
(30506, 305, 'KAVUMU\r\n'),
(30507, 305, 'MATYAZO\r\n'),
(30508, 305, 'MUHANDA\r\n'),
(30509, 305, 'MUHORORO\r\n'),
(30510, 305, 'NDARO\r\n'),
(30511, 305, 'NGORORERO\r\n'),
(30512, 305, 'NYANGE\r\n'),
(30513, 305, 'SOVU\r\n'),
(30601, 306, 'Bugarama\r\n'),
(30602, 306, 'Butare\r\n'),
(30603, 306, 'Bweyeye\r\n'),
(30604, 306, 'Gashonga\r\n'),
(30605, 306, 'Giheke\r\n'),
(30606, 306, 'Gihundwe\r\n'),
(30607, 306, 'Gikundamvura\r\n'),
(30608, 306, 'Gitambi\r\n'),
(30609, 306, 'Kamembe\r\n'),
(30610, 306, 'Muganza\r\n'),
(30611, 306, 'Mururu\r\n'),
(30612, 306, 'Nkanka\r\n'),
(30613, 306, 'Nkombo\r\n'),
(30614, 306, 'Nkungu\r\n'),
(30615, 306, 'Nyakabuye\r\n'),
(30616, 306, 'Nyakarenzo\r\n'),
(30617, 306, 'Nzahaha\r\n'),
(30618, 306, 'Rwimbogo\r\n'),
(30701, 307, 'Bushekeri\r\n'),
(30702, 307, 'Bushenge\r\n'),
(30703, 307, 'Cyato\r\n'),
(30704, 307, 'Gihombo\r\n'),
(30705, 307, 'Kagano\r\n'),
(30706, 307, 'Kanjongo\r\n'),
(30707, 307, 'Karambi\r\n'),
(30708, 307, 'Karengera\r\n'),
(30709, 307, 'Kirimbi\r\n'),
(30710, 307, 'Macuba\r\n'),
(30711, 307, 'Mahembe\r\n'),
(30712, 307, 'Nyabitekeri\r\n'),
(30713, 307, 'Rangiro\r\n'),
(30714, 307, 'Ruharambuga\r\n'),
(30715, 307, 'Shangi\r\n'),
(40101, 401, 'BASE\r\n'),
(40102, 401, 'BUREGA\r\n'),
(40103, 401, 'BUSHOKI\r\n'),
(40104, 401, 'BUYOGA\r\n'),
(40105, 401, 'CYINZUZI\r\n'),
(40106, 401, 'CYUNGO\r\n'),
(40107, 401, 'KINIHIRA\r\n'),
(40108, 401, 'KISARO\r\n'),
(40109, 401, 'MASORO\r\n'),
(40110, 401, 'MBOGO\r\n'),
(40111, 401, 'MURAMBI\r\n'),
(40112, 401, 'NGOMA\r\n'),
(40113, 401, 'NTARABANA\r\n'),
(40114, 401, 'RUKOZO\r\n'),
(40115, 401, 'RUSIGA\r\n'),
(40116, 401, 'SHYORONGI\r\n'),
(40117, 401, 'TUMBA\r\n'),
(40201, 402, 'Busengo \r\n'),
(40202, 402, 'Coko \r\n'),
(40203, 402, 'Cyabingo \r\n'),
(40204, 402, 'Gakenke \r\n'),
(40205, 402, 'Gashenyi \r\n'),
(40206, 402, 'Janja \r\n'),
(40207, 402, 'Kamubuga \r\n'),
(40208, 402, 'Karambo \r\n'),
(40209, 402, 'Kivuruga \r\n'),
(40210, 402, 'Mataba \r\n'),
(40211, 402, 'Minazi \r\n'),
(40212, 402, 'Mugunga \r\n'),
(40213, 402, 'Muhondo \r\n'),
(40214, 402, 'Muyongwe \r\n'),
(40215, 402, 'Muzo \r\n'),
(40216, 402, 'Nemba \r\n'),
(40217, 402, 'Ruli \r\n'),
(40218, 402, 'Rusasa \r\n'),
(40219, 402, 'Rushashi \r\n'),
(40301, 403, 'Busogo\r\n'),
(40302, 403, 'Cyuve\r\n'),
(40303, 403, 'Gacaca\r\n'),
(40304, 403, 'Gashaki\r\n'),
(40305, 403, 'Gataraga\r\n'),
(40306, 403, 'Kimonyi\r\n'),
(40307, 403, 'Kinigi\r\n'),
(40308, 403, 'Muhoza\r\n'),
(40309, 403, 'Muko\r\n'),
(40310, 403, 'Musanze\r\n'),
(40311, 403, 'Nkotsi\r\n'),
(40312, 403, 'Nyange\r\n'),
(40313, 403, 'Remera\r\n'),
(40314, 403, 'Rwaza\r\n'),
(40315, 403, 'Shingiro\r\n'),
(40401, 404, 'Bungwe\r\n'),
(40402, 404, 'Butaro\r\n'),
(40403, 404, 'Cyanika\r\n'),
(40404, 404, 'Cyeru\r\n'),
(40405, 404, 'Gahunga\r\n'),
(40406, 404, 'Gatebe\r\n'),
(40407, 404, 'Gitovu\r\n'),
(40408, 404, 'Kagogo\r\n'),
(40409, 404, 'Kinoni\r\n'),
(40410, 404, 'Kinyababa\r\n'),
(40411, 404, 'Kivuye\r\n'),
(40412, 404, 'Nemba\r\n'),
(40413, 404, 'Rugarama\r\n'),
(40414, 404, 'Rugengabari\r\n'),
(40415, 404, 'Ruhunde\r\n'),
(40416, 404, 'Rusarabuye\r\n'),
(40417, 404, 'Rwerere\r\n'),
(40501, 405, 'Bukure\r\n'),
(40502, 405, 'Bwisige\r\n'),
(40503, 405, 'Byumba\r\n'),
(40504, 405, 'Cyumba\r\n'),
(40505, 405, 'Giti\r\n'),
(40506, 405, 'Kageyo\r\n'),
(40507, 405, 'Kaniga\r\n'),
(40508, 405, 'Manyagiro\r\n'),
(40509, 405, 'Miyove\r\n'),
(40510, 405, 'Mukarange\r\n'),
(40511, 405, 'Muko\r\n'),
(40512, 405, 'Mutete\r\n'),
(40513, 405, 'Nyamiyaga\r\n'),
(40514, 405, 'Nyankenke\r\n'),
(40515, 405, 'Rubaya\r\n'),
(40516, 405, 'Rukomo\r\n'),
(40517, 405, 'Rushaki\r\n'),
(40518, 405, 'Rutare\r\n'),
(40519, 405, 'Ruvune\r\n'),
(40520, 405, 'Rwamiko\r\n'),
(40521, 405, 'Shangasha\r\n'),
(50101, 501, 'Fumbwe\r\n'),
(50102, 501, 'Gahengeri\r\n'),
(50103, 501, 'Gishali\r\n'),
(50104, 501, 'Karenge\r\n'),
(50105, 501, 'Kigabiro\r\n'),
(50106, 501, 'Muhazi\r\n'),
(50107, 501, 'Munyaga\r\n'),
(50108, 501, 'Munyiginya\r\n'),
(50109, 501, 'Musha\r\n'),
(50110, 501, 'Muyumbu\r\n'),
(50111, 501, 'Mwulire\r\n'),
(50112, 501, 'Nyakaliro\r\n'),
(50113, 501, 'Nzige\r\n'),
(50114, 501, 'Rubona\r\n'),
(50201, 502, 'GATUNDA\r\n'),
(50202, 502, 'KARAMA\r\n'),
(50203, 502, 'KARANGAZI\r\n'),
(50204, 502, 'KATABAGEMU\r\n'),
(50205, 502, 'KIYOMBE\r\n'),
(50206, 502, 'MATIMBA\r\n'),
(50207, 502, 'MIMURI\r\n'),
(50208, 502, 'MUKAMA\r\n'),
(50209, 502, 'MUSHERI\r\n'),
(50210, 502, 'NYAGATARE\r\n'),
(50211, 502, 'RUKOMO\r\n'),
(50212, 502, 'RWEMPASHA\r\n'),
(50213, 502, 'RWIMIYAGA\r\n'),
(50214, 502, 'TABAGWE\r\n'),
(50301, 503, 'Gasange\r\n'),
(50302, 503, 'Gatsibo\r\n'),
(50303, 503, 'Gitoki\r\n'),
(50304, 503, 'Kabarore\r\n'),
(50305, 503, 'Kageyo\r\n'),
(50306, 503, 'Kiramuruzi\r\n'),
(50307, 503, 'Kiziguro\r\n'),
(50308, 503, 'Muhura\r\n'),
(50309, 503, 'Murambi\r\n'),
(50310, 503, 'Ngarama\r\n'),
(50311, 503, 'Nyagihanga\r\n'),
(50312, 503, 'Remera\r\n'),
(50313, 503, 'Rugarama\r\n'),
(50314, 503, 'Rwimbogo\r\n'),
(50401, 504, 'Gahini\r\n'),
(50402, 504, 'Kabare\r\n'),
(50403, 504, 'Kabarondo\r\n'),
(50404, 504, 'Mukarange\r\n'),
(50405, 504, 'Murama\r\n'),
(50406, 504, 'Murundi\r\n'),
(50407, 504, 'Mwiri\r\n'),
(50408, 504, 'Ndego\r\n'),
(50409, 504, 'Nyamirama\r\n'),
(50410, 504, 'Rukara\r\n'),
(50411, 504, 'Ruramira\r\n'),
(50412, 504, 'Rwinkwavu\r\n'),
(50501, 505, 'Gahara\r\n'),
(50502, 505, 'Gatore\r\n'),
(50503, 505, 'Kigarama\r\n'),
(50504, 505, 'Kigina\r\n'),
(50505, 505, 'Kirehe\r\n'),
(50506, 505, 'Mahama\r\n'),
(50507, 505, 'Mpanga\r\n'),
(50508, 505, 'Musaza\r\n'),
(50509, 505, 'Mushikiri\r\n'),
(50510, 505, 'Nasho\r\n'),
(50511, 505, 'Nyamugari\r\n'),
(50512, 505, 'Nyarubuye\r\n'),
(50601, 506, 'Gashanda\r\n'),
(50602, 506, 'Jarama\r\n'),
(50603, 506, 'Karembo\r\n'),
(50604, 506, 'Kazo\r\n'),
(50605, 506, 'Kibungo\r\n'),
(50606, 506, 'Mugesera\r\n'),
(50607, 506, 'Murama\r\n'),
(50608, 506, 'Mutenderi\r\n'),
(50609, 506, 'Remera\r\n'),
(50610, 506, 'Rukira\r\n'),
(50611, 506, 'Rukumberi\r\n'),
(50612, 506, 'Rurenge\r\n'),
(50613, 506, 'Sake\r\n'),
(50614, 506, 'Zaza\r\n'),
(50701, 507, 'Gashora\r\n'),
(50702, 507, 'Juru\r\n'),
(50703, 507, 'Kamabuye\r\n'),
(50704, 507, 'Mareba\r\n'),
(50705, 507, 'Mayange\r\n'),
(50706, 507, 'Musenyi\r\n'),
(50707, 507, 'Mwogo\r\n'),
(50708, 507, 'Ngeruka\r\n'),
(50709, 507, 'Ntarama\r\n'),
(50710, 507, 'Nyamata\r\n'),
(50711, 507, 'Nyarugenge\r\n'),
(50712, 507, 'Ririma\r\n'),
(50713, 507, 'Ruhuha\r\n'),
(50714, 507, 'Rweru\r\n'),
(50715, 507, 'Shyara\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_id` int(11) NOT NULL,
  `fullnames` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `districtId` int(11) NOT NULL,
  `sectorId` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_id`, `fullnames`, `email`, `districtId`, `sectorId`, `username`, `password`) VALUES
(3, 'Kenny', 'imenkenny@gmail.com', 0, 0, '', '$2y$10$En5TRU9MpVZfmPX5nPkpU..Ov1HRDg14h'),
(4, 'kalasa', 'kalasaiva@gmail.com', 0, 0, '', '$2y$10$f7Mqg9r5jKhB9Ry5zeAwkeWmoevbckT6C'),
(8, 'Kalasa Ivan', 'NICEE@GMAIL.COM', 0, 10215, 'kalivanis', '1164d393b81e08039fb8f4dbcfe6bc1e3f0570dc'),
(11, 'Kalasa Ivan', 'nzakiramuhoza@gmail.com', 102, 10215, 'kalasanzakira', 'bf779358f3c58c8fa6b1083d2905d3b251acc153'),
(12, 'MUHOZA', 'muhoza@gmail.com', 102, 10215, 'muhozaiva', '081eae8c60e8a1ed9d418cf483fa85289ab982bf'),
(13, 'Kalasa Ivan', 'nm@gmail.com', 102, 10201, 'kennyimena', '267f05a19e1931508b28aaac5e166a9e049425c3'),
(14, 'kali', 'kalingombe@gmail.com', 205, 20514, 'kalingombe', 'ba1930a1358f8adf431fa4c88356bb633f29b8cf');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`),
  ADD KEY `user_rela` (`owner`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `province_id` (`province_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `sector`
--
ALTER TABLE `sector`
  ADD PRIMARY KEY (`sector_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_id`),
  ADD UNIQUE KEY `Email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `roleId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `user_rela` FOREIGN KEY (`owner`) REFERENCES `users` (`User_id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`roleId`) REFERENCES `users` (`User_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
