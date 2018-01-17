
# GoAccess Service & nginx Proxy Setup #

This is my personal setup for GoAccess access log monitoring on my servers.
I use *systemd* to manage a service that autostarts the GoAccess realtime output
via WebSocket connections which are bound to the localhost. To allow outbound
connections, I have nginx setup to serve the static file behind required login
authentication. To proxy pass the WebSocket server an extra directive is setup.

## Installation ##

The nginx configuration should go into your *sites-available* directory and once
prepared get symlinked to the *sites-enabled* directory. For the service, place
it in your */etc/systemd/system/* directory. Make sure to reload the daemon.

Before running the service make sure that all the paths match up. You should
also modify the configuration to your liking. I added a few comments here and
there to make some rather vague settings clearer. GeoIP is enabled by default
so if you do not have it compiled with the support make sure to disable it.
You will also have to provide it with a custom database unless you use the
internal system one. For more instructions on this please refer to the
configuration file.
