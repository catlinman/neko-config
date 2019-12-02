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

#%%CLIENT_IGNORE_AVATAR%%
#%%AVATAR_MAX_WIDTH%%0
#%%AVATAR_MAX_HEIGHT%%0
#%%CLIENT_SERVER_SHOW_MAX_GROUPS%%3

Replacable variables for clients:
CLIENT_NAME
CLIENT_NAME_PERCENT_ENCODED
CLIENT_CUSTOM_NICK_NAME
CLIENT_COUNTRY_TOOLTIP
CLIENT_COUNTRY_IMAGE
CLIENT_ID
CLIENT_UNIQUE_ID
CLIENT_AWAY_MESSAGE
CLIENT_PLATFORM
CLIENT_VERSION
CLIENT_VERSION_STATE   [Alpha|Beta|Stable|Old Alpha]
CLIENT_VERSION_SHORT
CLIENT_DESCRIPTION
CLIENT_ICON
CLIENT_TOTALCONNECTIONS
CLIENT_CREATED
CLIENT_LASTCONNECTED
CLIENT_CONNECTED_SINCE
CLIENT_FLAG_AVATAR
CLIENT_IGNORE_AVATAR
AVATAR_MAX_WIDTH
AVATAR_MAX_HEIGHT
CLIENT_TALK_REQUEST_TIME
CLIENT_TALK_REQUEST_MSG
CLIENT_VOLUME_MODIFIER
CLIENT_CHANNEL_GROUP_NAME
CLIENT_CHANNEL_GROUP_ICON
CLIENT_SERVER_GROUP_NAME
CLIENT_SERVER_GROUP_ICON
CLIENT_DATABASE_ID
CLIENT_SERVER_SHOW_MAX_GROUPS
PLUGIN_INFO_DATA
-->

-->


<table>
	<tr><td class="title">
	%%?CLIENT_COUNTRY_IMAGE_SCALED%%&nbsp;&nbsp;
	<a href="client://%%CLIENT_ID%%/%%CLIENT_UNIQUE_ID%%~%%CLIENT_NAME_PERCENT_ENCODED%%">%%CLIENT_NAME%% </a>
	<label style="color: #AAAAAA;">&nbsp;(%%?CLIENT_CUSTOM_NICK_NAME%%)</label>
	</td></tr>
	<tr><td class="afk">[%%?CLIENT_AWAY_MESSAGE%%]</td></tr>
</table>

<table>
	<tr><td><i>%%?CLIENT_DESCRIPTION%%</i></td></tr>
</table>

<br /><table>
	<tr><th class="hl">CLIENT INFO</th></tr>
</table>

<table>
	<tr><td class="key">%%TR_CLIENT_CONNECTED_SINCE%%</td><td class="val">%%CLIENT_CONNECTED_SINCE%%</td></tr>

	<tr><td class="key">%%TR_CLIENT_TOTALCONNECTIONS%%</td><td class="val">%%CLIENT_TOTALCONNECTIONS%%</td></tr>

	<tr><td class="key">%%TR_CLIENT_CREATED%%</td><td class="val">%%CLIENT_CREATED%%</td></tr>

	<tr><td class="key">%%?TR_CLIENT_VOLUME_MODIFIER%%</td><td class="val">%%?CLIENT_VOLUME_MODIFIER%% dB</td></tr>

	<tr><td class="key">%%TR_CLIENT_VERSION%%</td><td class="val">%%CLIENT_PLATFORM%% %%CLIENT_VERSION%% %%CLIENT_VERSION_STATE%%</td></tr>

	<tr><td class="key">Unique ID</td><td class="val">%%CLIENT_UNIQUE_ID%%</td></tr>

	<tr><td class="key">Client / DB ID</td><td class="val">%%CLIENT_ID%%&nbsp;/&nbsp;%%CLIENT_DATABASE_ID%%</td></tr>
</table>

<br /><table class="InfoFrame_Table">%%?PLUGIN_INFO_DATA%%</table>

<table>
	<tr><th class="hl">%%TR_CLIENT_SERVER_GROUPS%%</th></tr>
	<tr><td class="key">%%CLIENT_SERVER_GROUP_NAME%%</td></tr>
</table>

<table>
	<tr><th class="hl">%%TR_CLIENT_CHANNEL_GROUP%%</th></tr>
	<tr><td class="key">%%CLIENT_CHANNEL_GROUP_NAME%%</td></tr>
</table>

<table>
	<tr><th></th></tr>
</table>

	

