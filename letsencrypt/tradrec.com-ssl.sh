
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --expand --renew-by-default --standalone \
	-d tradrec.com \
	-d www.tradrec.com \
	-d dev.tradrec.com

systemctl start nginx.service # Restart the nginx server.

