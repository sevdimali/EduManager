<?php
/*neticeler*/
session_start();
if ($_SESSION['login_type'] == 'm'){
include("../header.php");}
else{
include("../headert.php");
}
$fenn_id = $_GET["id"];
$tap_fenn_ad = mysql_query("select * from fenler where id = $fenn_id limit 1");
$fenn_ad = mysql_fetch_array($tap_fenn_ad);
$fenn_ad = $fenn_ad["ad"];
?>

	
<div class="container-fluid">
	<div class="row">
	<div class="col-md-2">
	<?php include("../result-left-sidebar.php")?>
	</div>
			<div class="col-md-7">
			
<?php
echo '<table class="table">
			<caption><span style="font-weight:bold;  color: #337AB7;">'.$fenn_ad.'</span> Laboratoriya işi nəticələri</caption>
			<tr>
			<th>Tələbə</th>
			<th>I Kollokviuma qədər</th>
			<th>II Kollokviuma qədər</th>
			<th>III Kollokviuma qədər</th>
			</tr>';
		
			$tap_idler = mysql_query("select distinct id_telebe from netice where id_fenn=$fenn_id and secim between 2 and 4 order by id_telebe asc;");
			$i = 0 ;
			while($id = mysql_fetch_array($tap_idler))
			{
			echo '<tr>';
			echo'<td>'.goster_telebe_id_den($id["id_telebe"],2).'</td>';
			echo '<td>'.netice_qiymet_id_telebe_id_fenn_secim($id["id_telebe"],$fenn_id,2).'</td>';
			echo '<td>'.netice_qiymet_id_telebe_id_fenn_secim($id["id_telebe"],$fenn_id,3).'</td>';
			echo '<td>'.netice_qiymet_id_telebe_id_fenn_secim($id["id_telebe"],$fenn_id,4).'</td>';
			echo '</tr>';
			$i=$i+1;
		}
		echo'</table>';
		?>
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