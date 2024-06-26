CREATE TABLE `users` (
              `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
              `forum_id` int(10) unsigned DEFAULT NULL,
              `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
              `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
              `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
              `details` text COLLATE utf8_unicode_ci,
              `finished_tutorial` tinyint(1) NOT NULL DEFAULT '0',
              `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'standard',
              `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
              `created_at` timestamp DEFAULT CURRENT_TIMESTAMP,
              `updated_at` timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
              `classroom_user_id` int(11) NOT NULL DEFAULT '0',
              `reset_password` tinyint(1) NOT NULL DEFAULT '0',
              `public_profile` tinyint(1) NOT NULL DEFAULT '1',
              `wp_id` int(11) NOT NULL DEFAULT '1',
              `gravatar_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '|BASE_URL|csb-content/images/profile/Default_Avatar.png',
              `first_name` text COLLATE utf8_unicode_ci,
              `last_name` text COLLATE utf8_unicode_ci,
              `level` int(11) NOT NULL DEFAULT '0',
              `tutorials_completed` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
              `scistarter_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
              `scistarter_id` int(11) DEFAULT NULL,
              `scistarter_profile_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
              `facebook_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
              `twitter_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
              `public_name` tinyint(1) NOT NULL DEFAULT '0',
          PRIMARY KEY (`id`),
          UNIQUE KEY `users_name_unique` (`name`),
              KEY `emails_on_users` (`email`),
              KEY `users_email_index` (`email`),
              KEY `users_remember_token_index` (`remember_token`)
        ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;