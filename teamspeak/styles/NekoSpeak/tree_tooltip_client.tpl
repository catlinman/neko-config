<!--
TeamSpeak 3 Client Tooltip Template
Copyright 2017 (c) TeamSpeak Systems GmbH

The replaceable variables are embedded in "%%" like %%CLIENT_NAME%%. At this time you can 
also use %%?CLIENT_NAME%% (note the questionmark), which is a tiny "if"- query. Use it, to 
remove the whole line, if a variable is empty or just "0".

Templates can be placed in "styles/" for default theme or in a sub folder named like an available 
theme (e.g. "styles/bluesky/"). Be aware that this template will not automaticly be translated when 
displayed.

Predefined values have to be inside the html comment-tag to make sure that they will be parsed
before the replacing begins! Remove the "#" to enable.
-->

<style type="text/css">

table { 
    border-collapse: collapse;
    border-spacing: 0px;
}

td {
    padding: 0px;
	white-space: nowrap;
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

.avatar {
	padding: 0px;
}

</style>

<table width="350">
	<tr>
	<td class="avatar" width="50">%%?CLIENT_AVATAR%%</td>
	<td>
		<table>
			<tr><td class="title" colspan="2">%%CLIENT_NAME%%</td></tr>
			<tr><td class="key">%%TR_CLIENT_CONNECTED_SINCE%%</td><td class="val">%%CLIENT_CONNECTED_SINCE%%</td></tr>
		</table>
	</td>
	</tr>
</table>
