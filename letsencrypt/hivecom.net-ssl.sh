
systemctl stop nginx.service # Stop the nginx server as it is listening on port 80 which is used by standalone verification.

certbot certonly --expand --renew-by-default --standalone \
	-d hivecom.net \
	-d www.hivecom.net \
	-d dev.hivecom.net \
	-d ts.hivecom.net \
	-d dc.hivecom.net \
	-d znc.hivecom.net

systemctl start nginx.service # Restart the nginx server.

# ZNC certificate transfer.
cat /etc/letsencrypt/live/hivecom.net/privkey.pem > /var/lib/znc/.znc/znc.pem
cat /etc/letsencrypt/live/hivecom.net/cert.pem >> /var/lib/znc/.znc/znc.pem

