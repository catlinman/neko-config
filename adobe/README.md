
# Adobe Application Configurations #

These are the workspace and settings files for my Adobe CC applications.
Currently these include Adobe Photoshop, Premiere Pro and After Effects. I use
multiple layouts for various amounts of monitors which you can pick and select.

## Installation ##

Though the installation of the workspace settings is similar in a drag and drop
fashion between the applications, for some reason Adobe has vastly different
locations of where they like to store your configurations. Additionally, every
few versions they will adopt a new convention so be prepared to search through
more than a few directories if the locations I list for each application don't
line up anymore. Still, the folders I list should give you a good starting
indicator of where to check! Good luck!

**Note: Some layouts have predefined numbers that might conflict with your already present layouts.**

You should be able to simply increment the number in the layout filenames to something higher that hasn't be used by your installation to avoid overwriting your own settings!

### After Effects ###

For the these workspace layouts to work, you will have to navigate to your
Adobe After Effects application data directory. On Windows this would be
`%APPDATA%\Adobe\After Effects\[Version]\ModifiedWorkspaces\`. I haven't checked on MacOS but I assume it would be in a subdirectory of `~/Library/Application Support/`.

Simply drag and drop the workspaces into the `ModifiedWorkspaces` folder and
you should be able to select them after a restart of the application from
`Window > Workspace`.

### Photoshop ###

Just like with After Effects, head to your application data directory and find
the Adobe root directory. From there, you'll have to find your current Photoshop version and go through the user settings within it.

Windows as an example once more; `%APPDATA%\Adobe\Adobe Photoshop CC [Version]\[...] Settings\WorkSpaces (Modified)\`. Since both After Effects and
Photoshop share somewhat of the same structure - but not format - I'd say the
configuration on MacOS will be in a similar location.

### Premiere Pro ###

To save you the hassle of finding out where Adobe decided to plop your settings
this year, I have included project files for the layouts in a subdirectory of
the Premiere configuration. Hopefully, you can load these and Premiere will
automatically apply the layout. Make sure `Window > Workspaces > Import Workspaces from Projects` is checked. Additionally, you'll still have to save
the layout to use it on other projects.

Contrary to both After Effects and Photoshop, Premiere Pro stores your configuration for workspaces in your documents directory.

On Windows this would be
`%HOMEPATH%\Documents\Adobe\Premiere Pro\[Version]\Profile-[User]\Layouts`.

I can only assume that the configurations are stored in the user documents directory on MacOS but don't take my work on it.

Once more, drag and drop configuration in here and then restart the application. Navigate to `Window > Workspaces` and select one of the new layouts there.