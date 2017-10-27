
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

letsencrypt certonly --expand --allow-subset-of-names --renew-by-default -a standalone \
	-d mavulp.com \
	-d www.mavulp.com \
	-d dev.mavulp.com \
	-d roflbox.mavulp.com

systemctl start nginx.service # Restart the nginx server.

