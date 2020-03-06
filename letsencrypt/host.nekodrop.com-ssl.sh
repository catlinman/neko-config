
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --standalone --renew-by-default --expand \
	-d host.nekodrop.com \
    -d files.host.nekodrop.com \
	-d netdata.host.nekodrop.com \
    -d comrelay.host.nekodrop.com \
    -d goaccess.host.nekodrop.com

systemctl start nginx.service # Restart the nginx server.
