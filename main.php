<?php
session_start();
if(!isset($_SESSION['id']))
{
header('Location: http://localhost/dis/index.php');
}
else{
if ($_SESSION['login_type'] == 'm'){
include("header.php");}
else{
include("headert.php");
}
?>
<div class="container">
		<div class="row">
        <?php
		include("content-yazi-xeber-elan.php");
		?>
		<?php
		if ($_SESSION['login_type'] == 'm'){
					include("sidebar-profil-fenler-qruplar.php");
				}
				else{
					include("sidebar-profil-fenler.php");
				}
		?>
      </div><!-- son row -->
 <hr>
 
		<?php
	
		include("footer.php");
		?>
    </div><!-- son container -->

  </body>
</html>
<?php }?>