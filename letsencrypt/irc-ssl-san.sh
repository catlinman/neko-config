#!/bin/bash

systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --expand --renew-by-default --standalone \
	-d irc.hivecom.net

systemctl start nginx.service # Restart the nginx server.

# UnrealIRCd certificate transfer.
cat /etc/letsencrypt/live/irc.hivecom.net/privkey.pem > /srv/irc.hivecom.net/unrealircd/conf/tls/server.key.pem
cat /etc/letsencrypt/live/irc.hivecom.net/cert.pem > /srv/irc.hivecom.net/unrealircd/conf/tls/server.cert.pem

