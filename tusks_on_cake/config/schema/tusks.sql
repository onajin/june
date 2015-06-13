CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created DATETIME,
    modified DATETIME
);

CREATE TABLE `sm_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_name` varchar(1000) NOT NULL,
  `tracker_url` varchar(1000) NOT NULL,
  `created` datetime NOT NULL,
  `reset` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `site` varchar(200) NOT NULL,
  `site_id` int(11) NOT NULL,
  `source_id` int(255) NOT NULL,
  `platform_id` int(255) NOT NULL,
  `active` int(2) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `sm_destinations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `destination_url` varchar(1000) DEFAULT NULL,
  `destination_name` varchar(1000) DEFAULT NULL,
  `tracker_id` int(11) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `clicks` int(11) DEFAULT NULL,
  `status` int(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
);

CREATE TABLE `sm_destinations_trackers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracker_id` int(11) DEFAULT NULL,
  `destination_id` int(11) DEFAULT NULL,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);


