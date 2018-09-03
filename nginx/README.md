
# NGINX Setup #

These are basic configuration files that I have iterated on multiple times to
get what I would consider a rather good basic setup for an nginx server. The
setup also includes support for a fastcgi pass of PHP if you require that.

## Installation ##

To install copy the files to your */etc/nginx* or other base nginx
configuration directory. After that all that's left to be done is to restart
nginx and start preparing sites in the *sites-available* directory. Don't
forget to symlink them to *sites-enabled*.