-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2024 a las 20:35:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cole_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asigmat`
--

CREATE TABLE `asigmat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `docente_id` bigint(20) UNSIGNED NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `cp_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `asigmat`
--

INSERT INTO `asigmat` (`id`, `docente_id`, `materia_id`, `cp_id`, `created_at`, `updated_at`) VALUES
(18, 6, 1, 10, '2024-08-29 02:53:56', '2024-08-29 02:53:56'),
(19, 6, 1, 11, '2024-08-29 02:53:56', '2024-08-29 02:53:56'),
(20, 6, 1, 12, '2024-08-29 02:53:56', '2024-08-29 02:53:56'),
(21, 6, 1, 13, '2024-08-29 02:53:56', '2024-08-29 02:53:56'),
(22, 6, 1, 14, '2024-08-29 02:53:56', '2024-08-29 02:53:56'),
(23, 6, 1, 15, '2024-08-29 02:53:56', '2024-08-29 02:53:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `centralizador`
--

CREATE TABLE `centralizador` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_docente` bigint(20) UNSIGNED NOT NULL,
  `id_materia` bigint(20) UNSIGNED NOT NULL,
  `id_estudiante` bigint(20) UNSIGNED NOT NULL,
  `id_curso_paralelo` bigint(20) UNSIGNED NOT NULL,
  `trimestre` varchar(20) NOT NULL,
  `ser` int(11) NOT NULL,
  `saber` int(11) NOT NULL,
  `hacer` int(11) NOT NULL,
  `decidir` int(11) NOT NULL,
  `ae` int(11) NOT NULL,
  `pro` int(11) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citacion`
--

CREATE TABLE `citacion` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_estudiante` bigint(20) UNSIGNED NOT NULL,
  `descripcion` text NOT NULL,
  `estado` varchar(30) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `citacion`
--

INSERT INTO `citacion` (`id`, `id_estudiante`, `descripcion`, `estado`, `created_at`, `updated_at`) VALUES
(2, 13, 'BUENAS TARDES SEÑOS PAPA LE COMENTAMOS QUE SU HIJO NO PRESENTO LAS TAREAS DE LA MATERIAD E BIOLOGIA POR LO QUE DEBE PASAR A LA UNIDAD EDUCATIVA PARA SOLUCIONAR ESTE PERCANSE', 'Realizado', '2024-08-29 01:42:56', '2024-08-29 21:59:34'),
(3, 6, 'BUENAS TARDES DEBE PASAR A LA UNIDAD EDUCATICA', 'Pendiente', '2024-08-29 01:43:29', '2024-08-29 01:43:29'),
(4, 6, 'LE RECORDAMOS QUE TIENE QUE PASAR A CANCELAR', 'Anulado', '2024-08-29 02:40:55', '2024-08-29 21:59:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nivel` varchar(255) NOT NULL,
  `grado` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `curso`
--

INSERT INTO `curso` (`id`, `nivel`, `grado`, `created_at`, `updated_at`) VALUES
(7, 'Secundario', 'Primero', '2024-08-10 19:42:35', '2024-08-10 19:42:35'),
(8, 'Secundario', 'Segundo', '2024-08-11 20:36:37', '2024-08-11 20:36:37'),
(9, 'Secundario', 'Sexto', '2024-08-18 00:39:35', '2024-08-18 00:39:35'),
(10, 'Secundario', 'Tercero', '2024-08-28 23:04:57', '2024-08-28 23:04:57');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_materia`
--

CREATE TABLE `curso_materia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `materia_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `curso_materia`
--

INSERT INTO `curso_materia` (`id`, `curso_id`, `materia_id`, `created_at`, `updated_at`) VALUES
(15, 7, 1, NULL, NULL),
(16, 7, 4, NULL, NULL),
(17, 7, 5, NULL, NULL),
(18, 7, 6, NULL, NULL),
(19, 7, 7, NULL, NULL),
(20, 7, 8, NULL, NULL),
(21, 7, 9, NULL, NULL),
(22, 7, 10, NULL, NULL),
(23, 8, 1, NULL, NULL),
(24, 8, 4, NULL, NULL),
(25, 8, 5, NULL, NULL),
(26, 8, 6, NULL, NULL),
(27, 8, 7, NULL, NULL),
(28, 8, 8, NULL, NULL),
(29, 8, 9, NULL, NULL),
(30, 8, 10, NULL, NULL),
(31, 9, 1, NULL, NULL),
(32, 9, 4, NULL, NULL),
(33, 9, 5, NULL, NULL),
(34, 9, 6, NULL, NULL),
(35, 9, 7, NULL, NULL),
(36, 9, 8, NULL, NULL),
(37, 9, 9, NULL, NULL),
(38, 10, 1, NULL, NULL),
(39, 10, 4, NULL, NULL),
(40, 10, 5, NULL, NULL),
(41, 10, 6, NULL, NULL),
(42, 10, 7, NULL, NULL),
(43, 10, 8, NULL, NULL),
(44, 10, 9, NULL, NULL),
(45, 10, 10, NULL, NULL),
(46, 10, 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso_paralelo`
--

CREATE TABLE `curso_paralelo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `curso_id` bigint(20) UNSIGNED NOT NULL,
  `paralelo_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `curso_paralelo`
--

INSERT INTO `curso_paralelo` (`id`, `curso_id`, `paralelo_id`, `created_at`, `updated_at`) VALUES
(10, 7, 1, NULL, NULL),
(11, 7, 5, NULL, NULL),
(12, 7, 6, NULL, NULL),
(13, 8, 1, NULL, NULL),
(14, 8, 5, NULL, NULL),
(15, 8, 6, NULL, NULL),
(16, 9, 1, NULL, NULL),
(17, 9, 5, NULL, NULL),
(18, 9, 6, NULL, NULL),
(19, 9, 7, NULL, NULL),
(20, 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dimension`
--

CREATE TABLE `dimension` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dimension` varchar(30) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dimension`
--

INSERT INTO `dimension` (`id`, `dimension`, `puntaje`, `created_at`, `updated_at`) VALUES
(1, 'SER', 5, '2024-08-21 22:50:29', '2024-08-21 22:50:29'),
(2, 'SABER', 45, '2024-08-21 22:52:14', '2024-08-21 22:52:14'),
(3, 'HACER', 40, '2024-08-21 22:52:21', '2024-08-21 22:52:21'),
(4, 'DECIDIR', 5, '2024-08-21 22:52:30', '2024-08-21 22:52:30'),
(7, 'AUTOEVALUACION', 5, '2024-08-21 23:03:04', '2024-08-21 23:03:04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `docente`
--

CREATE TABLE `docente` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ci` varchar(20) NOT NULL,
  `especialidad` varchar(255) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `docente`
--

INSERT INTO `docente` (`id`, `ci`, `especialidad`, `telefono`, `direccion`, `id_user`, `created_at`, `updated_at`) VALUES
(3, '12345678', 'LENGUAJE', '77745412', 'EL ALTO AV LOS ANDES', 30, '2024-08-21 00:24:21', '2024-08-21 00:50:26'),
(4, '12345678', 'ARTES PLASTICAS', '77777777', 'EL ALTO VIADELA', 32, '2024-08-28 22:42:34', '2024-08-28 22:42:34'),
(5, '22222222', 'QUIMICA', '74447454', 'EL ALTO', 37, '2024-08-28 23:09:11', '2024-08-28 23:09:11'),
(6, '73091771', 'MATEMATICAS', '73091771', 'EL ALTO LAS DELICIAS', 38, '2024-08-29 02:53:25', '2024-08-29 02:53:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `genero` char(1) NOT NULL,
  `ci` varchar(20) NOT NULL,
  `fechanacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `tutor` varchar(255) NOT NULL,
  `temergencia` varchar(255) NOT NULL,
  `id_curso_paralelo` bigint(20) UNSIGNED NOT NULL,
  `id_user` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `genero`, `ci`, `fechanacimiento`, `edad`, `telefono`, `direccion`, `tutor`, `temergencia`, `id_curso_paralelo`, `id_user`, `created_at`, `updated_at`) VALUES
(5, 'M', '12365063', '2024-07-29', 14, '77745474', 'CRUCE VIADELA AV AMOR DE DIOS', 'JUAN QUISPE MAMANI', '7745447', 12, 22, '2024-08-11 00:56:17', '2024-08-11 00:56:17'),
(6, 'F', '12832367', '2024-07-29', 14, '77745484', 'CRUCE VIADELA AV AMOR DE DIOS', 'JUAN QUISPE MAMANI', '77745447', 10, 25, '2024-08-11 22:17:12', '2024-08-26 23:18:47'),
(7, 'M', '1112465', '2024-07-30', 26, '77745484', 'EL ALTO', 'JUAN ANDREZ', '77742121', 11, 26, '2024-08-11 22:18:12', '2024-08-11 22:18:12'),
(8, 'M', '12154445', '2024-07-29', 14, '77745412', 'LOS ANDES', 'JADIEL CHINO', '77741245', 10, 27, '2024-08-12 00:45:56', '2024-08-12 00:45:56'),
(9, 'M', '7897894', '2024-07-15', 15, '66545624', 'PEREZ VELASCO', 'LAYME COPA ANDY', '77745412', 10, 28, '2024-08-12 00:47:04', '2024-08-12 00:47:04'),
(10, 'F', '45654645', '2024-07-30', 15, '78778877', 'EL ALTO', 'ADRIANA', '7745414', 13, 29, '2024-08-12 22:12:24', '2024-08-12 22:12:24'),
(11, 'F', '1234554554', '2024-07-23', 13, '77745745', 'EL ALTO VIADELA', 'DEISI BUSTAMANTE', '77745465', 10, 33, '2024-08-28 22:48:32', '2024-08-28 22:48:32'),
(12, 'M', '456456789', '2024-08-14', 15, '65545464', 'EL ALTO', 'JUAN', '78978945', 10, 34, '2024-08-28 22:50:00', '2024-08-28 22:50:00'),
(13, 'M', '11111111', '2024-04-23', 13, '77454645', 'EL ALTO VIACHA', 'JUAN MERLO', '77454745', 20, 36, '2024-08-28 23:07:17', '2024-08-28 23:07:17');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE `materia` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `descripcion`, `created_at`, `updated_at`) VALUES
(1, 'MATEMATICAS', 'MATEMATICAS', NULL, NULL),
(4, 'LENGUAJE', 'LENG', '2024-08-09 19:35:55', '2024-08-09 19:35:55'),
(5, 'BIOLOGIA', 'BIO', '2024-08-09 19:36:05', '2024-08-09 19:36:05'),
(6, 'CIENCIAS NATURALES', 'CN', '2024-08-09 19:36:20', '2024-08-09 19:36:20'),
(7, 'ARTES PLASTICAS', 'AP', '2024-08-09 19:36:31', '2024-08-09 19:36:31'),
(8, 'HISTORIA', 'HIST', '2024-08-09 19:36:44', '2024-08-09 19:36:44'),
(9, 'RELIGION', 'REL', '2024-08-09 19:36:59', '2024-08-09 19:36:59'),
(10, 'FISICA', 'FIS', '2024-08-09 23:33:35', '2024-08-09 23:33:35'),
(11, 'QUIMICA', 'LABORATORIOS QUIMICOS', '2024-08-28 23:02:39', '2024-08-28 23:02:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_08_06_204123_create_role_table', 2),
(5, '2024_08_07_181200_create_permission_table', 3),
(7, '2024_08_08_195051_create_materia_table', 4),
(8, '2024_08_09_200615_create_curso_table', 5),
(9, '2024_08_09_200815_create_curso_materia_table', 6),
(10, '2024_08_09_201445_create_paralelo_table', 6),
(11, '2024_08_09_201748_create_curso_paralelo_table', 7),
(13, '2024_08_10_174123_create_estudiante_table', 8),
(14, '2024_08_10_211822_create_docente_table', 9),
(15, '2024_08_10_221431_create_asigmat_table', 10),
(17, '2024_08_11_182206_create_centralizador_table', 11),
(19, '2024_08_21_184423_create_dimension_table', 12),
(21, '2024_08_28_202431_create_citacion_table', 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paralelo`
--

CREATE TABLE `paralelo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` char(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `paralelo`
--

INSERT INTO `paralelo` (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'A', NULL, NULL),
(5, 'B', '2024-08-10 18:17:58', '2024-08-10 18:17:58'),
(6, 'C', '2024-08-10 18:18:04', '2024-08-10 18:18:04'),
(7, 'D', '2024-08-10 18:18:09', '2024-08-10 18:18:09'),
(8, 'E', '2024-08-10 18:18:14', '2024-08-10 18:18:14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('ariellaymefranco@gmail.com', '$2y$12$6zPNh4HDMVu2wU.FA6M8oO71A3Ml70AG5hnZjyp8ZhJ1NHXSRnLqS', '2024-08-29 02:29:43'),
('vidalalanoca1989@gmail.com', '$2y$12$OWD15Q6h3zEXg6KuRTjuSeGSg2IItdV5QRWUgBUhK0bmSmHDX7172', '2024-08-28 23:20:51');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission`
--

CREATE TABLE `permission` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `groupby` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permission`
--

INSERT INTO `permission` (`id`, `name`, `slug`, `groupby`, `created_at`, `updated_at`) VALUES
(1, 'User', 'User', 1, NULL, NULL),
(2, 'Add User', 'Add User', 1, NULL, NULL),
(3, 'Edit User', 'Edit User', 1, NULL, NULL),
(4, 'Delete User', 'Delete User', 1, NULL, NULL),
(5, 'Role', 'Role', 2, NULL, NULL),
(6, 'Add Role', 'Add Role', 2, NULL, NULL),
(7, 'Edit Role', 'Edit Role', 2, NULL, NULL),
(8, 'Delete Role', 'Delete Role', 2, NULL, NULL),
(9, 'Materia', 'Materia', 3, NULL, NULL),
(10, 'Insertar Materia', 'Insertar Materia', 3, NULL, NULL),
(11, 'Editar Materia', 'Editar Materia', 3, NULL, NULL),
(12, 'Eliminar Materia', 'Eliminar Materia', 3, NULL, NULL),
(15, 'Paralelo', 'Paralelo', 4, NULL, NULL),
(16, 'Insertar Paralelo', 'Insertar Paralelo', 4, NULL, NULL),
(17, 'Editar Paralelo', 'Editar Paralelo', 4, NULL, NULL),
(18, 'Eliminar Paralelo', 'Eliminar Paralelo', 4, NULL, NULL),
(19, 'Curso', 'Curso', 5, NULL, NULL),
(20, 'Insertar Curso', 'Insertar Curso', 5, NULL, NULL),
(21, 'Editar Curso', 'Editar Curso', 5, NULL, NULL),
(22, 'Eliminar Curso', 'Eliminar Curso', 5, NULL, NULL),
(23, 'Estudiante', 'Estudiante', 6, NULL, NULL),
(24, 'Insertar Estudiante', 'Insertar Estudiante', 6, NULL, NULL),
(25, 'Editar Estudiante', 'Editar Estudiante', 6, NULL, NULL),
(26, 'Eliminar Estudiante', 'Eliminar Estudiante', 6, NULL, NULL),
(27, 'Docente', 'Docente', 7, NULL, NULL),
(28, 'Insertar Docente', 'Insertar Docente', 7, NULL, NULL),
(29, 'Editar Docente', 'Editar Docente', 7, NULL, NULL),
(30, 'Eliminar Docente', 'Eliminar Docente', 7, NULL, NULL),
(31, 'AsigMat', 'AsigMat', 8, NULL, NULL),
(32, 'Insertar AsigMat', 'Insertar AsigMat', 8, NULL, NULL),
(33, 'Editar AsigMat', 'Editar AsigMat', 8, NULL, NULL),
(34, 'Eliminar AsigMat', 'Eliminar AsigMat', 8, NULL, NULL),
(35, 'Centralizador', 'Centralizador', 9, NULL, NULL),
(36, 'Insertar Centralizador', 'Insertar Centralizador', 9, NULL, NULL),
(37, 'Editar Centralizador', 'Editar Centralizador', 9, NULL, NULL),
(38, 'Eliminar Centralizador', 'Eliminar Centralizador', 9, NULL, NULL),
(39, 'Boletin', 'Boletin', 10, NULL, NULL),
(40, 'Insertar Boletin', 'Insertar Boletin', 10, NULL, NULL),
(41, 'Editar Boletin', 'Editar Boletin', 10, NULL, NULL),
(42, 'Eliminar Boletin', 'Eliminar Boletin', 10, NULL, NULL),
(43, 'Dimension', 'Dimension', 11, NULL, NULL),
(44, 'Insertar Dimension', 'Insertar Dimension', 11, NULL, NULL),
(45, 'Editar Dimension', 'Editar Dimension', 11, NULL, NULL),
(46, 'Eliminar Dimension', 'Eliminar Dimension', 11, NULL, NULL),
(47, 'Datos', 'Datos', 12, NULL, NULL),
(48, 'Insertar Datos', 'Insertar Datos', 12, NULL, NULL),
(49, 'Editar Datos', 'Editar Datos', 12, NULL, NULL),
(50, 'Eliminar Datos', 'Eliminar Datos', 12, NULL, NULL),
(51, 'Citacion', 'Citacion', 13, NULL, NULL),
(52, 'Insertar Citacion', 'Insertar Citacion', 13, NULL, NULL),
(53, 'Editar Citacion', 'Editar Citacion', 13, NULL, NULL),
(54, 'Eliminar Citacion', 'Eliminar Citacion', 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `permission_role`
--

INSERT INTO `permission_role` (`id`, `role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(101, 14, 11, '2024-08-07 21:15:05', '2024-08-07 21:15:05'),
(202, 19, 1, '2024-08-08 21:19:19', '2024-08-08 21:19:19'),
(203, 19, 2, '2024-08-08 21:19:19', '2024-08-08 21:19:19'),
(204, 19, 3, '2024-08-08 21:19:19', '2024-08-08 21:19:19'),
(205, 19, 5, '2024-08-08 21:19:19', '2024-08-08 21:19:19'),
(206, 19, 6, '2024-08-08 21:19:19', '2024-08-08 21:19:19'),
(207, 19, 7, '2024-08-08 21:19:19', '2024-08-08 21:19:19'),
(268, 21, 19, '2024-08-10 18:23:30', '2024-08-10 18:23:30'),
(559, 18, 35, '2024-08-28 18:45:40', '2024-08-28 18:45:40'),
(560, 18, 36, '2024-08-28 18:45:40', '2024-08-28 18:45:40'),
(561, 18, 37, '2024-08-28 18:45:40', '2024-08-28 18:45:40'),
(562, 18, 38, '2024-08-28 18:45:40', '2024-08-28 18:45:40'),
(563, 18, 47, '2024-08-28 18:45:40', '2024-08-28 18:45:40'),
(566, 13, 1, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(567, 13, 2, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(568, 13, 3, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(569, 13, 4, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(570, 13, 5, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(571, 13, 6, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(572, 13, 7, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(573, 13, 8, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(574, 13, 9, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(575, 13, 10, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(576, 13, 11, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(577, 13, 12, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(578, 13, 15, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(579, 13, 16, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(580, 13, 17, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(581, 13, 18, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(582, 13, 19, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(583, 13, 20, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(584, 13, 21, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(585, 13, 22, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(586, 13, 23, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(587, 13, 24, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(588, 13, 25, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(589, 13, 26, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(590, 13, 27, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(591, 13, 28, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(592, 13, 29, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(593, 13, 30, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(594, 13, 31, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(595, 13, 32, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(596, 13, 33, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(597, 13, 34, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(598, 13, 35, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(599, 13, 36, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(600, 13, 37, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(601, 13, 38, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(602, 13, 39, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(603, 13, 40, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(604, 13, 41, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(605, 13, 42, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(606, 13, 47, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(607, 13, 48, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(608, 13, 49, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(609, 13, 50, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(610, 13, 51, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(611, 13, 52, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(612, 13, 53, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(613, 13, 54, '2024-08-28 20:22:18', '2024-08-28 20:22:18'),
(614, 20, 39, '2024-08-28 21:43:45', '2024-08-28 21:43:45'),
(615, 20, 47, '2024-08-28 21:43:45', '2024-08-28 21:43:45'),
(616, 20, 51, '2024-08-28 21:43:45', '2024-08-28 21:43:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role`
--

CREATE TABLE `role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role`
--

INSERT INTO `role` (`id`, `name`, `created_at`, `updated_at`) VALUES
(13, 'admin', '2024-08-08 01:10:47', '2024-08-08 01:10:47'),
(18, 'Docente', '2024-08-08 01:27:41', '2024-08-10 22:24:04'),
(20, 'Estudiante', '2024-08-10 22:23:11', '2024-08-10 22:23:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('7cIZUBZQP2VcI2IhBicgvVvt1mFcLaJYqDZwMYu4', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTY2TkpDN0pwaDM5RWU5bDJudGhwOG9EakkxUWNrdFBKc3JOQzVERiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTQ3OiJodHRwOi8vbG9jYWxob3N0L2NvbGVfZmluYWwvYXV0aC9wYXNzd29yZC9yZXNldC9iZGZlOTdlODAxZDZlNWE3ZTAyYzJkNDRiNzRlZmJjOWVjYjM2NzFhNmUxMDA0OTM5NWM2YTM0Mzc2MmU3Y2ZhP2VtYWlsPWFyaWVsbGF5bWVmcmFuY28lNDBnbWFpbC5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1724884213),
('aQadK0FaNnUjY3ihC0PPgrKSgdim8g8JNxfQIahy', 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiR095R2VkM1lwZ1FEc3pPSGlSY3RKNnRqaG5aanJPZG55UVRqRnRSWCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHA6Ly9sb2NhbGhvc3QvY29sZV9maW5hbC9wYW5lbC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo2O30=', 1724885764),
('LRtpFfsWABK8510zoMbaARXXceT1VAqzWyiH2bto', 6, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiV0JYZGNFWmFuaTFyQnJmdEFEaXhSSUwxbzBNMUdlTGZVNGtkVEphUyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly9sb2NhbGhvc3QvY29sZV9maW5hbC9wYW5lbC9jaXRhY2lvbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjY7fQ==', 1724954382);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipousuario` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `apaterno` varchar(150) DEFAULT NULL,
  `amaterno` varchar(150) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `tipousuario`, `name`, `apaterno`, `amaterno`, `email`, `email_verified_at`, `password`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'Administrativo', 'admin', 'gerente', 'general', 'ares@gmail.com', NULL, '$2y$12$H6pi.QIwRoHZlDuTuI/21OF4yM3evCsa9OFoRv0NoP5f1j4x58Tti', 13, NULL, '2024-08-08 22:42:23', '2024-08-09 01:24:26'),
(22, 'Estudiante', 'DERRICK MISAEL', 'MARCA', 'SOTO', 'derrick@gmail.com', NULL, '$2y$12$mNkbLWkww9/fR76lA9WimOrrIIgAWhqe1s/wOu4vTHydl2uwkAMZy', 20, NULL, '2024-08-11 00:56:17', '2024-08-11 00:56:17'),
(25, 'Estudiante', 'VANESA', 'MAMANI', 'GUERRA', 'vanesa@gmail.com', NULL, '$2y$12$s586qhAHqAhOJ7GE/lg6c.chIkUHY5WD.7VpuKqhby8G2QEzTWrIq', 20, NULL, '2024-08-11 22:17:12', '2024-08-26 23:18:47'),
(26, 'Estudiante', 'JUAN', 'TANTANI', 'PEREZ', 'juan@gmail.com', NULL, '$2y$12$3pCtKZ8OWXh06mNKBeQ8.efLvfxYtnLwsPVnWcWmHY0shU2UjiIGO', 20, NULL, '2024-08-11 22:18:12', '2024-08-27 00:54:22'),
(27, 'Estudiante', 'JUAN MIGUEL', 'ANDRADE', 'QUISPE', 'miguel@gmail.com', NULL, '$2y$12$.FqDHdEPcFig.X3GmtFImuxSkrE8mhFaHvuHI8bGxSFNQmOSKec.m', 20, NULL, '2024-08-12 00:45:56', '2024-08-12 00:45:56'),
(28, 'Estudiante', 'RICHARD', 'APAZA', 'QUISPE', 'richar@gmail.com', NULL, '$2y$12$czyuSlhvaeHxycRYDLaNM.tuOG/0J8Y6XunHF4Cl7F/BaxX2rK7t6', 20, NULL, '2024-08-12 00:47:04', '2024-08-12 00:47:04'),
(29, 'Estudiante', 'ABRIL', 'MAYTA', 'QUISPE', 'abril@gmail.com', NULL, '$2y$12$aKos..b6Ikn2o9vQwzDztOHKIAxI5Fib1cmvGoNvTOOAr/Tjk1YHW', 20, NULL, '2024-08-12 22:12:24', '2024-08-12 22:12:24'),
(30, 'Docente', 'CELILIA', 'MARTINEZ', 'LOPEZ', 'ceci@gmail.com', NULL, '$2y$12$Q8YJixKatWORxYdnXBwt.um4CSNYG7X6QbtCjEmiNxGW1ATQK255i', 18, NULL, '2024-08-21 00:24:21', '2024-08-21 00:50:26'),
(31, '', 'ARIEL', NULL, NULL, 'ariellayme3@gmail.com', NULL, '$2y$12$00PfUUwd89XKKKhD/f.sAudL4QT6wqZTFMUwOLlz5BsSyxUHQe4wW', 13, NULL, '2024-08-27 20:48:25', '2024-08-27 20:53:06'),
(32, 'Docente', 'CAMILO', 'DAZA', 'PAREDEZ', 'camilo@gmail.com', NULL, '$2y$12$7CwchIyJUpjXzw1kB1iPS.LfyzXVTTqlHLTsChKc09drYA7.K8n.u', 18, NULL, '2024-08-28 22:42:34', '2024-08-28 22:42:34'),
(33, 'Estudiante', 'DAMARIS', 'ALCON', 'BUSTAMANTE', 'damaris@gmail.com', NULL, '$2y$12$zvwmbX8tqsXSjPwH3dFe2.Atb3dY2O6Zymub/b542yLOTapXzL8hC', 20, NULL, '2024-08-28 22:48:32', '2024-08-28 22:48:32'),
(34, 'Estudiante', 'ASBEL', 'CHOQUE', 'PAREDEZ', 'asbel@gmail.com', NULL, '$2y$12$gHXeUYt2kxGpVfBjRXa8/OmQgAFn8UP91NfTEuL/YNAsOtpT8C91q', 20, NULL, '2024-08-28 22:50:00', '2024-08-28 22:50:00'),
(35, '', 'ALANOCA QUISPE VIDAL', NULL, NULL, 'vidalalanoca1989@gmail.com', NULL, '$2y$12$4OfM8coS0fXrT9BI5otGzuVFkwUwitUC6dF/naAVDYmRTYRLQr0dC', 13, NULL, '2024-08-28 23:01:33', '2024-08-28 23:01:33'),
(36, 'Estudiante', 'MATIAS', 'MERLO', 'LOPEZ', 'matias@gmail.com', NULL, '$2y$12$DPf1OaXWiAi63TmC1lCyKOvZP1iQTxzBX7PYKrnyWcMwSrRCSvGZS', 20, NULL, '2024-08-28 23:07:17', '2024-08-28 23:07:17'),
(37, 'Docente', 'DAMIAN', 'HUANCA', 'COLQUE', 'damian@gmail.com', NULL, '$2y$12$AIUvo/lIgRAPQNsuuqJ7l.sf7Mtei/Ld6SGZrZB5lMz9RxQffBlLS', 18, NULL, '2024-08-28 23:09:11', '2024-08-28 23:09:11'),
(38, 'Docente', 'CINTHYA', 'LAYME', 'FRANCO', 'cinthya@gmail.com', NULL, '$2y$12$WQSQ21LR3xMuWD1ruxcGrOITw9GcUwg4JqRrmdS8fPG6fgMvqEgY.', 18, NULL, '2024-08-29 02:53:25', '2024-08-29 02:53:25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asigmat`
--
ALTER TABLE `asigmat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asigmat_docente_id_foreign` (`docente_id`),
  ADD KEY `asigmat_materia_id_foreign` (`materia_id`),
  ADD KEY `asigmat_cp_id_foreign` (`cp_id`);

--
-- Indices de la tabla `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indices de la tabla `centralizador`
--
ALTER TABLE `centralizador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `centralizador_id_docente_foreign` (`id_docente`),
  ADD KEY `centralizador_id_materia_foreign` (`id_materia`),
  ADD KEY `centralizador_id_estudiante_foreign` (`id_estudiante`),
  ADD KEY `centralizador_id_curso_paralelo_foreign` (`id_curso_paralelo`);

--
-- Indices de la tabla `citacion`
--
ALTER TABLE `citacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `citacion_id_estudiante_foreign` (`id_estudiante`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_materia_curso_id_foreign` (`curso_id`),
  ADD KEY `curso_materia_materia_id_foreign` (`materia_id`);

--
-- Indices de la tabla `curso_paralelo`
--
ALTER TABLE `curso_paralelo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `curso_paralelo_curso_id_foreign` (`curso_id`),
  ADD KEY `curso_paralelo_paralelo_id_foreign` (`paralelo_id`);

--
-- Indices de la tabla `dimension`
--
ALTER TABLE `dimension`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `docente`
--
ALTER TABLE `docente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docente_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `estudiante_id_curso_paralelo_foreign` (`id_curso_paralelo`),
  ADD KEY `estudiante_id_user_foreign` (`id_user`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indices de la tabla `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materia`
--
ALTER TABLE `materia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `paralelo`
--
ALTER TABLE `paralelo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role`
--
ALTER TABLE `role`
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
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asigmat`
--
ALTER TABLE `asigmat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `centralizador`
--
ALTER TABLE `centralizador`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `citacion`
--
ALTER TABLE `citacion`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `curso_paralelo`
--
ALTER TABLE `curso_paralelo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `dimension`
--
ALTER TABLE `dimension`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `docente`
--
ALTER TABLE `docente`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `materia`
--
ALTER TABLE `materia`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `paralelo`
--
ALTER TABLE `paralelo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `permission`
--
ALTER TABLE `permission`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT de la tabla `role`
--
ALTER TABLE `role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asigmat`
--
ALTER TABLE `asigmat`
  ADD CONSTRAINT `asigmat_cp_id_foreign` FOREIGN KEY (`cp_id`) REFERENCES `curso_paralelo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asigmat_docente_id_foreign` FOREIGN KEY (`docente_id`) REFERENCES `docente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `asigmat_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `centralizador`
--
ALTER TABLE `centralizador`
  ADD CONSTRAINT `centralizador_id_curso_paralelo_foreign` FOREIGN KEY (`id_curso_paralelo`) REFERENCES `curso_paralelo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `centralizador_id_docente_foreign` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `centralizador_id_estudiante_foreign` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `centralizador_id_materia_foreign` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `citacion`
--
ALTER TABLE `citacion`
  ADD CONSTRAINT `citacion_id_estudiante_foreign` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiante` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_materia`
--
ALTER TABLE `curso_materia`
  ADD CONSTRAINT `curso_materia_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `curso_materia_materia_id_foreign` FOREIGN KEY (`materia_id`) REFERENCES `materia` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `curso_paralelo`
--
ALTER TABLE `curso_paralelo`
  ADD CONSTRAINT `curso_paralelo_curso_id_foreign` FOREIGN KEY (`curso_id`) REFERENCES `curso` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `curso_paralelo_paralelo_id_foreign` FOREIGN KEY (`paralelo_id`) REFERENCES `paralelo` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `docente`
--
ALTER TABLE `docente`
  ADD CONSTRAINT `docente_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_id_curso_paralelo_foreign` FOREIGN KEY (`id_curso_paralelo`) REFERENCES `curso_paralelo` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `estudiante_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
