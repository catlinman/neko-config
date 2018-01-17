
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --standalone --renew-by-default --expand \
	-d nekodrop.com \
	-d www.nekodrop.com \
	-d alpha.nekodrop.com \
    -d files.alpha.nekodrop.com \
    -d comrelay.alpha.nekodrop.com \
    -d goaccess.alpha.nekodrop.com

systemctl start nginx.service # Restart the nginx server.
