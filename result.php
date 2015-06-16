<?php
/*neticeler*/
session_start();
if ($_SESSION['login_type'] == 'm'){
include("header.php");}
else{
include("headert.php");
$result_id_telebe = $_SESSION['id'];
}
$fenn_id = $_GET["id"];
$tap_fenn_ad = mysql_query("select * from fenler where id = $fenn_id limit 1");
$fenn_ad = mysql_fetch_array($tap_fenn_ad);
$fenn_ad = $fenn_ad["ad"];
?>
<div class="container-fluid">
	<div class="row">
	<div class="col-md-2">
	<?php 
if ($_SESSION['login_type'] == 'm'){
include("result-left-sidebar.php");}?>
	</div>
			<div class="col-md-7">
			<?php
			echo'<h3 style="margin-top: 10px;"><span style="font-weight:bold;  color: #337AB7;">'.$fenn_ad.'</span> Ümumi Statistika</h3>';
			?>
            <div>
            
            <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Laboratoriya Nəticələri</h3>
  </div>
  <div class="panel-body">
            <div id="Laboratoriya" style="height: 250px;"></div>
  </div>
</div>
  <hr style="border-bottom:1px dotted #337AB7" />
            <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Sərbəst İşlərin Yerinə Yetirilməsi<span class="pull-right badge">10</span></h3>
  </div>
  <div class="panel-body">
          <table style="width: 100%;"class="table table-bordered">
               <?php
               
              if ($_SESSION['login_type'] == 'm'){
                result_serbest_isler($fenn_id);
                } else{
                result_serbest_isler_t($fenn_id,$result_id_telebe);
              }
                ?>
            </table>
        </div>
</div>
            
            </div>
            <hr style="border-bottom:1px dotted #337AB7" />
<div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Kollokvium Nəticələri</h3>
  </div>
  <div class="panel-body">
            <div id="Kollokvium" style="height: 250px;"></div>
  </div>
</div>

  <hr style="border-bottom:1px dotted #337AB7" />
            <div class="panel panel-default">
  <div class="panel-heading">
    <h3 class="panel-title">Məşğələ Nəticələri</h3>
  </div>
  <div class="panel-body">
            <div id="Mesgele" style="height: 250px;"></div>
  </div>
</div>

        <script> new Morris.Bar({
  element: 'Kollokvium',
  data: [
    { y: 'Kollokvium 1', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,5); } else {result_statistical_t($fenn_id,5,$result_id_telebe);}?>},
    { y: 'Kollokvium 2', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,6); } else {result_statistical_t($fenn_id,6,$result_id_telebe);}?>},
    { y: 'Kollokvium 3', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,7); } else {result_statistical_t($fenn_id,7,$result_id_telebe);}?>}
  ],
  xkey: 'y',
  ykeys: [<?php if ($_SESSION['login_type'] == 'm'){ result_statistical_ykeys($fenn_id,'kol');} else {result_statistical_ykeys_t($fenn_id,'kol',$result_id_telebe);}?>],
  labels: [<?php if ($_SESSION['login_type'] == 'm'){result_statistical_labels($fenn_id,'kol');} else {result_statistical_labels_t($fenn_id,'kol',$result_id_telebe);}?>]
});</script>

<script> new Morris.Bar({
  element: 'Laboratoriya',
  data: [
    { y: 'Laboratoriya 1', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,2); } else {result_statistical_t($fenn_id,2,$result_id_telebe);}?>},
    { y: 'Laboratoriya 2', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,3); } else {result_statistical_t($fenn_id,3,$result_id_telebe);}?>},
    { y: 'Laboratoriya 3', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,4); } else {result_statistical_t($fenn_id,4,$result_id_telebe);}?>}
  ],
  xkey: 'y',
  ykeys: [<?php if ($_SESSION['login_type'] == 'm'){ result_statistical_ykeys($fenn_id,'lab');} else {result_statistical_ykeys_t($fenn_id,'lab',$result_id_telebe);}?>],
  labels: [<?php if ($_SESSION['login_type'] == 'm'){result_statistical_labels($fenn_id,'lab');} else {result_statistical_labels_t($fenn_id,'lab',$result_id_telebe);}?>]
});</script>

<script> new Morris.Bar({
  element: 'Mesgele',
  data: [
    { y: 'Məşğələ 1', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,8); } else {result_statistical_t($fenn_id,8,$result_id_telebe);}?>},
    { y: 'Məşğələ 2', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,9); } else {result_statistical_t($fenn_id,9,$result_id_telebe);}?>},
    { y: 'Məşğələ 3', <?php if ($_SESSION['login_type'] == 'm'){ result_statistical($fenn_id,10); } else {result_statistical_t($fenn_id,10,$result_id_telebe);}?>}
  ],
  xkey: 'y',
  ykeys: [<?php if ($_SESSION['login_type'] == 'm'){ result_statistical_ykeys($fenn_id,'mes');} else {result_statistical_ykeys_t($fenn_id,'mes',$result_id_telebe);}?>],
  labels: [<?php if ($_SESSION['login_type'] == 'm'){result_statistical_labels($fenn_id,'mes');} else {result_statistical_labels_t($fenn_id,'mes',$result_id_telebe);}?>]
});</script>
			</div>	
		<?php
		if ($_SESSION['login_type'] == 'm'){
					include("sidebar-profil-fenler-qruplar-result.php");
				}
				else{
					include("sidebar-profil-fenler-result.php");
				}
		?>
	 </div><!-- son row -->
 <hr>
		<?php
		include("footer.php");
		?>
		</div> <!-- container-fluid -->
  

  </body>
</html>