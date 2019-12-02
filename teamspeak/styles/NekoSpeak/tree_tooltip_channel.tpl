<!--
TeamSpeak 3 Channel Tooltip Template (EN) 
Copyright 2017 (c) TeamSpeak Systems GmbH
 
The replaceable variables are embedded in "%%" like %%CHANNEL_NAME%%. At this time you can also use 
%%?CHANNEL_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to remove the whole 
line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.

#%%IMAGES_MAX_WIDTH%%256
#%%IMAGES_MAX_HEIGHT%%256

Replacable variables for channels:
CHANNEL_NAME
CHANNEL_ID
CHANNEL_TOPIC
CHANNEL_MAXCLIENTS
CHANNEL_MAXFAMILYCLIENTS
CHANNEL_NEEDED_TALK_POWER
CHANNEL_ORDER
CHANNEL_CODEC
CHANNEL_CODEC_BITRATE
CHANNEL_FLAGS
CHANNEL_SUBSCRIPTION
CHANNEL_CLIENTS_COUNT
CHANNEL_VOICE_DATA_ENCRYPTED
CHANNEL_VOICE_DATA_ENCRYPTED_FLAG
CHANNEL_DESCRIPTION
CHANNEL_ICON
PLUGIN_INFO_DATA
IMAGES_MAX_WIDTH
TEMP_CHANNEL_DELETE_DELAY
TEMP_CHANNEL_TIME_TO_DELETE
-->

<style type="text/css">

table {
	border-collapse: collapse;
	border-spacing: 0px;
}

.title {
	color: #FFFFFF;
	text-align: left;
	padding-bottom: 5px;
	font-size: 20px;
	padding-left: 5px;
	white-space: nowrap;
}

.key {
	color: #FFFFFF;
	padding: 2px;
	padding-right: 5px;
	padding-left: 5px;
	margin-bottom: 5px;
}

.val {
	color: #AAAAAA;
	padding: 2px;
	text-align: left;
}

</style>

<table width=350>
	<tr><td class="title" colspan="2">%%CHANNEL_NAME%%</td></tr>
	<tr><td colspan="2" style="padding-bottom: 5px; padding-left: 5px; color:#BDBDBD;">%%?CHANNEL_TOPIC%%</td></tr>
	<tr><td colspan="2" style="padding-bottom: 5px; padding-left: 5px; color:#DA5351;">%%?TEMP_CHANNEL_TIME_TO_DELETE%%</td></tr>
	<tr><td class="key">%%?TR_CHANNEL_FLAGS%%</td><td class="val">%%?CHANNEL_FLAGS%%</td></tr>
	<tr><td class="key">%%TR_CHANNEL_CODEC%%</td><td class="val">%%CHANNEL_CODEC%%</td></tr>
	<tr><td class="key">%%TR_CHANNEL_CODEC_QUALITY%%</td><td class="val">%%CHANNEL_CODEC_QUALITY%% (%%CHANNEL_CODEC_BITRATE%%/s)</td></tr>
	<tr><td class="key">%%?TR_CHANNEL_CLIENTS_COUNT%%</td><td class="val">%%?CHANNEL_CLIENTS_COUNT%% / %%CHANNEL_FLAG_MAXCLIENTS%%</td></tr>
	<tr><td class="key">%%?TR_CHANNEL_NEEDED_TALK_POWER%%</td><td class="val">%%?CHANNEL_NEEDED_TALK_POWER%%</td></tr>
	<tr><td class="key">%%TR_CHANNEL_SUBSCRIPTION%%</td><td class="val">%%CHANNEL_SUBSCRIPTION%%</td></tr>
	<tr><td class="key">%%TR_CHANNEL_VOICE_DATA_ENCRYPTED%%</td><td class="val">%%CHANNEL_VOICE_DATA_ENCRYPTED%%</td></tr>
	%%?PLUGIN_INFO_DATA%%
</table>
