<?php
/*yenifenn*/
session_start();
include("header.php");
?>
    <div class="container">
		<div class="row">
			<div class="col-md-3">
			
			<div class="panel panel-success">
				<div class="panel-heading"><h4 class="panel-title">Gələnlər</h4></div>
				<div class="panel-body">
				<ul class="list-group>
				<?php
						$tap_mesaj = mysql_query("select * from mesajlar where id_qeb=1 and tip_qeb=1 and status=0;");
						while($goster_mesaj = mysql_fetch_array($tap_mesaj)){
						echo '<li class="list-group-item">
						<div style="color:#30547D; margin-left:0px; padding-left:0px;">
						<strong>'.goster_telebe_id_den($goster_mesaj["id_gond"],1).'</strong>
                        </div>
						
						<a href="mesaj.php"><div>'.$goster_mesaj["mesaj"].'...</div> </a>
                       
                        </li>
                       ';
						}
				?>
				</ul>
				</div><!-- son panel body -->
			</div> <!-- son panel -->
			</div><!-- son col-md-3 -->
			
			<div class="col-md-5">
			<div class="panel panel-success">
			<div class="panel-heading"><h4 class="panel-title">Mesajlaşma</h4></div>
			<div class="panel-body">
				<ul class="list-group>
				<?php
						$tap_mesaj = mysql_query("select * from mesajlar where id_qeb=1 and tip_qeb=1 and status=0;");
						while($goster_mesaj = mysql_fetch_array($tap_mesaj)){
						echo '<li class="list-group-item"> <a href="mesaj.php"><div>'.$goster_mesaj["mesaj"].'...</div>
                            </a>
                        </li>';
						}
						?>
				</ul>
				</div><!-- son panel body -->
			</div> <!-- son panel -->
			</div><!-- son col-md-5 -->			
		<?php
		include("sidebar-profil-fenler-qruplar.php");
		?>
      </div><!-- son row -->
 <hr>
		<?php
		include("footer.php");
		?>
    </div><!-- son container -->

    <!-- javascript
    ================================================== -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
    