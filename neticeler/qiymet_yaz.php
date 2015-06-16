<?php
/*neticeler*/
session_start();
if ($_SESSION['login_type'] == 'm'){
include("../header.php");}
else{
include("../headert.php");
}

?>

	
<div class="container-fluid">
	<div class="row">
	<div class="col-md-2">
	<?php include("/left_sidebar_qiymet_yaz.php")?>
	</div>
			<div class="col-md-7">
			<?php include("yaz.php"); ?>
			</div>
			<?php
		if ($_SESSION['login_type'] == 'm'){
					include("../sidebar-profil-fenler-qruplar-result.php");
				}
				else{
					include("../sidebar-profil-fenler-result.php");
				}
		?>
     <div style="width:5px;"></div>
	 </div><!-- son row -->
 <hr>
		<?php
		include("../footer.php");
		?>
    </div><!-- son container -->

  </body>
</html>