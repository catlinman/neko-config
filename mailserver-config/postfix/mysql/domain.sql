
-- Run this as MAILDBUSER. These are the domains handled by the mail server.

INSERT INTO {MAILDBNAME}.virtual_domains (id, name) VALUES
('1', '{DN}'),
('2', '{FQDN}');
