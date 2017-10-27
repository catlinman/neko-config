
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --expand --renew-by-default --standalone \
	-d catlinman.com \
	-d www.catlinman.com \
	-d dev.catlinman.com \
	-d cloud.catlinman.com \
	-d ask.catlinman.com \
	-d twitter.catlinman.com \
	-d facebook.catlinman.com \
	-d youtube.catlinman.com \
	-d steam.catlinman.com \
	-d photo.catlinman.com \
	-d instagram.catlinman.com \
	-d snapchat.catlinman.com \
	-d osu.catlinman.com \
	-d deviantart.catlinman.com \
	-d github.catlinman.com \
	-d googleplus.catlinman.com \
	-d legacy.catlinman.com

systemctl start nginx.service # Restart the nginx server.

