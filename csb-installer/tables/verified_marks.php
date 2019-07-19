<?php
/**
 * Created by PhpStorm.
 * User: starstryder
 * Date: 7/19/19
 * Time: 10:20 AM
 */

$structure = "CREATE TABLE `verified_marks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `image_id` int(10) unsigned NOT NULL,
  `application_id` int(10) unsigned NOT NULL,
  `shared_mark_id` int(10) unsigned DEFAULT NULL,
  `x` double(8,2) NOT NULL,
  `y` double(8,2) NOT NULL,
  `diameter` double(8,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `verified_marks_user_id_foreign` (`user_id`),
  KEY `verified_marks_image_id_foreign` (`image_id`),
  KEY `verified_marks_shared_mark_id_foreign` (`shared_mark_id`),
  KEY `verified_marks_application_id_foreign` (`application_id`),
  CONSTRAINT `verified_marks_application_id_foreign` FOREIGN KEY (`application_id`) REFERENCES `applications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `verified_marks_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`) ON DELETE CASCADE,
  CONSTRAINT `verified_marks_shared_mark_id_foreign` FOREIGN KEY (`shared_mark_id`) REFERENCES `shared_marks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `verified_marks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;";