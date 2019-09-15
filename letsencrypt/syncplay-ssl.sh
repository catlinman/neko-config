#!/bin/bash

# Syncplay certificate transfer.
cp /etc/letsencrypt/live/hivecom.net/* /opt/syncplay/cert/
chown syncplay:syncplay /opt/syncplay/cert/ -R
chmod 700 /opt/syncplay/cert/ -R
