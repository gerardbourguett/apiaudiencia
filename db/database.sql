CREATE DATABASE IF NOT EXISTS `audiencias` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;

USE `audiencias`;

CREATE TABLE `audiencias` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  `tipoAudiencia` varchar(255) NOT NULL,
  `sala` varchar(255) NOT NULL,
  `magis` varchar(255) NOT NULL,
  `abo_patrocinante` varchar(255) DEFAULT NULL,
  `textColor` varchar(7) NOT NULL,
  `backgroundColor` varchar(255) NOT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
)

INSERT INTO `audiencias` (`id`, `title`, `start`, `end`, `tipoAudiencia`, `sala`, `magis`, `abo_patrocinante`, `textColor`, `backgroundColor`, `observaciones`, `created_at`, `updated_at`) VALUES
(2, 'O-24-23', '2023-04-17 09:00:00', '2023-04-17 10:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', 'se fijó audiencia de juicio para el día 13 de septiembre de 2023, a las 12:00 horas sala 1, presencial.', '2023-04-17 20:43:01', '2023-04-18 02:04:37'),
(3, 'O-53-23', '2023-04-17 09:00:00', '2023-04-17 10:00:00', 'Audiencia Preparatoria', '2', 'Alodia Prieto', NULL, '#C00000', '#FFFFCC', 'se fija fecha audiencia de juicio para el 4 de septiembre 2023 a las 11 hrs sala 2 presencial', '2023-04-17 20:44:43', '2023-04-17 21:54:20'),
(4, 'O-59-23', '2023-04-17 09:00:00', '2023-04-17 10:00:00', 'Audiencia Preparatoria', '3', 'Marianela Luna', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 20:45:03', '2023-04-17 20:45:03'),
(5, 'T-32-23', '2023-04-17 10:00:00', '2023-04-17 11:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', 'se fijó audiencia de juicio para el día 12 de septiembre de 2023, 12:00 horas presencial.', '2023-04-17 20:45:23', '2023-04-18 02:04:52'),
(6, 'M-75-23', '2023-04-17 10:00:00', '2023-04-17 11:00:00', 'Audiencia Única', '2', 'Alodia Prieto', NULL, '#000000', '#99CCFF', '', '2023-04-17 20:45:57', '2023-04-17 20:45:57'),
(7, 'O-198-22', '2023-04-17 11:00:00', '2023-04-17 12:30:00', 'Audiencia de Juicio', '3', 'Marianela Luna', NULL, '#000000', '#99FF33', 'se fijó fecha para notificar sentencia para el día 5 de mayo de 2023', '2023-04-17 20:47:24', '2023-04-18 02:04:22'),
(8, 'T-98-22', '2023-04-17 12:00:00', '2023-04-17 13:30:00', 'Audiencia de Juicio', '1', 'Inge Müller', NULL, '#000000', '#99FF33', 'conciliación.', '2023-04-17 20:47:53', '2023-04-18 02:05:22'),
(9, 'O-47-22', '2023-04-17 12:00:00', '2023-04-17 13:30:00', 'Audiencia de Juicio', '2', 'Alodia Prieto', NULL, '#000000', '#99FF33', '', '2023-04-17 20:48:12', '2023-04-17 20:48:12'),
(10, 'M-257-22', '2023-04-17 08:30:00', '2023-04-17 09:00:00', 'Término Probatorio', '3', 'Marianela Luna', NULL, '#FFFFFF', '#000000', '', '2023-04-17 20:49:50', '2023-04-17 20:49:50'),
(11, 'M-257-22', '2023-04-18 08:30:00', '2023-04-18 09:00:00', 'Término Probatorio', '3', 'Marianela Luna', NULL, '#FFFFFF', '#000000', '', '2023-04-17 21:07:34', '2023-04-17 21:07:34'),
(12, 'O-240-22', '2023-04-18 09:00:00', '2023-04-18 10:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 21:14:03', '2023-04-17 21:14:03'),
(13, 'T-33-23', '2023-04-18 09:00:00', '2023-04-18 10:00:00', 'Audiencia Preparatoria', '2', 'Alodia Prieto', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 21:21:47', '2023-04-17 21:21:47'),
(14, 'M-154-22', '2023-04-18 10:00:00', '2023-04-18 11:00:00', 'Audiencia Única', '1', 'Inge Müller', NULL, '#000000', '#99CCFF', '', '2023-04-17 21:47:48', '2023-04-17 22:01:52'),
(15, 'M-83-23', '2023-04-18 10:00:00', '2023-04-18 11:00:00', 'Audiencia Única', '2', 'Alodia Prieto', NULL, '#000000', '#99CCFF', '', '2023-04-17 21:54:35', '2023-04-17 21:54:35'),
(16, 'T-103-22', '2023-04-18 12:00:00', '2023-04-18 13:30:00', 'Audiencia de Juicio', '2', 'Alodia Prieto', NULL, '#000000', '#99FF33', '', '2023-04-17 22:17:42', '2023-04-17 22:17:42'),
(17, 'O-156-22', '2023-04-18 12:00:00', '2023-04-18 13:30:00', 'Audiencia de Juicio', '3', 'Marianela Luna', NULL, '#000000', '#99FF33', '', '2023-04-17 23:12:25', '2023-04-17 23:12:25'),
(18, 'O-66-22', '2023-04-18 09:00:00', '2023-04-18 10:00:00', 'Audiencia Preparatoria', '3', 'Marianela Luna', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:12:51', '2023-04-17 23:12:51'),
(19, 'O-46-23', '2023-04-19 09:00:00', '2023-04-19 10:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:13:49', '2023-04-17 23:13:49'),
(20, 'O-55-23', '2023-04-19 09:00:00', '2023-04-19 10:00:00', 'Audiencia Preparatoria', '2', 'Alodia Prieto', NULL, '#C00000', '#FFFFCC', NULL, '2023-04-17 23:14:03', '2023-04-18 02:08:49'),
(21, 'M-220-22', '2023-04-19 10:00:00', '2023-04-19 11:00:00', 'Audiencia Única', '1', 'Inge Müller', NULL, '#000000', '#99CCFF', '', '2023-04-17 23:14:34', '2023-04-17 23:14:34'),
(22, 'M-9-23', '2023-04-19 10:00:00', '2023-04-19 11:00:00', 'Audiencia Única', '2', 'Alodia Prieto', NULL, '#000000', '#99CCFF', '', '2023-04-17 23:15:54', '2023-04-17 23:15:54'),
(23, 'T-151-22', '2023-04-19 11:00:00', '2023-04-19 12:30:00', 'Audiencia de Juicio', '2', 'Alodia Prieto', NULL, '#000000', '#99FF33', '', '2023-04-17 23:16:37', '2023-04-17 23:16:37'),
(24, 'T-10-23', '2023-04-19 11:00:00', '2023-04-19 12:30:00', 'Audiencia de Juicio', '3', 'Marianela Luna', NULL, '#000000', '#99FF33', '', '2023-04-17 23:16:51', '2023-04-17 23:16:51'),
(25, 'T-60-22', '2023-04-19 12:00:00', '2023-04-19 13:30:00', 'Audiencia de Juicio', '1', 'Inge Müller', NULL, '#000000', '#99FF33', '', '2023-04-17 23:17:13', '2023-04-17 23:17:13'),
(26, 'O-262-22', '2023-04-20 09:00:00', '2023-04-20 10:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:26:47', '2023-04-17 23:26:47'),
(27, 'I-15-23', '2023-04-20 09:00:00', '2023-04-20 10:00:00', 'Audiencia Preparatoria', '2', 'Alodia Prieto', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:27:07', '2023-04-17 23:27:07'),
(28, 'T-27-23', '2023-04-20 09:00:00', '2023-04-20 10:00:00', 'Audiencia Preparatoria', '3', 'Marianela Luna', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:27:21', '2023-04-17 23:27:21'),
(29, 'M-86-21', '2023-04-20 10:00:00', '2023-04-20 11:00:00', 'Audiencia Única', '1', 'Inge Müller', NULL, '#000000', '#99CCFF', '', '2023-04-17 23:28:06', '2023-04-17 23:28:06'),
(30, 'M-225-22', '2023-04-20 10:00:00', '2023-04-20 11:00:00', 'Audiencia Única', '2', 'Alodia Prieto', NULL, '#000000', '#99CCFF', '', '2023-04-17 23:28:30', '2023-04-17 23:28:30'),
(31, 'O-57-23', '2023-04-20 10:00:00', '2023-04-20 11:00:00', 'Audiencia Preparatoria', '3', 'Marianela Luna', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:28:57', '2023-04-17 23:28:57'),
(32, 'O-150-22', '2023-04-20 12:00:00', '2023-04-20 13:30:00', 'Audiencia de Juicio', '1', 'Inge Müller', NULL, '#000000', '#99FF33', '', '2023-04-17 23:29:41', '2023-04-17 23:29:41'),
(33, 'T-149-22', '2023-04-20 11:00:00', '2023-04-20 12:30:00', 'Audiencia de Juicio', '2', 'Alodia Prieto', NULL, '#000000', '#99FF33', '', '2023-04-17 23:30:05', '2023-04-17 23:30:05'),
(34, 'O-52-23', '2023-04-21 09:00:00', '2023-04-21 10:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:33:33', '2023-04-17 23:33:33'),
(35, 'O-48-23', '2023-04-21 09:00:00', '2023-04-21 10:00:00', 'Audiencia Preparatoria', '3', 'Marianela Luna', NULL, '#C00000', '#FFFFCC', '', '2023-04-17 23:33:49', '2023-04-17 23:33:49'),
(36, 'I-6-22', '2023-04-21 10:00:00', '2023-04-21 11:30:00', 'Audiencia Única', '1', 'Inge Müller', NULL, '#000000', '#99CCFF', '', '2023-04-17 23:34:38', '2023-04-17 23:34:38'),
(37, 'M-227-22', '2023-04-21 10:00:00', '2023-04-21 11:00:00', 'Audiencia Única', '2', 'Alodia Prieto', NULL, '#000000', '#99CCFF', '', '2023-04-17 23:35:03', '2023-04-17 23:35:03'),
(42, 'T-29-23', '2023-04-24 09:00:00', '2023-04-24 10:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', NULL, '2023-04-18 16:51:11', '2023-04-18 16:51:11'),
(43, 'T-35-23', '2023-04-24 09:00:00', '2023-04-24 10:00:00', 'Audiencia Preparatoria', '2', 'Alodia Prieto', NULL, '#C00000', '#FFFFCC', NULL, '2023-04-18 16:51:32', '2023-04-18 16:51:32'),
(44, 'T-28-23', '2023-04-24 09:00:00', '2023-04-24 10:00:00', 'Audiencia Preparatoria', '3', 'Marianela Luna', NULL, '#C00000', '#FFFFCC', NULL, '2023-04-18 17:20:29', '2023-04-18 17:20:29'),
(45, 'M-250-22', '2023-04-24 10:00:00', '2023-04-24 11:00:00', 'Audiencia Única', '1', 'Inge Müller', NULL, '#000000', '#99CCFF', NULL, '2023-04-18 17:20:59', '2023-04-18 17:20:59'),
(46, 't-96-22', '2023-04-24 12:00:00', '2023-04-24 13:30:00', 'Audiencia de Juicio', '1', 'Inge Müller', NULL, '#000000', '#99FF33', 'Continuación', '2023-04-18 17:21:29', '2023-04-18 17:22:07'),
(47, 'T-105-22', '2023-04-24 12:00:00', '2023-04-24 13:30:00', 'Audiencia de Juicio', '2', 'Alodia Prieto', NULL, '#000000', '#99FF33', 'Continuación', '2023-04-18 17:24:50', '2023-04-18 17:24:50'),
(48, 'O-138-22', '2023-04-24 12:00:00', '2023-04-24 13:30:00', 'Audiencia de Juicio', '3', 'Marianela Luna', NULL, '#000000', '#99FF33', 'Continuación', '2023-04-18 17:25:01', '2023-04-18 17:25:01'),
(49, 'O-232-21', '2023-04-25 09:00:00', '2023-04-25 10:00:00', 'Audiencia Preparatoria', '1', 'Inge Müller', NULL, '#C00000', '#FFFFCC', NULL, '2023-04-18 17:25:36', '2023-04-18 17:25:36'),
(50, 'O-60-23', '2023-04-25 09:00:00', '2023-04-25 10:00:00', 'Audiencia Preparatoria', '3', 'Marianela Luna', NULL, '#C00000', '#FFFFCC', NULL, '2023-04-18 17:58:35', '2023-04-18 17:58:35'),
(51, 'M-248-22', '2023-04-25 10:00:00', '2023-04-25 11:00:00', 'Audiencia Única', '1', 'Inge Müller', NULL, '#000000', '#99CCFF', NULL, '2023-04-18 17:59:00', '2023-04-18 17:59:00'),
(53, 'M-293-22', '2023-04-25 10:00:00', '2023-04-25 11:00:00', 'Audiencia Única', '2', 'Audiencia Única', NULL, '#000000', '#99CCFF', NULL, '2023-04-18 20:44:11', '2023-04-18 20:44:11'),
(54, 'I-38-22', '2023-04-25 11:00:00', '2023-04-25 12:30:00', 'Audiencia de Juicio', '3', 'Audiencia de Juicio', NULL, '#000000', '#99FF33', NULL, '2023-04-18 20:46:02', '2023-04-18 20:46:59'),
(55, 'O-158-22', '2023-04-25 12:00:00', '2023-04-25 13:30:00', 'Audiencia de Juicio', '1', 'Audiencia Preparatoria', NULL, '#000000', '#99FF33', NULL, '2023-04-18 20:47:41', '2023-04-18 20:47:41'),
(56, 'O-173-22', '2023-04-25 12:00:00', '2023-04-25 13:30:00', 'Audiencia de Juicio', '2', 'Audiencia Preparatoria', NULL, '#000000', '#99FF33', NULL, '2023-04-18 20:47:54', '2023-04-18 20:47:54');

ALTER TABLE `audiencias`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `audiencias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
COMMIT;

CREATE TABLE `magistrados` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
)

INSERT INTO `magistrados` (`id`, `nombre`, `apellido`, `created_at`, `updated_at`) VALUES
(1, 'Inge', 'Müller', '2021-04-18 16:51:11', '2021-04-18 16:51:11'),
(2, 'Alodia', 'Prieto', '2021-04-18 16:51:32', '2021-04-18 16:51:32'),
(3, 'Marianela', 'Luna', '2021-04-18 17:20:29', '2021-04-18 17:20:29');