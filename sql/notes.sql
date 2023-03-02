CREATE TABLE `notes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `user_id` bigint unsigned NOT NULL,
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci



INSERT INTO `notes` (`id`, `body`, `user_id`) VALUES
(6, 'Ideas for next vacation', 3);
INSERT INTO `notes` (`id`, `body`, `user_id`) VALUES
(7, 'Next art project research', 4);
INSERT INTO `notes` (`id`, `body`, `user_id`) VALUES
(8, 'Work reminders...', 3);
INSERT INTO `notes` (`id`, `body`, `user_id`) VALUES
(9, 'Design techniques blog post', 4);