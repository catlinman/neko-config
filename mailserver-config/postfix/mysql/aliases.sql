
-- Run this as MAILDBUSER. These are aliases which forward to actual accounts. Make sure the accounts exist.

INSERT INTO `{MAILDBNAME}`.`virtual_aliases` (`id`, `domain_id`, `source`, `destination`) VALUES
(1, 1, '{ALIAS}@{DN}', '{EMAIL1}@{DN}');
