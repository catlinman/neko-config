
# zsh Configuration #

![](https://github.com/catlinman/neko-config/blob/master/zsh/preview.png)

The main zsh configuration I use on all systems I run and manage.

## Installation ##

Before doing anything else: Make sure you have *zsh* and *oh-my-zsh* installed.
You should be able to download zsh through your system's package manager. For
the installation of *oh-my-zsh*, head over to the
[official GitHub repository](https://github.com/robbyrussell/oh-my-zsh) or
check the *.zshrc* file for additional instructions on the command line.

Override your *.zshrc* file with the one in this repository. Furthermore you
will have to run the *plugin.sh* script to download and install plugins required
by my setup. In the configuration file itself are additional steps you should
pay attention to before running as some plugins and settings require extra
dependencies.

## Troubleshooting ##

In some rare cases you might receive the following message after starting zsh.

    compdef: unknown command or service: [application name]

If this error applies to you, make sure that the application/command/service
is installed on your system. With that said, if the error still occurs run
the following command to possibly fix it.

    $ rm -f ~/.zcompdump*; compinit

This will reset zsh's command completion configuration and re-initilize it.
