
/* This script sets up the required tables for virtual domains, users and aliases. */
/* Don't forget to create the database beforehand and grant the MAILDBUSER access. */

/* GRANT SELECT ON {MAILDBNAME}.* TO '{MAILDBUSER}'@'127.0.0.1' IDENTIFIED BY '{MAILDBPASS}'; */

USE `{MAILDBNAME}`;

CREATE TABLE `virtual_domains` (
`id` INT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(50) NOT NULL,
PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_users` (
`id` INT NOT NULL AUTO_INCREMENT,
`domain_id` INT NOT NULL,
`password` VARCHAR(106) NOT NULL,
`email` VARCHAR(120) NOT NULL,
PRIMARY KEY (`id`),
UNIQUE KEY email (`email`),
FOREIGN KEY (`domain_id`) REFERENCES virtual_domains(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `virtual_aliases` (
`id` INT NOT NULL AUTO_INCREMENT,
`domain_id` INT NOT NULL,
`source` varchar(100) NOT NULL,
`destination` varchar(100) NOT NULL,
PRIMARY KEY (`id`),
FOREIGN KEY (`domain_id`) REFERENCES virtual_domains(`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
