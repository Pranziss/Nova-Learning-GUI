-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2025 at 05:30 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `latestnova_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `type` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `user_id`, `message`, `type`, `created_at`, `is_read`) VALUES
(1, 2, 'You created quiz: Java Exam', 'quiz_created', '2025-11-22 05:23:34', 0),
(2, 3, 'You created quiz: Math', 'quiz_created', '2025-11-22 05:28:36', 0),
(3, 2, 'You scored 100% on \'Math\'', 'quiz_taken', '2025-11-22 06:01:38', 0),
(4, 2, 'You created quiz: PE', 'quiz_created', '2025-11-22 06:26:45', 0),
(5, 2, 'You scored 100% on \'PE\'', 'quiz_taken', '2025-11-22 08:15:45', 0),
(6, 2, 'You scored 50% on \'Java Exam\'', 'quiz_taken', '2025-11-22 08:32:20', 0),
(7, 2, 'You scored 0% on \'Java Exam\'', 'quiz_taken', '2025-11-22 08:33:31', 0),
(8, 2, 'You scored 0% on \'Java Exam\'', 'quiz_taken', '2025-11-22 08:36:49', 0),
(9, 2, 'You scored 100% on \'Java Exam\'', 'quiz_taken', '2025-11-22 08:39:37', 0),
(10, 2, 'You scored 100% on \'Java Exam\'', 'quiz_taken', '2025-11-22 08:41:03', 0),
(11, 2, 'You created quiz: Filipino', 'quiz_created', '2025-11-22 08:42:03', 0),
(12, 2, 'You created quiz: Mind', 'quiz_created', '2025-11-22 08:43:34', 0),
(13, 2, 'You created quiz: Trial', 'quiz_created', '2025-11-22 08:44:25', 0),
(14, 2, 'You created quiz: Refresher', 'quiz_created', '2025-11-22 08:46:27', 0),
(15, 2, 'You scored 100% on \'Refresher\'', 'quiz_taken', '2025-11-22 08:46:51', 0),
(16, 2, 'You scored 100% on \'Trial\'', 'quiz_taken', '2025-11-22 13:16:10', 0),
(17, 2, 'You scored 100% on \'Mind\'', 'quiz_taken', '2025-11-22 14:31:44', 0),
(18, 2, 'You scored 0% on \'Mind\'', 'quiz_taken', '2025-11-22 16:14:39', 0),
(19, 1, 'You created quiz: Java Exam', 'quiz_created', '2025-11-22 20:36:56', 0),
(20, 1, 'You completed quiz: Math - Score: 95.00', 'quiz_completed', '2025-11-22 18:36:56', 0),
(21, 1, 'You created quiz: PE Quiz', 'quiz_created', '2025-11-21 20:36:56', 0),
(22, 3, 'You scored 100% on \'Refresher\'', 'quiz_taken', '2025-11-22 20:45:46', 0),
(23, 3, 'You scored 100% on \'Trial\'', 'quiz_taken', '2025-11-22 20:46:58', 0),
(24, 3, 'You created quiz: FirePOWAHH', 'quiz_created', '2025-11-22 20:48:26', 0),
(25, 3, 'You scored 100% on \'FirePOWAHH\'', 'quiz_taken', '2025-11-22 20:50:26', 0),
(26, 4, 'You created quiz: FirstQuiz', 'quiz_created', '2025-11-22 20:58:42', 0),
(27, 4, 'You scored 0% on \'FirstQuiz\'', 'quiz_taken', '2025-11-22 20:59:37', 0),
(28, 4, 'You scored 100% on \'FirstQuiz\'', 'quiz_taken', '2025-11-22 20:59:45', 0),
(29, 2, 'You scored 0% on \'FirePOWAHH\'', 'quiz_taken', '2025-11-22 21:08:24', 0),
(30, 2, 'You scored 0% on \'FirstQuiz\'', 'quiz_taken', '2025-11-22 21:08:52', 0),
(31, 2, 'You scored 100% on \'FirstQuiz\'', 'quiz_taken', '2025-11-22 21:09:52', 0),
(32, 2, 'You scored 0% on \'Filipino\'', 'quiz_taken', '2025-11-22 21:11:47', 0),
(33, 2, 'You scored 0% on \'FirstQuiz\'', 'quiz_taken', '2025-11-26 07:01:26', 0),
(34, 1, 'You scored 100% on \'FirstQuiz\'', 'quiz_taken', '2025-11-26 14:09:33', 0),
(35, 1, 'You scored 100% on \'FirePOWAHH\'', 'quiz_taken', '2025-11-26 14:09:49', 0),
(36, 1, 'You scored 0% on \'Trial\'', 'quiz_taken', '2025-11-26 14:10:05', 0),
(37, 1, 'You scored 50% on \'Java Exam\'', 'quiz_taken', '2025-11-26 14:10:44', 0),
(38, 1, 'You scored 0% on \'FirstQuiz\'', 'quiz_taken', '2025-11-26 14:11:54', 0),
(39, 2, 'You created quiz: TESTFORDELETION', 'quiz_created', '2025-11-26 14:55:17', 0),
(40, 2, 'You deleted quiz: TESTFORDELETION', 'quiz_deleted', '2025-11-26 14:55:58', 0),
(43, 2, 'You scored 100% on \'CONFIRMDELETE\'', 'quiz_taken', '2025-11-26 15:13:52', 0),
(44, 2, 'You created quiz: CONGRATS ALL IS  FINISHED', 'quiz_created', '2025-11-26 15:47:40', 0),
(45, 2, 'You scored 100% on \'CONGRATS ALL IS  FINISHED\'', 'quiz_taken', '2025-11-26 15:48:33', 0),
(46, 2, 'You scored 0% on \'CONGRATS ALL IS  FINISHED\'', 'quiz_taken', '2025-11-27 01:05:11', 0),
(47, 2, 'You created quiz: first', 'quiz_created', '2025-11-27 01:25:27', 0),
(48, 2, 'You scored 100% on \'first\'', 'quiz_taken', '2025-11-27 01:26:07', 0),
(52, 2, 'You created quiz: aa', 'quiz_created', '2025-11-27 06:04:11', 0),
(53, 2, 'You scored 100% on \'aa\'', 'quiz_taken', '2025-11-27 06:04:28', 0),
(54, 2, 'You created quiz: atest', 'quiz_created', '2025-11-27 06:24:26', 0),
(55, 2, 'You created quiz: Database Reviewer', 'quiz_created', '2025-11-27 06:32:48', 0),
(56, 2, 'You created quiz: Java Reviewer', 'quiz_created', '2025-11-27 06:36:10', 0),
(57, 2, 'You created quiz: finaltest', 'quiz_created', '2025-11-27 10:36:59', 0),
(58, 2, 'You scored 100% on \'finaltest\'', 'quiz_taken', '2025-11-27 10:37:15', 0),
(59, 2, 'You created quiz: finalb4pre', 'quiz_created', '2025-11-27 22:53:31', 0),
(60, 2, 'You deleted quiz: finalb4pre', 'quiz_deleted', '2025-11-27 22:53:52', 0),
(63, 1, 'You scored 100% on \'finaltest\'', 'quiz_taken', '2025-11-28 00:09:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `option_a` varchar(200) NOT NULL,
  `option_b` varchar(200) NOT NULL,
  `option_c` varchar(200) NOT NULL,
  `option_d` varchar(200) NOT NULL,
  `correct_answer` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`question_id`, `quiz_id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`) VALUES
(1, 1, 'What is JVM?', 'Java Virtual Machine', 'Java Visionary Mission', 'Java Void Main', 'Java Virtual Main', 'A'),
(2, 1, 'What is 1+1', '1', '2', '3', '4', 'B'),
(3, 2, '3x2', '6', '1', '25', '5', 'A'),
(4, 3, 'Family Name of Rizall', 'Protaccio', 'kaka', '1n', 'akka', 'A'),
(5, 4, 'Jose', 'Rizal', 'Mano', 'Po', 'Lo', 'A'),
(6, 5, 'err is to', 'human', 'a', 'b', 'c', 'A'),
(7, 6, 'amen', 'aaaaa', 'a', 'aa', 'a', 'A'),
(8, 7, 'works', 'k', 'm', 'a', 'a', 'A'),
(9, 8, 'Rapi best', 'waifu', 'gooner', 'tsun', 'dere', 'A'),
(10, 9, 'love', 'no', 'yes', 'no', 'no', 'B'),
(13, 12, 'u da goat', 'ong', 'agree', 'no', 'amen', 'A'),
(14, 13, '1', '1', '1', '11', '1', 'A'),
(16, 15, 'aaaa', 'aa', 'aa', 'aa', 'aa', 'A'),
(17, 15, 'aa', 'aa', 'a', 'a', 'a', 'A'),
(18, 16, 'a', 'a', 'a', 'a', 'a', 'A'),
(19, 17, 'Which of the following is a primary key constraint?', 'Allows duplicate values', 'Ensures uniqueness and non-null', 'Allows NULL values', 'Creates foreign key', 'B'),
(20, 17, 'In SQL, which command is used to remove a table completely?', 'DELETE', 'DROP', 'TRUNCATE', 'REMOVE', 'B'),
(21, 17, 'What does ACID stand for in databases?', 'Atomicity, Consistency, Isolation, Durability', 'Access, Control, Integrity, Data', 'Automatic, Centralized, Indexed, Distributed', 'Array, Column, Index, Data', 'A'),
(22, 17, 'Which SQL clause is used to filter rows?', 'ORDER BY', 'GROUP BY', 'WHERE', 'HAVING', 'C'),
(23, 17, 'What is a foreign key?', 'A unique identifier in a table', 'A key referencing another table’s primary key', 'A duplicate key in the same table', 'A temporary key', 'B'),
(24, 18, 'Which keyword is used to inherit a class in Java?', 'implements', 'extends', 'inherits', 'super', 'A'),
(25, 18, 'What is JVM?', 'Java Virtual Machine', 'Java Variable Manager', 'Java Vision Module', 'Java Virtual Model', 'A'),
(26, 18, 'Which of the following is not a Java primitive type?', 'int', 'float', 'String', 'Char', 'A'),
(27, 18, 'What is the default value of a boolean in Java?', 'true', 'false', 'null', '0', 'A'),
(28, 18, 'Which method is the entry point of a Java program?', 'start()', 'run()', 'main()', 'init()', 'A'),
(29, 19, 'a', 'a', 'a', 'a', 'a', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `quiz_id` int(11) NOT NULL,
  `quiz_name` varchar(200) NOT NULL,
  `course` varchar(100) NOT NULL,
  `creator_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`quiz_id`, `quiz_name`, `course`, `creator_id`, `created_at`) VALUES
(1, 'Java Exam', 'IT', 2, '2025-11-22 05:23:34'),
(2, 'Math', 'CS', 3, '2025-11-22 05:28:36'),
(3, 'PE', 'Crim', 2, '2025-11-22 06:26:45'),
(4, 'Filipino', 'Crim', 2, '2025-11-22 08:42:03'),
(5, 'Mind', 'IT', 2, '2025-11-22 08:43:34'),
(6, 'Trial', 'IT', 2, '2025-11-22 08:44:25'),
(7, 'Refresher', 'hehe', 2, '2025-11-22 08:46:27'),
(8, 'FirePOWAHH', 'NIKKE', 3, '2025-11-22 20:48:26'),
(9, 'FirstQuiz', 'IT', 4, '2025-11-22 20:58:42'),
(12, 'CONGRATS ALL IS  FINISHED', 'great job', 2, '2025-11-26 15:47:40'),
(13, 'first', 'it', 2, '2025-11-27 01:25:27'),
(15, 'aa', 'aa', 2, '2025-11-27 06:04:11'),
(16, 'atest', 'a', 2, '2025-11-27 06:24:26'),
(17, 'Database Reviewer', 'IT', 2, '2025-11-27 06:32:48'),
(18, 'Java Reviewer', 'IT', 2, '2025-11-27 06:36:10'),
(19, 'finaltest', 'a', 2, '2025-11-27 10:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `response_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` decimal(5,2) NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`response_id`, `quiz_id`, `user_id`, `score`, `completed_at`) VALUES
(1, 2, 2, 100.00, '2025-11-22 06:01:38'),
(2, 3, 2, 100.00, '2025-11-22 08:15:45'),
(3, 1, 2, 50.00, '2025-11-22 08:32:20'),
(4, 1, 2, 0.00, '2025-11-22 08:33:31'),
(5, 1, 2, 0.00, '2025-11-22 08:36:49'),
(6, 1, 2, 100.00, '2025-11-22 08:39:37'),
(7, 1, 2, 100.00, '2025-11-22 08:41:03'),
(8, 7, 2, 100.00, '2025-11-22 08:46:51'),
(9, 6, 2, 100.00, '2025-11-22 13:16:10'),
(10, 5, 2, 100.00, '2025-11-22 14:31:44'),
(11, 5, 2, 0.00, '2025-11-22 16:14:39'),
(12, 7, 3, 100.00, '2025-11-22 20:45:46'),
(13, 6, 3, 100.00, '2025-11-22 20:46:58'),
(14, 8, 3, 100.00, '2025-11-22 20:50:26'),
(15, 9, 4, 0.00, '2025-11-22 20:59:37'),
(16, 9, 4, 100.00, '2025-11-22 20:59:45'),
(17, 8, 2, 0.00, '2025-11-22 21:08:24'),
(18, 9, 2, 0.00, '2025-11-22 21:08:52'),
(19, 9, 2, 100.00, '2025-11-22 21:09:52'),
(20, 4, 2, 0.00, '2025-11-22 21:11:47'),
(21, 9, 2, 0.00, '2025-11-26 07:01:26'),
(22, 9, 1, 100.00, '2025-11-26 14:09:33'),
(23, 8, 1, 100.00, '2025-11-26 14:09:49'),
(24, 6, 1, 0.00, '2025-11-26 14:10:05'),
(25, 1, 1, 50.00, '2025-11-26 14:10:44'),
(26, 9, 1, 0.00, '2025-11-26 14:11:54'),
(29, 12, 2, 100.00, '2025-11-26 15:48:33'),
(30, 12, 2, 0.00, '2025-11-27 01:05:11'),
(31, 13, 2, 100.00, '2025-11-27 01:26:07'),
(34, 15, 2, 100.00, '2025-11-27 06:04:28'),
(35, 19, 2, 100.00, '2025-11-27 10:37:15'),
(37, 19, 1, 100.00, '2025-11-28 00:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `birthdate`, `created_at`) VALUES
(1, 'parisfaranz', '123pow', '2006-06-30', NULL, '2025-11-17 02:50:36'),
(2, 'Bewba1', '$2a$12$4923k6kegejc7ZWPXwB/iuTRkqoBZYQ6aIgNSRQqqnm2gwFroB8B.', 'lou@gmail.com', '2006-06-30', '2025-11-17 13:56:33'),
(3, 'firepowah', '123123', 'fa@gmail.com', '2001-01-01', '2025-11-18 23:09:37'),
(4, 'myoe', '$2a$10$WJcMdxX3a4NFt26yik.QSe8LnNudctDE2QgdaoiAyQVE5Ij0g6BQy', 'mo@gmail.com', '2001-01-01', '2025-11-22 20:29:25');

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `answer_id` int(11) NOT NULL,
  `response_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_answer` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `idx_notification_user` (`user_id`,`created_at`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `idx_question_quiz` (`quiz_id`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `idx_quiz_creator` (`creator_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`response_id`),
  ADD KEY `idx_response_user` (`user_id`),
  ADD KEY `idx_response_quiz` (`quiz_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `response_id` (`response_id`),
  ADD KEY `question_id` (`question_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `response_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`) ON DELETE CASCADE;

--
-- Constraints for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`creator_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`quiz_id`) REFERENCES `quizzes` (`quiz_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Constraints for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`response_id`) REFERENCES `responses` (`response_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`question_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
