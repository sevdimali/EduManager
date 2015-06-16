<?php
/*sidebar-profil-fenler-qruplar*/
$id_telebe = $_SESSION['id'];
?>
<div class="col-md-4">
					<div class="row">
					<div class="panel panel-primary">
							<!-- Default panel contents -->
							<div class="panel-heading"><h3 class="panel-title" style="text-align:center;">Profilim</h3></div>
							  <!-- Table -->
							<?php
							$login_type="t";
							if ($login_type=="t")
							$tap_profil = mysql_query("select * from telebeler where id='$id_telebe';");
							$goster_profile = mysql_fetch_array($tap_profil);
							$id_telebe_qrup = $goster_profile["id_qrup"];
							?>
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
							<a class="btn pull-right btn-primary" href="adsf">Redaktə et</a>
							</div>
<hr>

					<div class="panel panel-primary">
							<!-- Default panel contents -->
							<div class="panel-heading"><h3 class="panel-title"  style="text-align:center;">Fənlərim</h3></div>
							  <!-- Table -->
								<ul class="list-group">		
								<?php
			
								$tap_fenn = mysql_query("select * from fenler where id_qrup='$id_telebe_qrup';");
								while($goster_fenn = mysql_fetch_array($tap_fenn)){
								echo '<li class="list-group-item"><a href="result.php?nav=net&id='.$goster_fenn["id"].'">'.$goster_fenn["ad"].'</a></li>';
								}
								?>
							</ul>
					</div>
					<hr>
					<div class="panel panel-default">
					<div class="panel-heading">
						<h3 class="panel-title" style="text-align:center;">Online Xidmətlər</h3>
						<div class="btn-group-vertical" role="group" aria-label="..." style="width:100%;">
								<button type="button" class="btn btn-success" style="margin-top:5px;">Transkript</button>
								<button type="button" class="btn btn-success" style="margin-top:5px;">Transkript2</button>
								<button type="button" class="btn btn-success" style="margin-top:5px;">Transkript3</button>
						</div>
		
					</div>
					</div>
        </div><!-- end widget row -->

    </div><!-- end sidebar -->