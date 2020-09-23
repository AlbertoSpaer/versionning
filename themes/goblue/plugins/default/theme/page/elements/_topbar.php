<?php
	if(ossn_isLoggedin()){		
		$hide_loggedin = "hidden-xs hidden-sm";
	}
?>
<!-- ossn topbar -->
<div class="navbar navbar-fixed-top sl-navbar">
	<div class="container full_header">
		<div class="row">
			<div class=" logo-default col-md-3 text-center <?php echo $hide_loggedin;?>">
				<a href="<?php echo ossn_site_url();?>">
					<?php if(ossn_site_settings('cache') == true){?>
					<img class="img-fluid" src="<?php echo ossn_theme_url();?>images/logo.png" />
					<?php } else { ?>
					<img class="img-fluid" src="<?php echo ossn_theme_url();?>images/logo.png?v=<?php echo time();?>" />                
					<?php } ?>
				</a>
			</div>
			<div class="col-md-7 text-right right-side">
			<div class="main_login_form">
			<form action="/users/member_login" class="form-horizontal" id="UserMemberLoginForm" method="post" accept-charset="utf-8">
			<div class="signup_form_grab">
				<div class="form-group mb-2">
					<input placeholder="<?php echo ossn_print('username'); ?>" type="text" name="username" />
				</div>
				<div class="form-group mb-2">
					<input placeholder="<?php echo ossn_print('password'); ?>" type="password" name="password" autocomplete="off" />
				</div>
				<div class="form-group mb-2">
					<?php echo ossn_fetch_extend_views('forms/login2/before/submit'); ?>
				</div>
				<div>
					<input type="submit" value="<?php echo ossn_print('site:login');?>" class="btn btn-primary"/>
					
				</div>
				</div>
			</form>
			</div>
				<div class="topbar-menu-right">
						
					<ul>
					<li class="ossn-topbar-dropdown-menu">
						<div class="dropdown">
						<?php
							if(ossn_isLoggedin()){						
								echo ossn_plugin_view('output/url', array(
									'role' => 'button',
									'data-toggle' => 'dropdown',
									'data-target' => '#',
									'text' => '<i class="fa fa-sort-desc"></i>',
								));									
								echo ossn_view_menu('topbar_dropdown'); 
							}
							?>
						</div>
					</li>                
					<?php
						if(ossn_isLoggedin()){
							echo ossn_plugin_view('notifications/page/topbar');
						}
						?>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- ./ ossn topbar -->
