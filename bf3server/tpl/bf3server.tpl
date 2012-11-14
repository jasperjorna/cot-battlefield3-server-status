<!-- BEGIN: MAIN -->

	<link href="plugins/bf3server/tpl/css/style.css" rel="stylesheet" type="text/css">

	<h2><a href="{BF3S_URL}" title="{PHP.L.BF3S_VIEWONBL}">{BF3S_NAME}</a></h2>

		<table class="bf3ssettings width80">
			<tr>
				<td>{PHP.L.BF3S_IP}</td><td style="text-align: right;">{BF3S_IP}:{BF3S_PORT}</td>
			</tr>
			<tr>
				<td>{PHP.L.BF3S_PLAYERS}:</td><td style="text-align: right;">{BF3S_PLAYERS}/{BF3S_SLOTS}</td>
			</tr>
			<tr>
				<td>{PHP.L.BF3S_MODE}</td><td style="text-align: right;">{BF3S_MODENAME}</td>
			</tr>
			<tr>
				<td>{PHP.L.BF3S_MAP}</td><td style="text-align: right;">{BF3S_MAPNAME}</td>
			</tr>
			<tr>
				<td>{PHP.L.BF3S_PLATFORM}</td><td style="text-align: right;">{BF3S_PLATFORM}</td>
			</tr>
			<tr>
				<td>{PHP.L.BF3S_PRESET}</td><td style="text-align: right;">{BF3S_PRESET}</td>
			</tr>
			<tr>
				<td>{PHP.L.BF3S_COUNTRY}</td><td style="text-align: right;">{BF3S_COUNTRY}</td>
			</tr>
		</table>

		<div class="currentmap width17">
			<img src="{BF3S_MAPIMAGE}" alt="{BF3S_MAPNAME}" class="mapimage" /><br />
			<strong>{BF3S_MAPNAME}</strong><br />
			<span class="modename">{BF3S_MODENAME}</span>
			<div align="center" id="bf3server-button"><a href="{BF3S_URL}" id="bf3server-button" title="{PHP.L.BF3S_JOINNOW}"><center><span>{PHP.L.BF3S_JOINNOW}</span></center></a></div>
		</div>

		<div style="clear: both;"></div>

		<h3>{PHP.L.BF3S_MAPROTATION}</h3>
		<!-- BEGIN: MAPROTATION -->
		<div class="maprotation">
			<img src="{BF3S_ROTATION_MAPIMAGE}" alt="{BF3S_ROTATION_MAPNAME}" class="mapimage rotation" /><br />
			<strong>{BF3S_ROTATION_MAPNAME}</strong><br />
			{BF3S_ROTATION_MODENAME}
		</div>
		<!-- END: MAPROTATION -->

		<div style="clear: both;"></div>

		<!-- IF {BF3S_BANNER} -->
			<h3>{PHP.L.BF3S_SERVERBANNER}</h3>
			<img src="{BF3S_BANNER}" alt="{BF3S_NAME}" />
		<!-- ENDIF -->

<!-- END: MAIN -->