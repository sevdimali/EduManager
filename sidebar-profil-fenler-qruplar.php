<?php
/*sidebar-profil-fenler-qruplar*/
$id_muellim = $_SESSION['id'];
?>
<div class="col-md-4">
					<div class="row">
					<div class="panel panel-primary">
							<!-- Default panel contents -->
							<div class="panel-heading"><h3 class="panel-title" style="text-align:center;">Profilim</h3></div>
							  <!-- Table -->
							<?php
							$login_type="m";
							if ($login_type=="m")
							$tap_profil = mysql_query("select * from muellim where id='$id_muellim';");
							$goster_profile = mysql_fetch_array($tap_profil);?>
							<table class="table">
								<tr>
									<td>Ad:</td><td><?php echo $goster_profile["ad"];?></td>
								</tr>
								<tr>
									<td>Soyad:</td><td><?php echo $goster_profile["soyad"];?></td>
								</tr>
								<tr>
									<td>Fakultə:</td><td><?php echo $goster_profile["fakulte"];?></td>
								<tr>
								
							  </table>
							</div>
<hr>

					<div class="panel panel-primary">
							<!-- Default panel contents -->
							<div class="panel-heading"><h3 class="panel-title"  style="text-align:center;">Dərs Dediyim Fənlər</h3></div>
							  <!-- Table -->
								<ul class="list-group">		
								<?php
								$tap_fenn = mysql_query("select * from fenler where id_muellim='$id_muellim';");
								while($goster_fenn = mysql_fetch_array($tap_fenn)){
								echo '<li class="list-group-item"><a href="result.php?nav=net&id='.$goster_fenn["id"].'">'.$goster_fenn["ad"].'</a></li>';
								}
								?>
							</ul>
					</div>
					
        </div><!-- end widget row -->

    </div><!-- end sidebar -->