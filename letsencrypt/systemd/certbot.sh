
/usr/bin/certbot renew \
    --pre-hook \
    " \
        /usr/bin/systemctl stop nginx.service \
    " \
    --post-hook \
    " \
        /usr/bin/systemctl start nginx.service ; \

        cp /etc/letsencrypt/live/hivecom.net/{cert,chain,fullchain,privkey}.pem /opt/syncplay/cert ; \

        cat /etc/letsencrypt/live/hivecom.net/privkey.pem > /var/lib/znc/.znc/znc.pem && \
        cat /etc/letsencrypt/live/hivecom.net/fullchain.pem >> /var/lib/znc/.znc/znc.pem ; \

        cat /etc/letsencrypt/live/irc.hivecom.net/privkey.pem > /srv/irc.hivecom.net/unrealircd/conf/tls/server.key.pem && \
        cat /etc/letsencrypt/live/irc.hivecom.net/cert.pem > /srv/irc.hivecom.net/unrealircd/conf/tls/server.cert.pem && \
        cat /etc/letsencrypt/live/irc.hivecom.net/fullchain.pem > /srv/irc.hivecom.net/unrealircd/conf/tls/server.fullchain.pem && \
        /srv/irc.hivecom.net/unrealircd/unrealircd reloadtls \
    " \
    --agree-tos
