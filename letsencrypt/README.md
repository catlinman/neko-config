
# LetsEncrypt Configuration #

These are LetsEncrypt configuration files that I use for various domains. You
can use them as a baseline for configuring your own.

## Installation ##

Simply running the files as an administrator should set everything up. There is
a systemd service included which runs certbot for timed fetching of new
certificates. The Hivecom configuration additionally deals with copying a
certificate for use with ZNC.