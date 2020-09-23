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
?>
<div class="row home ossn-page-contents">
    <div class="col-12 mb-4">
        <div class="logo text-left">
            	<?php if(ossn_site_settings('cache') == true){?>
            	<img src="<?php echo ossn_theme_url();?>images/logo.png" />
                <?php } else { ?>
            	<img src="<?php echo ossn_theme_url();?>images/logo.png?v=<?php echo time();?>" />                
                <?php } ?>
            </div>
    </div>
        <div class="col-md-7 home-left-contents">
            	
            <div class="description">
            	<?php echo ossn_print('home:top:heading', array(ossn_site_settings('site_name'))); ?>
            </div>
            <div class="short-desc">
                <p>un réseau social africain avec la confidentialité de ses membres
au cœur de nos préoccupations.</p>
            </div>
           	 
 	</div>   
       <div class="col-md-5 conex">
           <?php if ($error == 1) { ?>
               <div class="alert alert-danger">
                   <strong><?php echo ossn_print('login:error'); ?></strong><br/>
                   <p><?php echo ossn_print('login:error:sub'); ?></p>
               </div>
           <?php } ?>
           <?php
           $contents = ossn_view_form('login2', array(
               'id' => 'ossn-login',
               'action' => ossn_site_url('action/user/login'),
           ));
           echo ossn_plugin_view('widget/view', array(
               'title' => ossn_print('site:login'),
               'contents' => $contents,
           ));
           ?>

           

       </div>

	   <div class="modal fade" id="create" tabindex="-1" role="dialog" aria-labelledby="create" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
	<div class="row">
	<div class="col-12">
		<h1>Inscription</h1>
	</div>
	<div class="col-12">
        <?php
        $contents = ossn_view_form('signup', array(
            'id' => 'ossn-home-signup',
            'action' => ossn_site_url('action/user/register')
        ));
        $heading = "<p>".ossn_print('its:free')."</p>";
        echo ossn_plugin_view('widget/view', array(
            'title' => ossn_print('create:account'),
            'contents' => $heading.$contents,
        ));
        ?>
    </div>
  </div>
    </div>
  </div>
</div> 
</div>	
