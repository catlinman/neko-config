#!/bin/bash

# ZNC certificate transfer.
cat /etc/letsencrypt/live/hivecom.net/privkey.pem > /var/lib/znc/.znc/znc.pem
cat /etc/letsencrypt/live/hivecom.net/cert.pem >> /var/lib/znc/.znc/znc.pem

