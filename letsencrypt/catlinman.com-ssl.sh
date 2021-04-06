
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --expand --renew-by-default --standalone \
	-d catlinman.com \
	-d www.catlinman.com \
	-d dev.catlinman.com \
	-d legacy.catlinman.com \
	-d nekocloud.catlinman.com \
    -d nekocast.catlinman.com \
    -d ferdi.catlinman.com

systemctl start nginx.service # Restart the nginx server.
