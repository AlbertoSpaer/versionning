<?php
/**
 * Open Source Social Network
 *
 * @package   (softlab24.com).ossn
 * @author    OSSN Core Team <info@softlab24.com>
 * @copyright (C) SOFTLAB24 LIMITED
 * @license   Open Source Social Network License (OSSN LICENSE)  http://www.opensource-socialnetwork.org/licence
 * @link      https://www.opensource-socialnetwork.org/
 */
 
//unused pagebar skeleton when ads are disabled #628 
if(ossn_is_hook('newsfeed', "sidebar:right")) {
	$newsfeed_right = ossn_call_hook('newsfeed', "sidebar:right", NULL, array());
	$sidebar = implode('', $newsfeed_right);
	$isempty = trim($sidebar);
}
//show center:top div only when there is something otherwise on phone it results empty div with padding/whitebg.
if(ossn_is_hook('newsfeed', "center:top")) {
	$newsfeed_center_top = ossn_call_hook('newsfeed', "center:top", NULL, array());
	$newsfeed_center_top = implode('', $newsfeed_center_top);
	$isempty_top 	     = trim($newsfeed_center_top);
}
?>
<div class="container">
	<div class="row">
       	<?php echo ossn_plugin_view('theme/page/elements/system_messages'); ?>    
		<div class="ossn-layout-newsfeed">
		<?php echo ossn_plugin_view('theme/page/elements/sidebar');?>
			<div class="col-md-6">
				<?php if(!empty($isempty_top)){ ?>
				<div class="newsfeed-middle-top">
					<?php echo $newsfeed_center_top; ?>
				</div>
				 <?php } ?>
				<div class="newsfeed-middle">

				<div class="ossn-widget">
	<div class="title">Derniers inscrits</div>
	<div class="widget-contents">
	<div class="members" data-balloon="<?php echo $user_name; ?>" data-balloon-pos="up">
				<?php 	$users = new OssnUser;
$attr = array(
	'keyword' => false,
	'order_by' => 'guid DESC',
	'limit' => 15,
	'page_limit' => 15,
	'offset' => 1
);
$users = $users->searchUsers($attr);
	 
foreach($users as $user) {
	$user_name = $user->first_name . ' ' . $user->last_name;
	
	if (com_is_active('DisplayUsername')) {
		$user_name = $user->username;
	} ?>
	
	
	<a class="com-latestmembers-memberlist-item"
	href="<?php echo ossn_site_url() . 'u/' . $user->username; ?>">
	<img class="user-img" src="<?php echo $user->iconURL()->small;?>"></a>

<?php
}?>
	</div>
	</div>
	</div>

					<?php echo $params['content']; ?>
				</div>
			</div>
			<div class="col-md-3">
            			<?php if(!empty($isempty)){ ?>
				<div class="newsfeed-right">
					<?php
						echo $sidebar;
						?>
						<?php

				$users      = ossn_generate_list();
				$count      = ossn_generate_list(array(
						'count' => true
				));
				$list       = ossn_plugin_view('output/users', array(
						'users' => $users
				));
				$pagination = ossn_view_pagination($count);
				$lang       = ossn_print('com:ossn:site:members');
				$html       = <<<EOD
				<div class="ossn-search-page ossn-page-contents">
					<div class="search-data">
						<strong style='font-size:14px;margin-bottom:5px;display: block;'>$lang</strong>	
						$list  
						$pagination
					</div>
				</div>
				EOD;
				echo $html; ?>                            
				</div>
                		<?php } ?>
			</div>
		</div>
	</div>
	<?php echo ossn_plugin_view('theme/page/elements/footer');?>
</div>
