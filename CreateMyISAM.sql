--
-- Create your database `16_or_more_random_characters`
--
CREATE DATABASE IF NOT EXISTS `16_or_more_random_characters` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ;
--
-- Use this database
--
USE `16_or_more_random_characters`; 
--
-- Table structure for table `persons_places_or_things`
-- Table name should be plural => end with 's'
--
CREATE TABLE IF NOT EXISTS `persons_places_or_things` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `col_1` col_type NOT NULL,
  `col_2` col_type NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT=0
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- View structure for view `persons_places_or_things`
-- View name should be singular => no 's'
--
CREATE VIEW `person_place_or_thing` AS
SELECT * FROM persons_places_or_things WHERE deleted=0;
--
-- Data for table `persons_places_or_things`
--
INSERT INTO `persons_places_or_things` (col_1, col_2) VALUES 
 (' ', ' '),
 (' ', ' ');
 
