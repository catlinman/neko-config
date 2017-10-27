
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --standalone --renew-by-default --expand \
	-d quotic.net \
	-d www.quotic.net \
	-d dev.quotic.net

systemctl start nginx.service # Restart the nginx server.

