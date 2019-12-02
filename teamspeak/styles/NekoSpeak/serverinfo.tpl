<!--
TeamSpeak 3 Client Infoframe Template (EN)
Copyright 2009,2010 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CLIENT_META_DATA%%. At this time you can 
also use %%?CLIENT_META_DATA%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

%%AVATAR_MAX_WIDTH%%350
%%AVATAR_MAX_HEIGHT%%350
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for server:
SERVER_NAME
SERVER_VERSION
SERVER_PLATFORM
SERVER_CLIENTS_ONLINE
SERVER_QUERYCLIENTS_ONLINE
SERVER_CHANNELS_ONLINE
SERVER_UPTIME
SERVER_CLIENT_CONNECTIONS
SERVER_QUERY_CLIENT_CONNECTIONS
SERVER_ADDRESS
SERVER_PORT
SERVER_ICON
SERVER_LICENSE
PLUGIN_INFO_DATA
SERVER_MAXCLIENTS
SERVER_NO_RESERVED_SLOTS
SERVER_RESERVED_SLOTS
SERVER_REFRESH_INACTIVE
SERVER_REFRESH_ACTIVE
TR_SERVER_NICKNAMES
SERVER_NICKNAMES

-->

<table>
	<tr><td class="title">
		<a href="channelid://0">%%SERVER_NAME%%</a>
		<span class="addr">
			<span>&nbsp;(</span>
			<span>%%SERVER_ADDRESS%%</span>
			<span>:%%?SERVER_PORT%%</span>
			<span>)</span>
		</span>
	</td></tr>
</table>

<table>
	<tr><th class="hl">%%TR_SERVER_NICKNAMES%%</th></tr><tr><td class="key">%%?SERVER_NICKNAMES%%</td></tr>
</table>

<table>
	<tr><th class="hl">Server info</th></tr>
</table>
	
<table>
	<tr><td class="key">%%TR_SERVER_VERSION%%</td><td class="val">%%SERVER_PLATFORM%% %%SERVER_VERSION%%</td></tr>

	<tr><td class="key">%%TR_SERVER_LICENSE%%</td><td class="val">%%SERVER_LICENSE%%</td></tr>

	<tr><td class="key">%%TR_SERVER_UPTIME%%</td><td class="val">%%SERVER_UPTIME%%</td></tr>

	<tr><td class="key">%%TR_SERVER_CHANNELS_ONLINE%%</td><td class="val">%%SERVER_CHANNELS_ONLINE%%</td></tr>

	<tr><td class="key">Queries</td><td class="val">%%SERVER_QUERYCLIENTS_ONLINE%%&nbsp;/&nbsp;%%SERVER_MAXCLIENTS%%</td></tr>

	<tr><td class="key">%%TR_SERVER_CLIENTS_ONLINE%%</td><td class="val">%%SERVER_CLIENTS_ONLINE%%&nbsp;/&nbsp;%%SERVER_MAXCLIENTS%%
	&nbsp;(-%%?SERVER_RESERVED_SLOTS%%)
	</td></tr>

	<tr><td class="key">%%TR_SERVER_CLIENT_CONNECTIONS%%</td><td class="val">%%SERVER_CLIENT_CONNECTIONS%%</td></tr>

	%%?PLUGIN_INFO_DATA%%
</table>

<table>
	<tr><td class="link">
		<a class="inactive" href="%%?SERVER_REFRESH_INACTIVE%%">%%?TR_SERVER_REFRESH_INACTIVE%%</a>
		<a class="active" href="%%?SERVER_REFRESH_ACTIVE%%">%%?TR_SERVER_REFRESH_ACTIVE%%</a>
	</td></tr>
</table>


