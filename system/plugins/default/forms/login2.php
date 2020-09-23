<?php
/**
 * Open Source Social Network
 *
 * @package   Open Source Social Network
 * @author    Open Social Website Core Team <info@softlab24.com>
 * @copyright (C) SOFTLAB24 LIMITED
 * @license   Open Source Social Network License (OSSN LICENSE)  http://www.opensource-socialnetwork.org/licence
 * @link      https://www.opensource-socialnetwork.org/
 */
?>
<div class="mb-4">
     <input type="text" name="username" placeholder="username" />
</div>

<div>
     <input type="password" name="password" placeholder="password" autocomplete="off" />
</div>
<div>
	<?php echo ossn_fetch_extend_views('forms/login2/before/submit'); ?>
</div>
<div class="col-12 text-center">
    <input type="submit" value="<?php echo ossn_print('site:login');?>" class="connexion btn btn-primary"/>
</div>
<div class="col-12 text-center">
    <a href="<?php echo ossn_site_url('resetlogin'); ?>" class="reset"><?php echo ossn_print('reset:login'); ?> </a>
</div>
<div class="col-12 text-center">
    <button type="button" class="inscription btn btn-danger" data-toggle="modal" data-target="#create">Inscription</button>
</div>
