-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:8889
-- Tiempo de generación: 17-02-2022 a las 18:42:43
-- Versión del servidor: 5.7.34
-- Versión de PHP: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BD_Reecock`
--
CREATE DATABASE IF NOT EXISTS `BD_Reecock` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `BD_Reecock`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Juguetes'),
(2, 'Complementos'),
(3, 'Vibradores'),
(4, 'Succionadores'),
(5, 'Bolas chinas'),
(6, 'Para el pene'),
(7, 'Sexo anal'),
(8, 'Fetiches'),
(9, 'Lubricantes'),
(10, 'Lencería'),
(11, 'Salud y preservativos'),
(12, 'Estimulantes'),
(13, 'Destacados'),
(14, 'Para parejas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category_product`
--

DROP TABLE IF EXISTS `category_product`;
CREATE TABLE `category_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `category_product`
--

INSERT INTO `category_product` (`id`, `category_id`, `product_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 3, 1),
(11, 3, 2),
(12, 3, 3),
(13, 3, 4),
(14, 3, 5),
(15, 3, 6),
(16, 3, 7),
(17, 3, 8),
(18, 3, 9),
(19, 14, 6),
(20, 13, 9),
(21, 1, 10),
(22, 1, 11),
(23, 1, 12),
(24, 1, 13),
(25, 1, 14),
(26, 1, 15),
(27, 1, 16),
(28, 1, 17),
(29, 1, 18),
(30, 4, 10),
(31, 4, 11),
(32, 4, 12),
(33, 4, 13),
(34, 4, 14),
(35, 4, 15),
(36, 4, 16),
(37, 4, 17),
(38, 4, 18),
(39, 13, 14),
(40, 13, 16),
(41, 13, 18),
(42, 1, 19),
(43, 1, 20),
(44, 1, 21),
(45, 1, 22),
(46, 1, 23),
(47, 1, 24),
(48, 5, 19),
(49, 5, 20),
(50, 5, 21),
(51, 5, 22),
(52, 5, 23),
(53, 5, 24),
(54, 13, 22),
(55, 13, 24),
(56, 1, 25),
(57, 1, 26),
(58, 1, 27),
(59, 1, 28),
(60, 1, 29),
(61, 1, 30),
(62, 1, 31),
(63, 1, 32),
(64, 1, 33),
(65, 6, 25),
(66, 6, 26),
(67, 6, 27),
(68, 6, 28),
(69, 6, 29),
(70, 6, 30),
(71, 6, 31),
(72, 6, 32),
(73, 6, 33),
(74, 13, 31),
(75, 13, 28),
(76, 1, 34),
(77, 1, 35),
(78, 1, 36),
(79, 1, 37),
(80, 1, 38),
(81, 1, 39),
(82, 1, 40),
(83, 1, 41),
(84, 1, 42),
(85, 7, 34),
(86, 7, 35),
(87, 7, 36),
(88, 7, 37),
(89, 7, 38),
(90, 7, 39),
(91, 7, 40),
(92, 7, 41),
(93, 7, 42),
(94, 13, 37),
(95, 14, 41),
(96, 13, 40),
(97, 8, 40),
(98, 1, 43),
(99, 1, 44),
(100, 1, 45),
(101, 1, 46),
(102, 1, 47),
(103, 1, 48),
(104, 1, 49),
(105, 1, 50),
(106, 1, 51),
(107, 8, 43),
(108, 8, 44),
(109, 8, 45),
(110, 8, 46),
(111, 8, 47),
(112, 8, 48),
(113, 8, 49),
(114, 8, 50),
(115, 8, 51),
(116, 14, 43),
(117, 13, 45),
(118, 14, 45),
(119, 14, 49),
(120, 13, 50),
(121, 14, 50),
(122, 14, 46),
(123, 2, 52),
(124, 2, 53),
(125, 2, 54),
(126, 2, 55),
(127, 2, 56),
(128, 2, 57),
(129, 2, 58),
(130, 2, 59),
(131, 2, 60),
(132, 9, 52),
(133, 9, 53),
(134, 9, 54),
(135, 9, 55),
(136, 9, 56),
(137, 9, 57),
(138, 9, 58),
(139, 9, 59),
(140, 9, 60),
(141, 14, 58),
(142, 13, 58),
(143, 13, 52),
(144, 14, 52),
(145, 2, 61),
(146, 2, 62),
(147, 2, 63),
(148, 2, 64),
(149, 2, 65),
(150, 2, 66),
(151, 2, 67),
(152, 2, 68),
(153, 2, 69),
(154, 10, 61),
(155, 10, 62),
(156, 10, 63),
(157, 10, 64),
(158, 10, 65),
(159, 10, 66),
(160, 10, 67),
(161, 10, 68),
(162, 10, 69),
(163, 13, 62),
(164, 8, 67),
(165, 8, 68),
(166, 8, 69),
(167, 13, 63),
(168, 2, 70),
(169, 2, 71),
(170, 2, 72),
(171, 2, 73),
(172, 2, 74),
(173, 2, 75),
(174, 2, 76),
(175, 2, 77),
(176, 2, 78),
(177, 12, 70),
(178, 12, 71),
(179, 12, 72),
(180, 12, 73),
(181, 12, 74),
(182, 12, 75),
(183, 12, 76),
(184, 12, 77),
(185, 12, 78),
(186, 13, 78),
(187, 14, 78),
(188, 13, 76),
(189, 8, 75),
(190, 13, 75),
(191, 14, 75),
(192, 13, 72),
(193, 13, 71),
(194, 2, 79),
(195, 2, 80),
(196, 2, 81),
(197, 2, 82),
(198, 2, 83),
(199, 2, 84),
(200, 2, 85),
(201, 2, 86),
(202, 2, 87),
(203, 11, 79),
(204, 11, 80),
(205, 11, 81),
(206, 11, 82),
(207, 11, 83),
(208, 11, 84),
(209, 11, 85),
(210, 11, 86),
(211, 11, 87),
(212, 13, 79),
(213, 13, 83),
(214, 14, 83),
(215, 13, 85),
(216, 14, 87);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `directions`
--

DROP TABLE IF EXISTS `directions`;
CREATE TABLE `directions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `door` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cp` int(11) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2022_02_15_121655_create_sessions_table', 1),
(7, '2022_02_15_145208_create_orders_table', 1),
(8, '2022_02_15_145223_create_order_items_table', 1),
(9, '2022_02_15_145232_create_directions_table', 1),
(10, '2022_02_15_145242_create_categories_table', 1),
(11, '2022_02_15_145246_create_products_table', 1),
(12, '2022_02_15_145319_category_product', 1),
(13, '2022_02_15_145330_create_user_product_lists_table', 1),
(14, '2022_02_15_145339_add_fields_to_users_table', 1),
(15, '2022_02_15_145343_add_foreigns_to_users_table', 1),
(16, '2022_02_15_145348_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `current_state` int(11) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` double NOT NULL,
  `amount` int(11) NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `technical_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `technical_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `tax` double NOT NULL,
  `discount` double NOT NULL,
  `stock` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `discount_end` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `product_photo_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `technical_name`, `description`, `technical_description`, `price`, `tax`, `discount`, `stock`, `sold`, `discount_end`, `product_photo_path`, `visible`, `created_at`, `updated_at`) VALUES
(1, 'Rita', 'Vibrador conejito', 'Créenos, Rita y tú os haréis inseparables. Sobre todo, cuando te demuestre todo lo que es capaz de hacer, más allá de esa textura tan agradable que tiene. Si lo puedes tener todo no te conformes con cualquier cosa, ¡quédate con el vibrador conejito con efecto calor Rita!', '18cm x 3,5cm', 70, 5, 15, 150, 27, '2022-02-23', 'images/Rita', 1, NULL, NULL),
(2, 'Dibu', 'Vibrador clitorial', '¿Y si en lugar de un respiro lo que te mereces es un orgasmo? Pues disfrútalo con las potentes y deliciosas caricias que el masajeador Dibu de Reecock tiene preparadas para ti. Un poderoso masajeador con forma de micro que te hará sentir un placer increíble.', '20cm x 4,5cm', 45, 7, 10, 0, 140, '2022-02-23', 'images/Dibu', 0, NULL, NULL),
(3, 'Paco', 'Vibrador clitorial', 'Paco es un vibrador multiusos con el que estimularás diferentes zonas erógenas de tu cuerpo. Gracias a su forma ergonómica y su material flexible podrás colocarlo o introducirlo donde más desees y poner a prueba sus 10 modos de vibración.', '8cm x 3,5cm', 40, 10, 12, 75, 35, '2022-02-23', 'images/Paco', 1, NULL, NULL),
(4, 'Lore', 'Anillo vibrador', 'El 76% de las personas con vulva necesitan la estimulación del clítoris para llegar al orgasmo. Y a las personas con pene les encanta la estrechez. Es por ello que nace Lore, el anillo para pene con estimulación para clítoris que consigue que ambos disfrutéis al máximo.', '7,5cm x 4,5cm x 2,5cm', 32, 4, 6, 23, 107, '2022-02-23', 'images/Lore', 0, NULL, NULL),
(5, 'Chimpance', 'Mini vibrador', 'La similitud de la bala vibradora Chimpance con un pintalabios es increíble. ¡Como dos gotas de agua! Llévatelo donde quieras sin que nadie sospeche y podrás darte un capricho (o hablando en plata, un orgasmo o varios).\n\nAdemás, puedes dejarlo tranquilamente en el baño, que a nadie se le ocurrirá pulsar el botón que tiene debajo. Y si alguien lo hace, sabrás que esta persona también lo tiene.', '7cm x 1,5cm', 25, 5, 5, 88, 32, '2022-02-23', 'images/Chimpance', 1, NULL, NULL),
(6, 'Tuko', 'Vibrador parejas', 'Después de tantas peticiones recibidas, ¡ya tenemos aquí el vibrador pensado para la doble penetración! Con 3 velocidades y 6 modos de vibración, Tuko diseñado para mejorar aún más las relaciones sexuales entre personas con vagina y también para estimular analmente. ¡Preparaos para vibrar de placer!', 'Medidas de la parte larga: 13 cm de largo (insertables) y 3,1 cm de diámetro.\nMedidas de la parte corta: 7,5 cm de largo (insertables) y 3,6 cm de diámetro.', 47, 8, 14, 21, 119, '2022-02-23', 'images/Tuko', 1, NULL, NULL),
(7, 'Maroon', 'Vibrador conejito', 'Lo que necesitas es un todoterreno en la cama. Que suba, que baje, que se caliente, que funcione debajo del agua, que estimule dos de tus puntos erógenos más potentes al mismo tiempo... Alguien como el vibrador conejito Maroon.', '21cm(15cm insertables) x 3cm', 65, 10, 20, 0, 95, '2022-02-23', 'images/Maroon', 0, NULL, NULL),
(8, 'Lister', 'Vibrador vaginal', 'Lister es el vibrador que tu zona G estaba esperando. Su forma de pirulí, su potencia y su textura con ondas y rombos son ideales para estimular una de las zonas erógenas más relevantes de tus genitales. ¡Y además es superelegante!', '14cm x 3,4cm', 39, 6, 8, 34, 116, '2022-02-23', 'images/Lister', 1, NULL, NULL),
(9, 'Pepa', 'Vibrador conejito', 'El vibrador conejito Pepa no es un vibrador cualquiera. ¡Tiene un sistema de bolas internas que se mueven de arriba abajo a tres velocidades distintas! ¿Te lo puedes creer? ¡Lo nunca visto! Esta función te dejará anonadadx, y es que no es de extrañar, seguramente nunca hayas probado nada igual.\n\nPero esto no es todo, Pepa tiene un tamaño considerable, tanto de largo como de ancho, lo cual te ofrece una estimulación completa y, desde luego, muy novedosa. Y no podemos hablar de Pepi sin mencionar su capacidad de estimular el clítoris y la zona G a la perfección ¡y al mismo tiempo!\n\nCon Pepa los orgasmos serán muy, pero que muy intensos.', '20cm x 3,7cm', 55, 5, 10, 78, 42, '2022-02-23', 'images/Pepa', 1, NULL, NULL),
(10, 'Rambo', 'Succionador de clítoris', 'Rambo es, sencillamente, el succionador de clítoris más sensitivo y progresivo de Reecock. Disfruta de ti mismx, descúbrete, suéltate el pelo, ¡baila y diviértete! Explórate y déjate llevar hasta el multiorgasmo y más allá... ¡Encuentra tu punto!', '12,5cm x 5,6cm', 35, 10, 5, 42, 68, '2022-02-23', 'images/Rambo', 1, NULL, NULL),
(11, 'Satisfayer Pro', 'Succionador de clítoris de Satisfayer', '¡Al fin ha llegado a Reecock el juguete más revolucionario de los últimos años! Te presentamos el nuevo Satisfayer Pro, de Satisfayer, ¡una auténtica máquina de hacer orgasmos! No te dejes engañar por su galardonado y cuqui diseño (ganador de un premio iF Design Award 2017 por su diseño rompedor).', '14cm x 10cm', 40, 7, 5, 0, 15, '2022-02-17 18:07:10', 'images/SatisfayerPro', 0, NULL, NULL),
(12, 'Satisfayer Curva', 'Succionador de clítoris de Satisfayer', 'Satisfayer Curva es la revolución de los succionadores Satisfyer ¡y no viene solo! Esta joya no solo te ofrece la emocionante combinación de intensas ondas de presión y diferentes programas de vibración.\n\nAdemás, podrás controlarlo a través de una aplicación gratuita con actualizaciones periódicas y diseñado conforme al RGPD que presta especial atención a la protección de datos. Y te asombrará su modo susurro. Para darte una mayor intimidad y que nadie se entere de lo que estás haciendo.', '13,5cm x 6cm', 45, 10, 7, 64, 56, '2022-02-23', 'images/SatisfayerCurva', 1, NULL, NULL),
(13, 'Sene', 'Succionador de clítoris', 'Ya lo tenemos aquí! El succionador Sene: el masajeador de clítoris que estimula TODO el clítoris gracias a su novedosa tecnologia SenSonic. Y cuando decimos todo el clítoris, no solo nos referimos a la puntita que todo el mundo conoce. El succionador de clítoris Sene va más allá.', '11,5cm x 5cm', 125, 15, 35, 21, 109, '2022-02-23', 'images/Sene', 1, NULL, NULL),
(14, 'Resolución', 'Succionador de clítoris', 'El clítoris es la puerta del placer, ese órgano destinado al disfrute que no solo se limita a la parte visible. Eso es solo la punta del iceberg. Tras él hay una parte no visible que esconde miles de terminaciones nerviosas que también podemos estimular. ¿Y cómo hacerlo? ¡Con Resolucion!\n\nEste juguete es ideal no solo para aquellas personas que desean una doble estimulación (clítoris y vagina), sino también para quienes quieren profundizar más en la parte no visible del clítoris. Gracias a sus ondas sónicas ofrece una estimulación superior, pero con la máxima suavidad. Por dentro, tampoco se queda atrás, su estimulador interno flexible con vibraciones muy potentes estimularán tu zona G para no dejar ningún flanco sin cubrir. ¡Objetivo cumplido!', '10,5cm x 5,5cm x 18cm', 160, 20, 40, 94, 56, '2022-02-23', 'images/Resolucion', 1, NULL, NULL),
(15, 'Telo', 'Succionador de clítoris', 'Cada vez hay más tipos de succionadores de clítoris: algunos son más grandes, otros más pequeños, algunos son más potentes aunque menos silenciosos y viceversa. Hay de todo tipo para que puedas elegir el mejor para ti, a la carta. Telo, es una de las últimas incorporaciones en esta categoría.\n\nLa gran novedad de este juguete es que podrás controlar las 12 intensidades de succión de Telo a través de una aplicación móvil. Pero Telo no es especial solo por eso, el diseño delgado y curvo de este succionador lo convierte en uno de los más ergonómicos del catálogo, es perfecto para utilizarlo durante la penetración.', '13,5cm x 2,4cm', 115, 15, 10, 0, 95, '2022-02-23', 'images/Telo', 0, NULL, NULL),
(16, 'Star', 'Succionador de clítoris', 'El succionador Star es el pequeño de la casa. Pero que su tamaño no te engañe, es muy potente y eficaz, tanto que es capaz de hacerte llegar al clímax en cuestión de minutos (¡o segundos!). Asegúrate un orgasmo diario con el succionador Star y luce una sonrisa permanente.', '8,5cm x 5cm', 65, 10, 5, 50, 50, '2022-02-23', 'images/Star', 1, NULL, NULL),
(17, 'Liberty', 'Succionador de clítoris', 'Siéntete libre, con ganas de todo y con una sonrisa tatuada en la cara gracias a tu dosis diaria de masturbación con el succionador de clítoris Liberty. Es tan cómodo y práctico que no podrás evitar meter la mano en el cajón y darte una alegría (o varias).', '10,2cm x 5,8cm', 100, 15, 20, 0, 75, '2022-02-23', 'images/Liberty', 0, NULL, NULL),
(18, 'Ditto', 'Succionador de clítoris', 'Lo más seguro es que no tengas ni idea de cómo funciona el succionador de clítoris Ditto. Y es que este juguete no es como los demás. Es único.\n\nAunque pueda parecer cuestión de diseño, su forma está pensada para darte el máximo placer estimulando el clítoris y la zona G a las mil maravillas. Además, puedes elegir si te apetece succión, vibración o ambas funciones a la vez. Básicamente Ditto lo tiene todo. Hasta se activa al entrar en contacto con tu piel y se apaga al dejar de estarlo gracias a la tecnología Smart Silence. De esta manera tendrás una experiencia más discreta.', '19,4cm x 13cm', 200, 15, 45, 17, 83, '2022-02-23', 'images/Ditto', 1, NULL, NULL),
(19, 'Edi', 'Bola china de bajo peso', 'Empieza a entrenar tu suelo pélvico y tu placer desde cero con la bola china Edi, ideal para aquellas personas que acaban de dar a luz, sufren de descenso de la matriz, o simplemente quieren empezar a trabajar su suelo pélvico con un peso bajo.\n\nEdi, además de tener un diseño sofisticado, está fabricada con silicona hipoalergénica de alta calidad, lo que la hace superagradable al tacto.', '4cm x 4cm', 15, 5, 0, 87, 43, '2022-02-23', 'images/Edi', 1, NULL, NULL),
(20, 'Capo', 'Bola china con control remoto', 'Estas bolas chinas son increíblemente fáciles de usar y muy, pero que muy eficaces. ¡Son lo más, vaya! No solo tienen 3 pesos intercambiables, sino que también disponen de 10 funciones de vibración (3 intensidades y 7 modos) para que puedas tonificar tu suelo pélvico mientras realizas movimientos suaves, como por ejemplo, caminar.\n\nAdemás, para tu comodidad, puedes controlar la intensidad y modos de vibración con el control de mando a distancia que viene incluido.', '15cm x 3,5cm', 55, 10, 5, 0, 150, '2022-02-23', 'images/Capo', 0, NULL, NULL),
(21, 'Mel', 'Salud pelvica', 'Tengas la edad que tengas, trabajar el suelo pélvico es muy importante. Más de lo que crees. Con los ejercicios de Kegel y un ejercitador como Mel, además de obtener beneficios para tu salud íntima, conseguirás mejorar tu vida sexual. Parece magia, ¿verdad?', '6,7cm x 3,5cm', 35, 5, 5, 87, 23, '2022-02-23', 'images/Mel', 1, NULL, NULL),
(22, 'Gloom', 'Bola china con control remoto', 'Estas contentx con tu vida sexual y nunca te has planteado que puedes mejorarla con juguetes tan sencillos y cómodos de usar como las bolas chinas Gloom. Pero... ¿cuáles son los resultados? Entre los múltiples beneficios de entrenar tu suelo pélvico con bolas chinas como aumentar la lubricación natural, aumentar el deseo sexual, evitar la incontinencia urinaria... Las bolas chinas Gloom harán que tus orgasmos sean más largos!!! ¿Te imaginas un orgasmo de hasta 15 segundos?', '18cm x 3,4cm', 85, 15, 10, 102, 48, '2022-02-23', 'images/Gloom', 1, NULL, NULL),
(23, 'Ropu', 'Dilatador vaginal', 'Hay veces que la penetración puede ser dolorosa y no sabemos muy bien por qué. Este dolor puede estar relacionado con el vaginismo o la atrofia vaginal y es importante prestarle atención para poder disfrutar sin molestias de las relaciones sexuales con penetración.\n\nCon una pauta de tu fisioterapeuta y los dilatadores vaginales Ropu conseguirás mejorar el estado de tu vagina y, con ello, tu vida íntima.', '10cm x 1,5cm', 40, 5, 10, 0, 115, '2022-02-23', 'images/Ropu', 0, NULL, NULL),
(24, 'Uri', 'Bolas chinas', 'Uri es el kit de entrenamiento perfecto para fortalecer el suelo pélvico para personas experimentadas. Quizás pienses que solo son otras bolas chinas más, pero su apariencia engaña. Uri son pesas o conos vaginales.\n\nLa principal diferencia es que las bolas chinas tienen una bola de metal en su interior que vibra al estar en movimiento. Con este sistema, los músculos del suelo pélvico se contraen de forma involuntaria. Mientras que las pesas vaginales como Uri no tienen estas bolas y, como su nombre indica, son pesas. Por lo tanto, para fortalecer la zona, es necesario que tú, voluntariamente, contraigas y relajes los músculos. Es más fácil de lo que parece y los resultados son TOP.', '3cm', 20, 5, 0, 46, 64, '2022-02-23', 'images/Uri', 1, NULL, NULL),
(25, 'Rio', 'Anillo vibrador', 'El 76% de las personas con vulva necesitan la estimulación del clítoris para llegar al orgasmo. Y a las personas con pene les encanta la estrechez. Es por ello que nace Rio, el anillo para pene con estimulación para clítoris que consigue que ambxs disfrutéis al máximo.', '7,5cm x 4,2cm', 35, 10, 4, 46, 74, '2022-02-23', 'images/Rio', 1, NULL, NULL),
(26, 'Paque', 'Masturbador de pene de un solo uso', '¿Qué fue antes el huevo o la gallina? Nunca lo sabremos… Lo único que tenemos claro es que seguro que va a haber un antes y un después cuando pruebes el masturbador para pene Paque.\n\nLlevas mucho tiempo sirviéndote tú mismo y eres quien mejor sabe cómo, dónde y cuándo tocarte. Pero nunca te has planteado incrementar tu placer. ¿Para qué, si ya tengo suficiente? Conformarse está muy bien, pero conseguir el sobresaliente no es tan complicado con este juguete que intensificará tu placer en solitario.', '6cm x 4,1cm', 6, 3, 0, 54, 46, '2022-02-23', 'images/Paque', 1, NULL, NULL),
(27, 'Simba', 'Masturbador de pene', 'Las vulvas ya bailan al ritmo de Rambo... ¡y es hora de que los penes lo hagan al ritmo de Simba! El nuevo masturbador para pene está diseñado para que descubras un sinfín de nuevas sensaciones.\n\nDescubre las texturas interiores de Simba y añade un poco más de calor gracias al calentador de la base.\n\n¿Bailamos?', '13,7cm x 7,1cm', 36, 10, 5, 0, 125, '2022-02-23', 'images/Simba', 0, NULL, NULL),
(28, 'Luca', 'Estimulador prostático', 'Estimular el punto P con el dedo es muy satisfactorio para las personas con pene. Pero hacerlo con un juguete como el estimulador de próstata Luca es mucho más cómodo y eficaz.', '14cm x 3,7cm', 50, 10, 7, 85, 35, '2022-02-23', 'images/Luca', 1, NULL, NULL),
(29, 'Bimbo', 'Masturbador de pene con vibración', 'Si eres de quienes piensan que en el placer la precisión lo es todo, ¡estás de enhorabuena! Te presentamos a Bimbo: el masturbador con el que podrás estimular cualquier zona del pene con suma precisión.\n\nEl diseño y el agarre ergonómico de Bimbo te permitirán estimular el glande del pene, el tronco e incluso los testículos de manera directa. Disfruta de los 10 patrones de vibración y dirige tus orgasmos a tu gusto.', '20cm x 6cm', 40, 5, 0, 0, 125, '2022-02-23', 'images/Bimbo', 0, NULL, NULL),
(30, 'Satisfayer Vibration', 'Masturbador de pene de Satisfayer', 'La masturbación masculina puede ser mucho más placentera si juegas con el nuevo masturbador Satisfyer Vibration. Perfecto para estimular la zona con más terminaciones nerviosas del miembro masculino, las vibraciones y estrechez de este masturbador para hombre eleva el placer a niveles inexplorados para dejarte sin palabras.', '15cm x 7cm', 40, 10, 5, 34, 86, '2022-02-23', 'images/SatisfayerVibration', 1, NULL, NULL),
(31, 'Lolete', 'Masturbador de pene adaptable', 'Te presentamos a tu nuevo mejor amigo, el masturbador Lolete, capaz de adaptarse a todas y cada una de las situaciones. Se adapta a tu mano y a tu pene (sea cual sea su tamaño), haciendo que el movimiento de tu mano durante la masturbación sea tan natural como siempre. Eso sí, gracias a sus 10 patrones de vibración disfrutarás como nunca antes.\n\nElige dónde y cuándo, Lolete se adaptará a ti. ¡Incluso bajo el agua!', '14,5cm x 6cm', 100, 20, 15, 45, 65, '2022-02-23', 'images/Lolete', 1, NULL, NULL),
(32, 'Ibo', 'Estimulador prostático', '¿Te atreves a temblar de placer? Si la respuesta es un sí, ¡tenemos lo que necesitas! Su potente motor, junto con el sistema de pulsaciones en la punta, te hará disfrutar de unos orgasmos mucho más intensos. Y esto no es todo, ya que, gracias al mando a distancia de Ibo, no tendrás que preocuparte por nada.', '12cm x 4cm', 50, 10, 5, 0, 110, '2022-02-23', 'images/Ibo', 0, NULL, NULL),
(33, 'Tauro', 'Anilla estranguladora para el pene', 'Si todavía no has probado los beneficios de las anillas estranguladoras, ¿a qué estás esperando? Tauro es el complemento perfecto para tu pene. El diseño con esferas de esta anilla estranguladora te facilita su colocación a la vez que te proporciona un placer añadido gracias a los puntos de presión que ejercen las esferas.\n\nEstrangula la base del tronco del pene y disfruta de un nuevo nivel de erecciones, más duraderas y potentes.', '5,2cm x 1,5cm', 9, 5, 0, 84, 66, '2022-02-23', 'images/Tauro', 1, NULL, NULL),
(34, 'Pim', 'Plug anal de silicona', '¿Estás descubriendo y quieres empezar a experimentar con el sexo anal? Con el kit de plugs anales Pim, podrás entrenarte de manera progresiva gracias a los tres plugs anales de distintos tamaños ideales para dar el pistoletazo de salida a tu nueva aventura de placer.', '7cm x 2,5cm', 7, 5, 0, 0, 115, '2022-02-23', 'images/Pim', 0, NULL, NULL),
(35, 'Qlash', 'Lavativa anal', '¿Has oído alguna vez eso de que todo fluya sin que nada influya? Con la ducha anal Qlash sabrás de lo que hablamos. Antes de lanzarte a disfrutar del placer por detrás, libérate de cualquier preocupación evacuando la zona de la mejor manera.', '9cm x 6,5cm', 9, 5, 0, 54, 66, '2022-02-23', 'images/Qlash', 1, NULL, NULL),
(36, 'Ready', 'Fundas anales', 'Tanto si sientes curiosidad y nunca lo has probado, como si ya has probado el sexo anal y lo que quieres es innovar y descubrir nuevos juegos, las fundas anales para dedos Ready son ideales para ti.', '7cm x 2cm', 10, 4, 2, 0, 125, '2022-02-23', 'images/Ready', 0, NULL, NULL),
(37, 'Pam', 'Plug anal de metal', 'El metal del que están fabricados los 3 plugs anales Pam te hará sentir mucho más placer del que este tipo de juguetes te ofrece de por sí. Iníciate en el sexo anal y disfruta de él con este kit de plugs metálicos. ¡Descubrirás nuevas sensaciones!', '7cm x 2,5cm', 45, 10, 12, 21, 119, '2022-02-23', 'images/Pam', 1, NULL, NULL),
(38, 'Teri', 'Lubricante anal', 'El lubricante es como el queso, con él todo entra mucho mejor. ¿Que te ha quedado un poco insípido? Queso. ¿Que te apetece darle un toque especial al plato? Queso. ¿Que quieres practicar sexo anal y que todo vaya como la seda? No, aquí el queso mejor dejarlo en la nevera. Para estos casos nada mejor que el lubricante a base de agua Teri. Sí, sí, has leído bien: DE-A-GUA. Gracias a su fórmula y a su textura densa logra una lubricación ultraduradera y suuuuuper-placentera.', '100ml', 7, 2, 0, 95, 25, '2022-02-23', 'images/Teria', 1, NULL, NULL),
(39, 'Emy', 'Cadena anal', 'La cadena anal Emy es perfecta para principiantes y especialistas del sexo anal. Con sus bolas tailandesas de tamaños distintos y progresivos, la estimulación anal está asegurada.', '13,5cm x 4,5cm', 27, 5, 10, 0, 95, '2022-02-23', 'images/Emy', 0, NULL, NULL),
(40, 'Zori', 'Plug anal con cola', 'Zori es el plug anal con cola que inspirará muchas noches de pasión, desenfreno y, sobre todo, mucha imaginación. Está diseñado para dilatar el ano, pero no de cualquier manera. Zori lo hace con estilo y consigue sacar tu lado más salvaje.', 'Insercción:7cm x 3,2cm Cola:45cm x 5cm', 35, 10, 5, 72, 58, '2022-02-23', 'images/Zori', 1, NULL, NULL),
(41, 'Thor', 'Plug anal con control remoto', '¿Te consideras especialista en el sexo anal? ¿Te gustaría explorar aún más a fondo esta práctica? Con el plug anal Thor podrás alcanzar el máximo placer gracias a su movimiento de percusión, que te hará vibrar de satisfacción.', '12,7cm x 3,2cm', 65, 15, 10, 14, 106, '2022-02-23', 'images/Thor', 1, NULL, NULL),
(42, 'Aaron', 'Vibrador con ventosa', 'Prepárate para disfrutar del sexo más salvaje con el vibrador Aaron, diseñado tanto para uso anal como vaginal. Su base de ventosa te dejará las manos libres para usarlas cómo y por dónde tú quieras. Interesante, ¿verdad?', '13,7cm x 5cm', 25, 5, 10, 98, 52, '2022-02-23', 'images/Aaron', 1, NULL, NULL),
(43, 'Tedi', 'Esposas de peluche', 'Las personas que se portan mal pueden correr el riesgo de ser detenidas. Las llevan a un lugar secreto donde las inmovilizan con las esposas de peluche Tedi. El castigo puede ser más o menos severo, eso depende de quién esté de servicio. ¡Ya os lo hemos advertido!', 'Meidas:29cm Peso:261g', 10, 5, 0, 74, 36, '2022-02-23', 'images/Tedi', 1, NULL, NULL),
(44, 'See', 'Antifaz', '¡Shhh…! Déjate tapar o tapa los ojos de tu amante y sucumbe a uno de los juegos en pareja más excitantes y con mayor complicidad con el antifaz See. El complemento perfecto para hacer realidad tus fantasías más ocultas y traviesas.', 'Antifaz con acabado satinado', 5, 1, 0, 0, 100, '2022-02-23', 'images/See', 0, NULL, NULL),
(45, 'Clio', 'Plumero', 'Las caricias son un esencial en la cama, no importa si estás en un encuentro romántico o un momento fogoso de BDSM. De una manera u otra siempre están ahí. Y, aunque los dedos son tus mejores aliados, siempre puedes perfeccionar tus caricias con un plumero.\n\nCon Clio será inevitable despertar la piel de tu compi de juegos o la tuya y, con ello, el deseo. Disfruta de las caricias más sensuales e insinuantes en pareja o a solas de una manera sofisticada y sexy.', 'Material:Plumas Medidas:18cm x 9cm', 5, 3, 1, 84, 36, '2022-02-23', 'images/Clio', 1, NULL, NULL),
(46, 'Lamba', 'Arnés sexual', 'El arnés Lamba es muy resistente, ideal para mantener el juguete perfectamente en su lugar. Su diseño se ajusta a la cintura y por debajo de los glúteos, mediante unas correas de fácil uso.', '19cm x 13cm', 15, 7, 4, 94, 16, '2022-02-23', 'images/Lamba', 1, NULL, NULL),
(47, 'Plas Plas', 'Azotador sexual', 'Si te atreves a explorar tu sexualidad, te atreves con todo. Los azotes son algo muy erótico con lo que descubrirás un nuevo tipo de placer: el dolor. Y, para hacerlo bien, necesitas una paleta como la Plas Plas.', '30cm', 22, 6, 5, 0, 85, '2022-02-23', 'images/PlasPlas', 0, NULL, NULL),
(48, 'Pinki', 'Pinzas para pezones', 'Siente intensos pellizcos de placer con las pinzas para pezones con cadenas Pinki. Una joya ideal para iniciarse en los juegos bondage y disfrutar como nunca de una de las zonas erógenas más potentes del cuerpo de mujeres y personas con vagina. ¿Placer y dolor? ¡Sí, por favor!', '27gramos', 15, 5, 0, 0, 75, '2022-02-23', 'images/Pinki', 0, NULL, NULL),
(49, 'Xas', 'Mordaza sexual', 'En la cama, a veces, las palabras sobran. Por eso vas a quedarte literalmente sin palabras cuando pruebes la mordaza Xas. Ha llegado el momento de vivir nuevas experiencias… ¡y no hay más que hablar! Porque muchas veces se dicen más cosas con el cuerpo que con la boca. Sentirás como tu papel de sumisión llega a niveles increíbles de placer que no hubieras experimentado de ninguna otra manera. Complace las órdenes sin rechistar y vive sensaciones nuevas y excitantes. ¿Quién tendrá esta vez la última palabra?', '31cm  Bola:4cm', 10, 5, 3, 38, 62, '2022-02-23', 'images/Xas', 1, NULL, NULL),
(50, 'Carol', 'Azotador sexual', 'Con la paleta Carol ten claro que gritará y/o gritarás. Aunque no sabréis si de dolor o de placer. Y es que la línea entre ambos es tan fina que hasta quien los está sufriendo se confunde. Carol está tan bien hecha y es tan mona que no podrás parar de usarla.', '70cm', 25, 5, 10, 72, 48, '2022-02-23', 'images/Carol', 1, NULL, NULL),
(51, 'Panti', 'Adhesivos temporales', 'Los complementos hacen que tú y tu pareja entréis en materia mucho más rápido y que el nivel de erotismo suba como la espuma.', 'Material: cristales de plástico y silicona líquida', 12, 3, 0, 0, 80, '2022-02-23', 'images/Panti', 0, NULL, NULL),
(52, 'Yumi', 'Lubricante de sabores', 'Yumi, nuestro lubricante de sabores, te permitirá sentir aún más gustirrinín durante tus relaciones. Ya sea con tu compi de juegos o a solas con tus juguetes, no dudes en dar un toque extra a ese momento. ¡Además, ayuda a una mayor lubricación natural y evita la sequedad vaginal!\n\nTienes 4 sabores distintos con los que deleitarte: melocotón, sandía, cereza y piña. Y es que los lubricantes son como el queso, ¡nunca hay demasiado! Elige tu sabor preferido ¡y a disfrutar!', '100ml', 5, 2, 1, 26, 104, '2022-02-23', 'images/Yumi', 1, NULL, NULL),
(53, 'Neuro', 'Lubricante a base de agua', 'El imprescindible, el inigualable, el ultraduradero. Con todxs ustedes... ¡el lubricante Neuro! Sencillo por fuera ¡y de lo más completo por dentro! El compañero perfecto para disfrutar de tus juguetes sexuales o de un momento íntimo a solas o en pareja. Porque ya sabes lo que dicen, cuando todo fluye, ¡nada influye! Haz que tus relaciones sean más placenteras e intensifica las sensaciones con el lubricante Neuro.', '85ml', 5, 1, 1, 0, 110, '2022-02-23', 'images/Neuro', 0, NULL, NULL),
(54, 'Aque', 'Lubricante a base de agua', 'Esto de estar en la comunidad europea tiene sus cosas buenas y malas. Sin duda, una de las buenas es el lubricante Aque, el más popular de Europa desde hace más de 10 años. ¡Acierto más que asegurado! Podrás tener todo tipo de relaciones sexuales con la total seguridad de que este lubricante respetará tu piel y tu placer.', '125ml', 7, 2, 2, 34, 116, '2022-02-23', 'images/Aque', 1, NULL, NULL),
(55, 'Tokio', 'Lubricante de 7 sabores', 'Dicen que lo natural es más sano y a veces nos volvemos locxs para cumplir con el dicho. Que si comer más verduras frescas, nada de precocinados, eliminar azúcar… Por suerte no todo es tan complicado, porque cuando se trata de algo tan natural como hacer el amor, el lubricante Tokio nos lo pone fácil. Es de lo más saludable, porque está enriquecido con ingredientes naturales que no dañan tu piel. ¡Y es que la naturaleza es sabia!', '165ml', 12, 3, 0, 49, 51, '2022-02-23', 'images/Tokio', 1, NULL, NULL),
(56, 'Terrinal', 'Lubricante con base de silicona', 'En el mundo del arte siempre se ha dicho que los originales son mejores que las copias. Y si eso se aplica al arte, el sexo no será menos. Por eso os recomendamos el lubricante de silicona Terrinal, el primero y el más vendido en el mundo. ¡Por algo será! Lo puedes usar como lubricante de larga duración y como fluido para masajes. Nunca un original había producido tanto placer.', '30ml', 7, 3, 3, 0, 135, '2022-02-23', 'images/Terrinal', 0, NULL, NULL),
(57, 'Brazil', 'Lubricante de aceite', '¿Quieres dar un toque especial y diferente a vuestros preliminares? Con Brazil disfrutarás de una lubricación excepcional y un aroma delicioso. Despídete de las velas aromáticas porque ¡no las vas a necesitar! Calienta la bola lubricante con tu mano, siente como se deshace y déjate embriagar por su increíble aroma. Ideales para añadir un toque picante a tus relaciones.', '8gr', 5, 2, 0, 59, 41, '2022-02-23', 'images/Brazil', 1, NULL, NULL),
(58, 'Eli', 'Lubricante con base de silicona', 'El lubricante Eli es un nuevo concepto de lubricante de silicona. Se trata de una nueva fórmula de ultralubricación de silicona, pero no una cualquiera, sino la silicona más ligera del mercado.', '60ml', 10, 5, 4, 47, 73, '2022-02-23', 'images/Eli', 1, NULL, NULL),
(59, 'Activy', 'Lubricante a base de agua', '¿Estáis intentando quedaros embarazadxs y al mismo tiempo buscáis un lubricante que ayude a que todo fluya mejor durante vuestras relaciones?\n\nEl lubricante Activy es un lubricante a base de agua que ayuda a crear un ambiente saludable para el esperma gracias a su pH óptimo, contribuyendo a la concepción.', '130ml', 20, 5, 7, 74, 26, '2022-02-23', 'images/Activy', 1, NULL, NULL),
(60, 'Vegan', 'Lubricante con ingredientes vegetales', 'El lubricante es un básico a la hora de jugar. Pero elegir lubricante a veces es complicado por desconocimiento de este tipo de productos y terminas haciéndote con uno cualquiera.\n\nVegan es garantía de calidad y eficacia. Al estar compuesto exclusivamente de ingredientes vegetales y no contener parabenos, perfume ni glicerina, este lubricante a base de agua protege la zona íntima a la perfección.\n\nAdemás, te bastará con unas gotas para conseguir que haga efecto y así podrás usarlo durante mucho tiempo y sin ningún problema.', '100ml', 10, 5, 5, 0, 110, '2022-02-23', 'images/Vegan', 0, NULL, NULL),
(61, 'Iris', 'Medias con lazo', 'A la hora de seducir, no hay parte de tu cuerpo a la que no le puedas sacar partido. Pero tienes un arma infalible: las piernas.\n\nLas medias hasta el muslo con lazo Iris son el complemento perfecto que te dará el poder que necesitas para hipnotizar a quien tú quieras.', 'Composición: 100% poliamida / nylon.', 15, 5, 7, 72, 48, '2022-02-23', 'images/Iris', 1, NULL, NULL),
(62, 'Lexy', 'Kimono', 'Por su encaje fino, su precioso color azul violáceo, su lazo de satén para que lo adaptes perfectamente a tu cintura y sus transparencias que dejan entrever tu figura, definitivamente el kimono Lexy no es un kimono cualquiera. Atrévete con una pieza de lencería diferente y sorprende a tu pareja.', 'Composición: 100% poliamida / nylon.', 45, 10, 15, 49, 71, '2022-02-23', 'images/Lexy', 1, NULL, NULL),
(63, 'Qarly', 'Sujetador de encaje y tanga', 'Cuando tienes ganas de jugar, la temperatura de todo tu cuerpo sube y tu respiración se acelera. Cuando te sientas así, ponte el sujetador de encaje y el tanga transparente Qarly y le transmitirás este fuego multiplicado por 1.000 a tu pareja sexual. ¡Siempre es divertido compartir tu excitación con alguien!', 'Composición: Top: 93% Nylon, 7% Spandex / Tanga: 90% Nylon, 10% Spandex', 35, 10, 5, 34, 66, '2022-02-23', 'images/Qarly', 1, NULL, NULL),
(64, 'Picaly', 'Picardías de corte alto', 'Siéntete segura de ti misma y super sexy con el vestido de corte alto. Paséate por casa y lánzale miradas que hagan que se derrita. Ser sexy es todo un ritual de movimientos de seducción y el mejor complemento para conseguirlo es una prenda como este maravilloso vestido de escote de encaje y falda abierta por delante.', 'Composición: 93% Polyamide / Nylon 7% Spandex', 45, 10, 15, 0, 85, '2022-02-23', 'images/Picaly', 0, NULL, NULL),
(65, 'Cady', 'Cadenas metálicas para la cintura', 'Sácale partido a tu trasero, una de las partes del cuerpo más atractivas y seductoras. Con las cadenas metálicas Cady tu pareja se quedará hipnotizada.', 'Cadena metálica de cobre, libre de niquel.', 25, 7, 5, 36, 84, '2022-02-23', 'images/Cady', 1, NULL, NULL),
(66, 'Josha', 'Joyería corporal adhesiva', '¡Hora de brillar! Deslumbra a cualquier hora del día con esta original joyería corporal adhesiva. Destaca curvas, escote y las zonas preferidas de tu anatomía. Simplemente, deja que los cristales guíen los besos y las caricias...', 'Composición: acrílico.', 10, 5, 3, 0, 115, '2022-02-23', 'images/Josha', 0, NULL, NULL),
(67, 'Maripan', 'Máscara de mariposa', 'Vive experiencias nuevas con las máscara mariposa Maripan. Sí, sí, sin tener modos de vibración ni ser un juguete erótico con miles de funcionalidades, la máscara mariposa será tu mano derecha para crear momentos eróticos inolvidables.', 'Material: PVC con pegamento hipoalergénico.', 15, 5, 7, 78, 22, '2022-02-23', 'images/Maripan', 1, NULL, NULL),
(68, 'Colt', 'Collar de cuello', 'Juega, seduce, domina, sé dominadx, sé salvaje con el collar Colt, el complemento ideal para momentos bondage.', 'Material: correa de poliuretano y hebilla de hierro.', 20, 7, 5, 0, 80, '2022-02-23', 'images/Colt', 0, NULL, NULL),
(69, 'Miko', 'Brazaletes metálicos', 'Siente como el frío del metal de los brazaletes Miko contrasta con el calor de tu cuerpo. Tu pareja tiene el poder de hacer contigo lo que quiera o viceversa. Mientras, lo único que tienes que hacer es abandonarte al placer (y viceversa).', 'Material: cobre con aluminio, libre de niquel.', 25, 5, 0, 67, 33, '2022-02-23', 'images/Miko', 1, NULL, NULL),
(70, 'Candy', 'Caramelos de sexo oral', 'Lame, besa, succiona... Intensifica las sensaciones del sexo oral con los caramelos de menta para sexo oral Candy. Siente y/o haz sentir frescura y muchas cosas más allí abajo. ¡Sensaciones nuevas e intensas!', 'Ingredientes: sorbitol, xylitol, maltitol, sucralosa, mentol, aroma de menta, dióxido de silicio, estearato de magnesio.', 7, 2, 0, 0, 110, '2022-02-23', 'images/Candy', 0, NULL, NULL),
(71, 'Liquied', 'Vibrador líquido', 'A solas, con tus juguetes favoritos o en compañía. Tú eliges cómo disfrutar de sensaciones nuevas ¡y moviditas! Con el estimulante vibrador líquido Liquied no hay espacio para el aburrimiento. Experimentarás orgasmos de otro nivel gracias a la excitación que conseguirás. Un efecto que no conocías antes y que, cuando lo pruebes, no querrás dejar de sentir. Y si ya lo combinas con un vibrador, masturbador, succionador … ¡vas a ver las estrellas!', '15ml', 15, 5, 7, 46, 84, '2022-02-23', 'images/Liquied', 1, NULL, NULL),
(72, 'Adrian', 'Estimulante anal(Dilatador)', 'Si la parte menos explorada de tu pareja es la trasera, con el dilatador anal Adrian ahí es donde formaréis vuestro campo base. ¡No habrá quien os mueva! Este spray dilatador anal concentrado permite la penetración fácil y relajada, para que podáis descubrir los rincones más eróticos sin ningún problema.', '35ml', 12, 5, 4, 67, 33, '2022-02-23', 'images/Adrian', 1, NULL, NULL),
(73, 'Sensitive', 'Estimulante sensorial', '¿Crees que ya lo has probado todo en el terreno sexual? Cuatro palabras: no-te-queda-nada. Este estimulante sensorial con efecto frío. Con él, a la vez que experimentas un efecto super refrescante en tu entrepierna, alcanzarás un nuevo nivel cuando llegues al orgasmo. Más intenso, más placer, más sensorial, más, más... ¡Oh, dios mío! Esto no podemos explicártelo mejor, ¡tienes que probarlo!', '20ml', 14, 6, 5, 0, 125, '2022-02-23', 'images/Sensitive', 0, NULL, NULL),
(74, 'Saly', 'Sales de baño', 'Saly son cristales de baño que transforman el agua en una textura, color y aroma diferente para sentirse muy especial. Proporciona mucha espuma y deja la piel suave y sedosa. ¡Fabricado con sales del mar muerto!', '85gr', 5, 3, 0, 0, 90, '2022-02-23', 'images/Saly', 0, NULL, NULL),
(75, 'Paint', 'Pintura corporal', '¡Un deleite de amor! Escribe sobre la piel de tu amante con la deliciosa Paint y experimenta los cosquilleantes efectos de la escritura no sólo al crear los versos más románticos de su cuerpo sino también al degustar luego su delicioso sabor.', '100ml', 20, 5, 10, 40, 55, '2022-02-23', 'images/Paint', 1, NULL, NULL),
(76, 'Shine', 'Brillo labial', 'Abrillanta los juegos eróticos más ávidos de placer con el brillo labial Shine. La opción ideal para disfrutar del estimulante de efecto frío/calor durante las experiencias de sexo oral en pareja. ¡Palabra de geisha!', '15ml', 17, 5, 6, 42, 58, '2022-02-23', 'images/Shine', 1, NULL, NULL),
(77, 'Fer', 'Perfurme de fermonas', 'Aunque no se vea, un buen perfume es el complemento perfecto para resaltar aún más tu atractivo. Y es que, cuando alguien huele bien, te dan ganas de estar a su lado todo el día y, por supuesto, de girarte cuando pasa por delante.\n\nRompe cuellos con tan solo unas gotas de los perfumes de feromonas Fer.', '50ml', 25, 7, 10, 0, 105, '2022-02-23', 'images/Fer', 0, NULL, NULL),
(78, 'Double', 'Gel intensificador de placer', 'El intensificador de placer unisex Double es capaz de regalarte sensaciones únicas allí abajo. Su presencia en tu mesita de noche es garantía de placer a solas o en pareja. Aplica unas gotitas y... ¡abracadabra!', '25ml', 25, 8, 10, 21, 89, '2022-02-23', 'images/Double', 1, NULL, NULL),
(79, 'Gina', 'Copa menstrual', 'La copa menstrual Gina te regala muchas ventajas: ahorro, salud, comodidad... Pero, para disfrutar de todos estos beneficios, tienes que mantenerla limpia. Olvídate de hervirla con la olla en la que después cocinas macarrones y hazlo a lo profesional, con el vaso esterilizador.', 'Material: silicona hipoalergénica de alta calidad, libre de látex y ftalatos, con un acabado suave.', 15, 6, 4, 57, 33, '2022-02-23', 'images/Gina', 1, NULL, NULL),
(80, 'Clean', 'Limpiador de juguetes eróticos', 'Sabemos que te encantan los juguetes sexuales (normal, ¿a quién no?), y tú mejor que nadie sabes que para mantener tu colección intacta y en perfectas condiciones lo mejor es utilizar un producto específico para su limpieza. Con Clean podrás limpiarlos de forma eficaz antes y después de cada uso para que sigan dándote alegrías una y otra, y otra y otra vez. Un imprescindible en tu cajón/estantería de la diversión y el placer super-cómodo y muy eficaz.', '150ml', 8, 4, 2, 43, 67, '2022-02-23', 'images/Clean', 1, NULL, NULL),
(81, 'Tari', 'Tanga menstrual', 'Tari es perfecto para los días de tu ciclo en los que te apetece ponerte un vestido, una falda o un pantalón ajustados sin que se marque tu ropa interior. Porque tener la regla y lucir ropa interior bonita son cosas perfectamente compatibles.\n\nEs ideal para los días de menos flujo o para combinar con tu copa menstrual en los días de flujo más abundante. Con Tari no tendrás que preocuparte de posibles fugas, ya que tiene una capacidad de absorción equivalente a 3 tampones convencionales.', 'Composición: 95% algodón y 5% elastano.', 20, 7, 10, 0, 95, '2022-02-23', 'images/Tari', 0, NULL, NULL),
(82, 'Yerday', 'Pastillas esterilizadoras', 'Las copas menstruales como Gina implican ventajas por todos lados: ahorro de dinero, comodidad, respeto al medio ambiente... Aunque es verdad que el paso de ponerlas a hervir puede ser un poco tedioso. Por supuesto todo está inventado y en este campo no podía ser menos.\n\nCon las pastillas esterilizadoras Yerday olvídate de usar utensilios de cocina y sigue usando tu copa como siempre.', 'Composición: dicloroisocianurato de sodio (CAS: 2893-78-9): 19,5% m / m.', 10, 5, 0, 0, 110, '2022-02-23', 'images/Yerday', 0, NULL, NULL),
(83, 'Natural', 'Preservativos', 'En Reecock adoramos el sexo, la diversión y la pasión. Siempre sin olvidar lo importante que es practicar sexo seguro. Es por eso que queremos ofrecerte los mejores preservativos del mercado.\n\nSentid el placer más natural con los preservativos Natural. Los preservativos Natural son más largos y anchos, con forma anatómica para sensaciones más intensas y fáciles de colocar. Transparentes, lisos y con tecnología Easy-On, serán más fáciles de colocar que nunca. Además, tienen aroma Zeus, ¡así que no huelen a látex! Con los preservativos Natural, viviréis el placer más confortable.', 'Material: látex de caucho natural.', 7, 3, 1, 47, 53, '2022-02-23', 'images/Natural', 1, NULL, NULL),
(84, 'Zoe', 'Kit', 'El kit Zoe contiene información esencial desarrollada por nuestro equipo de sexólogas con el objetivo de echarte una mano en este primer paso. Este kit marcará un antes y un después en tu vida íntima. Incluye un espejo para que conozcas tu vulva a la perfección y un librito con el que resolver esas dudas que nunca te has atrevido a preguntar. ¡Terminemos con la ignorancia vulvar!', 'Kit que contiene un espejo un librito sobre las vulvas y un pequeño vibrador', 45, 10, 15, 0, 75, '2022-02-23', 'images/Zoe', 0, NULL, NULL),
(85, 'Estumy', 'Espuma limpiadora para vulva', 'Al igual que no te lavas el pelo con el gel de ducha o no te das en el rostro la crema corporal, para el cuidado de tu higiene íntima también debes llevar un cuidado especial. Con el limpiador Estumy, reforzarás tus defensas naturales mientras proporcionas una protección extra en tu higiene íntima.', '100ml', 10, 5, 4, 34, 96, '2022-02-23', 'images/Estumy', 1, NULL, NULL),
(86, 'Soft', 'Tampones aptos para realizar deporte, nadar y mantener relaciones íntimas durante la menstruación', 'Los tampones Soft han sido diseñados para lograr la mayor comodidad durante la menstruación: ¡son ideales para tener relaciones sexuales durante el periodo!\n\nAdemás, con ellos no tendrás que privarte de realizar deporte, nadar... ¡No hay nada que se les resista!', 'Material: higiénico e hipoalergénico.', 5, 2, 1, 0, 100, '2022-02-23', 'images/Soft', 0, NULL, NULL),
(87, 'Gozs', 'Preservativos de sabores', 'En Reecock adoramos el sexo, la diversión y la pasión. Siempre sin olvidar lo importante que es practicar sexo seguro. Es por eso que queremos ofrecerte los mejores preservativos del mercado.', 'Material: látex', 10, 5, 5, 13, 87, '2022-02-23', 'images/Gozs', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('gDYafNEpOU31jqWMNN2kVgVMdPi4SgsoLBjghlK9', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/98.0.4758.102 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiYlY5TzRDbHFIMm5wTnh4NmxPd1JVc0ZwSEcyMlpWRUFBQVRNeFc2dyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c3VhcmlvLzEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkZG8vMElOZGlpVll0U05OYTIwSm5nZVYxTkZ2aFdENGhlZ0pJOWtuOXpHc0RxbXc0TXBBNlciO3M6MjE6InBhc3N3b3JkX2hhc2hfc2FuY3R1bSI7czo2MDoiJDJ5JDEwJGRvLzBJTmRpaVZZdFNOTmEyMEpuZ2VWMU5GdmhXRDRoZWdKSTlrbjl6R3NEcW13NE1wQTZXIjt9', 1645123128);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nif` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `premium` tinyint(1) NOT NULL DEFAULT '0',
  `direction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nif`, `name`, `surname`, `email`, `email_verified_at`, `password`, `is_admin`, `birthday`, `phone`, `premium`, `direction_id`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, '54293766N', 'fasd', 'sdfsdaf', 'dflorogil@gmail.com', NULL, '$2y$10$do/0INdiiVYtSNNa20JngeV1NFvhWD4hegJI9kn9zGsDqmw4MpA6W', 0, '3589-04-23', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-17 14:19:27', '2022-02-17 14:19:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user_product_lists`
--

DROP TABLE IF EXISTS `user_product_lists`;
CREATE TABLE `user_product_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Favoritos',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indices de la tabla `directions`
--
ALTER TABLE `directions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `directions_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nif_unique` (`nif`),
  ADD KEY `users_direction_id_foreign` (`direction_id`);

--
-- Indices de la tabla `user_product_lists`
--
ALTER TABLE `user_product_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_product_lists_user_id_foreign` (`user_id`),
  ADD KEY `user_product_lists_product_id_foreign` (`product_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT de la tabla `directions`
--
ALTER TABLE `directions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `user_product_lists`
--
ALTER TABLE `user_product_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Filtros para la tabla `directions`
--
ALTER TABLE `directions`
  ADD CONSTRAINT `directions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Filtros para la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_direction_id_foreign` FOREIGN KEY (`direction_id`) REFERENCES `directions` (`id`);

--
-- Filtros para la tabla `user_product_lists`
--
ALTER TABLE `user_product_lists`
  ADD CONSTRAINT `user_product_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `user_product_lists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
