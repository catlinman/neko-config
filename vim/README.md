
# Vim Configuration #

![](https://github.com/catlinman/neko-config/blob/master/vim/preview.png)

This is my primary setup for Vim on both my local machines as well as my
servers.

## Installation ##

Copy and override the *.vimrc* file. If you are using gvim on Windows replace
the corresponding *_vimrc* file. I use Vundle meaning you will have to download
that before getting things to run. The configuration file itself contains
further instructions on this. Once you have everything set and ready run
:PluginInstall and you should be good to go. Make sure to check further
dependencies though!

I have also included a modified base16-theme. It should go well with all
my other themes and settings! If you are using the base16-plugin simply
copy it over to *.vim/bundle/base16-vim/colors/*.

Additionally my minimal server configuration is also available as *.vimrc.min*.
It's a very minimal configuration without any plugins that carries over a lot
of the functionality of the main configuration without all the bloat making
it easy to setup without much hassle.
