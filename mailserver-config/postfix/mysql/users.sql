
-- Run this as MAILDBUSER. These are the mail accounts for users. Make sure they match the database domains.

INSERT INTO `{MAILDBNAME}`.`virtual_users` (`id`, `domain_id`, `password` , `email`) VALUES
(1, 1, ENCRYPT('{PASSWORD1}', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), '{EMAIL1}@{DN}'),
(2, 1, ENCRYPT('{PASSWORD2}', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), '{EMAIL2}@{DN}');
