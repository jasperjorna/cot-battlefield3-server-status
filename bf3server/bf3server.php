<?PHP
/* ====================
[BEGIN_COT_EXT]
Hooks=standalone
[END_COT_EXT]
==================== */

/**
 * Show BF3 server information
 *
 * @package BF3 Server Status
 * @author Twiebie
 * @copyright Copyright (c) goatclan.com 2012
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL');

require_once cot_langfile('bf3server', 'plug');

if ($cache->db->exists('cot_bf3server', 'system')) {
	$data = $cache->db->get('cot_bf3server', 'system');
} else {
	$data=array('id'=>array());
	$data['id'][]=$cfg['plugin']['bf3server']['serverid'];

	$postdata=array();
	$postdata['id']=json_encode($data['id']);

	$c=curl_init('http://api.bf3stats.com/pc/server/');
	curl_setopt($c,CURLOPT_HEADER,false);
	curl_setopt($c,CURLOPT_POST,true);
	curl_setopt($c,CURLOPT_USERAGENT,'BF3StatsAPI/0.1');
	curl_setopt($c,CURLOPT_HTTPHEADER,array('Expect:'));
	curl_setopt($c,CURLOPT_RETURNTRANSFER,true);
	curl_setopt($c,CURLOPT_POSTFIELDS,$postdata);
	$data=curl_exec($c);
	$statuscode=curl_getinfo($c,CURLINFO_HTTP_CODE);
	curl_close($c);
	$data=json_decode($data,true);

	$cache->db->store('cot_bf3server', $data, 'system', 120);
}

foreach ($data['srv']['maps'] as $maps => $items)
{
	foreach ($items as $key => $value)
	{
		$t->assign(array(
			'BF3S_ROTATION_MAPNAME' => $items['map_name'],
			'BF3S_ROTATION_MAPIMAGE' => 'http://battlelog-cdn.battlefield.com/public/base/bf3/map_images/146x79/'.$items['map_image'].'.jpg',
			'BF3S_ROTATION_MODENAME' => ucwords(strtolower($items['mode_name'])),
		));
	}
	$t->parse('MAIN.MAPROTATION');
}

$t->assign(array(
	'BF3S_NAME' => $data['srv']['name'],
	'BF3S_IP' => $data['srv']['ip'],
	'BF3S_PORT' => $data['srv']['port'],
	'BF3S_URL' => $data['srv']['battlelog'],
	'BF3S_PLAYERS' => $data['srv']['players'],
	'BF3S_SLOTS' => $data['srv']['slots'],
	'BF3S_MAPIMAGE' => 'http://battlelog-cdn.battlefield.com/public/base/bf3/map_images/146x79/'.$data['srv']['map_image'].'.jpg',
	'BF3S_MODENAME' => ucwords(strtolower($data['srv']['mode_name'])),
	'BF3S_MAPNAME' => $data['srv']['map_name'],
	'BF3S_PLATFORM' => strtoupper($data['srv']['plat']),
	'BF3S_PRESET' => ucwords(strtolower($data['srv']['preset'])),
	'BF3S_BANNER' => $data['srv']['burl'],
	'BF3S_COUNTRY' => $data['srv']['country_name'],
));

?>