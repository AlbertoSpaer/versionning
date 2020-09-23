<?php
	if(ossn_isLoggedin()){		
		$hide_loggedin = "hidden-xs hidden-sm";
	}
?>
<?php if(ossn_isLoggedin()){ ?>
<!-- ossn topbar -->
<div class="navbar sl-green">
	<div class="container">
		<div class="row">
			<div class="col-md-6 logo-ossn text-left <?php echo $hide_loggedin;?>">
				<a href="<?php echo ossn_site_url();?>">
					<?php if(ossn_site_settings('cache') == true){?>
					<img src="<?php echo ossn_theme_url();?>images/logo.png" />
					<?php } else { ?>
					<img src="<?php echo ossn_theme_url();?>images/logo.png?v=<?php echo time();?>" />                
					<?php } ?>
				</a>
			</div> 
			<div class="col-md-6 text-right right-side">
				<div class="recherche">
					<?php
						echo ossn_view_form('search', array(
									'component' => 'OssnSearch',
									'class' => 'ossn-search',
									'autocomplete' => 'on',
									'method' => 'get',
									'security_tokens' => false,
									'action' => ossn_site_url("search"),
						), false);
					 ?>
				</div>
				<div class="topbar-menu-right user">
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
	<nav class="nav navbar sub-menu">
		<div class="container">
			<div class="row">
  <div class="col-md-6 hidden-sm hidden-xs center" id="navbarSupportedContent">
    <ul class="nav navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="http://coms-afrique/home">Fils d'actualités <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="http://coms-afrique/members">Membres</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="http://coms-afrique/search?type=groups&q=">Groupes</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link disabled" href="#">Publications</a>
      </li>
	  <li class="nav-item">
        <a class="nav-link disabled" href="#">Photos</a>
      </li>
    </ul>
  </div>

  </div>
  </div>
	</nav>


</div>
<?php } else { ?>
<div class="row">

</div>
<?php } ?>
<!-- ./ ossn topbar -->
