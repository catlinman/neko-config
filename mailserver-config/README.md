
# Mail server configuration #

This directory contains my configuration files for a full server setup using Postfix with MySQL integration, Dovecot IMAP and POP3, SpamAssassin as a milter with added DKIM and DMARC verification. For SSL and TLS encryption Lets Encrypt is used.

The files in this directory have been stripped of any information regarding sites I manage meaning that the FQDN and other variables must be replaced for your given use case. I've simplified replacement by using keys such as {FQDN} and {DN} in the files which should make things a little easier. Still, pay attention to what you are doing. I've also provided a few MySQL helper scripts that set up the databases required for virtual host management. For the adding of values to these databases I've also provided extra snippets. These have to be modified though for your domains.

These files are provided as is and should be modified for your own personal use. Make sure to read through them thoroughly.

Please note that these files were created and used on a Debian based system. If you are running any other distribution, please make sure to check that the configuration applies to your system.
