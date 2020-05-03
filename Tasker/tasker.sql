SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";






CREATE TABLE `projects` (
  `id` int(3) NOT NULL,
  `Full name` varchar(20) CHARACTER SET latin1 NOT NULL,
  `Short name` varchar(4) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `projects` (`id`, `Full name`, `Short name`) VALUES
(1, 'collegework', 'clw'),
(10, 'schoolwork', 'slw'),
(11, 'trainingdetail', 'tgdl');



CREATE TABLE `tasks` (
  `id` int(3) NOT NULL,
  `project_short_name` varchar(4) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `project_task_num` int(3) NOT NULL,
  `task_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `task_desc` varchar(1000) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `state` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `tasks` (`id`, `project_short_name`, `project_task_num`, `task_name`, `task_desc`, `state`) VALUES
(29, 'clw', 1, ' one', 'a', 4),
(30, 'clw', 2, ' two', 'b', 4),
(31, 'clw', 1, ' three', 'c', 1),
(32, 'slw', 2, ' four', 'd', 1),
(33, 'slw', 1, 'five', 'e', 4),
(34, 'slw', 2, ' six', 'f', 4),
(35, 'slw', 3, ' seven', 'g', 1),
(36, 'tgdl', 4, ' eight', 'h', 2),
(37, 'tgdl', 5, ' nine', 'i', 1),
(38, 'tgdl', 1, ' ten', 'j', 4);





CREATE TABLE `users` (
  `id` int(2) NOT NULL,
  `login` varchar(16) CHARACTER SET latin1 NOT NULL,
  `password` varchar(16) CHARACTER SET latin1 NOT NULL,
  `admin` text CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `users` (`id`, `login`, `password`, `admin`) VALUES
(1, 'vishal', 'vishal123', 'yes'),
(3, 'test', 'test123', 'no');


ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `projects`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;


ALTER TABLE `tasks`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;


ALTER TABLE `users`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;


