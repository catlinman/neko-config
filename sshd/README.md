
# SSHD Configuration #

This is my default setup when it comes to setting up a new server and SSH.

A lot of these settings are further customized for the server and setup at hand
so make sure look into what you need for your use case. I run on Arch Linux so
some of the settings here might not be the same for you if you are using some
other SSH service.

Here's a quick rundown of the settings and methods I use:
- Enforce public key authentication
- Disable root login and lock the account
- Plain text login attempts can lead to bans
- 2 Factor Authentication is mandatory
- SFTP requires the same authentication methods

## Installation ##

Replace your SSH file with the one here. Make sure though to adjust it for your
use and not instantly commit changes. It is highly recommended to have a session
running while testing and attempting to reconnect after any changes. Make sure
to reload SSHD as otherwise changes will not be applied.
