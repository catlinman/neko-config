
# Fail2Ban Setup #

This is my primary placeholder Fail2Ban setup for servers I manage. The default
configuration file is quite the mess and also lacks support for rather common
things such as nginx. It also fails to explain certain settings in some parts.

## Installation ##

Copy the files to your Fail2Ban configuration directory. You should not have
to overwrite anything other than an entry in the *filter.d* directory as other
than that everything is handled through your local *jail.local* file.
