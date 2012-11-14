<!-- BEGIN: MAIN -->

	<link href="plugins/bf3server/tpl/css/style.css" rel="stylesheet" type="text/css">

	<h3><a href="{BF3S_URL}" title="{PHP.L.BF3S_VIEWONBL}">{BF3S_NAME}</a></h3>

	<table class="bf3sindex">
		<tr>
			<td>{PHP.L.BF3S_IP}</td><td style="text-align: right;">{BF3S_IP}:{BF3S_PORT}</td>
		</tr>
		<tr>
			<td>{PHP.L.BF3S_PLAYERS}</td><td style="text-align: right;">{BF3S_PLAYERS}/{BF3S_SLOTS}</td>
		</tr>
		<tr>
			<td>{PHP.L.BF3S_MODE}</td><td style="text-align: right;">{BF3S_MODENAME}</td>
		</tr>
		<tr>
			<td>{PHP.L.BF3S_MAP}</td><td style="text-align: right;">{BF3S_MAPNAME}</td>
		</tr>
	</table>

	<div style="clear: both;"></div>

	<div class="mapimageindex">
		<img src="{BF3S_MAPIMAGE}" alt="{BF3S_MAPNAME}" class="mapimage" />
		<div align="center" style="padding-top: 5px;" id="bf3server-button"><a href="{BF3S_URL}" id="bf3server-button" title="{PHP.L.BF3S_JOINNOW}"><center><span>{PHP.L.BF3S_JOINNOW}</span></center></a></div>
	</div>

	<div class="viewmore"><a href="{PHP|cot_url('plug', 'e=bf3server')}">{PHP.L.BF3S_MORE}</a></div>

<!-- END: MAIN -->