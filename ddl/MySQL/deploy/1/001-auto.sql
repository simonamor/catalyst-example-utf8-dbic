-- 
-- Created by SQL::Translator::Producer::MySQL
-- Created on Wed Oct 25 08:40:28 2017
-- 
;
SET foreign_key_checks=0;
--
-- Table: `records`
--
CREATE TABLE `records` (
  `record_id` integer unsigned NOT NULL auto_increment,
  `string` char(255) NULL,
  PRIMARY KEY (`record_id`)
);
SET foreign_key_checks=1;
