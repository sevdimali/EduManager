<?php
/*yazilar, Xəbərlər, Elanlar*/
?>
<div class="row">
	<div class="col-md-8">
	
			<div class="xeber_elave_et">
	<form action="xeberpaylas_prosessinq.php" method="post">
		<textarea style="width: 775px; height: 118px;" name="xeber" id="xeber">Yenilik Paylaş</textarea>
		<?php if ($_SESSION['login_type'] == 'm'){?>
		<div class="row">
		<span class="label label-info pull-left ana_seh_qruplar">Qruplar:</span>

		<select name="qrup" class="form-control qrup-sec" id="qrup">
		<?php muellimin_ders_dediyi_qruplar_formatli($_SESSION["id"]); ?>
		</select>
		
		</div><?php }?>
		<div <?php if ($_SESSION['login_type'] == 't') echo'style="margin-top:35px"';?> class="row">
		
		<input type="submit" name="submit" class="btn btn-info submit pull-right btn_elave_et" value="Paylaş">
		</div>
		
		</form></div>
		<h3 class="son-paylasim" >Son paylaşımlar</h3>
		<div class="post" >
		<div class="row">
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	<?php
	if ($_SESSION['login_type'] == 'm'){
	$sql = "select * from yazilar ORDER BY id DESC";
	$tap_yazilar = mysql_query($sql);
	while($goster_yazilar = mysql_fetch_array($tap_yazilar)){
	echo '
			<div class="yazi">';
	if ($goster_yazilar["tip_yazar"] == 'm'){
	$id_muellim = $goster_yazilar["id_yazar"];
	$qrup_ad = $goster_yazilar["qrup"];
	$sql_m = "select * from muellim where id = '$id_muellim'";
	$tap_muellim = mysql_query($sql_m);
	$goster_muellim = mysql_fetch_array($tap_muellim);
	$muellim_ad = $goster_muellim["ad"]. ' '.$goster_muellim["soyad"] ;
	echo '<span class="label label-default" style = "padding: 4px;
  font-size: 13px;">'.$muellim_ad.' >> '.$qrup_ad.'</span>';
	}
	elseif($goster_yazilar["tip_yazar"] == 't'){
	$id_telebe = $goster_yazilar["id_yazar"];
	$sql_t = "select * from telebeler where id = '$id_telebe'";
	$tap_telebe = mysql_query($sql_t);
	$goster_telebe = mysql_fetch_array($tap_telebe);
	$telebe_ad = $goster_telebe["ad"]. ' '.$goster_telebe["soyad"] ;
	echo '<span class="label label-default" style = "padding: 4px;
  font-size: 13px;">'.$telebe_ad.'</span>';
	}
	else{
	echo '<span class="label label-default" style = "padding: 4px;
  font-size: 13px;">Ad soyad yoxdur</span>';
	}
	echo '<p style="margin-top:5px;">';
	echo $goster_yazilar["yazi"];
	echo'</p></div> <!-- end span8 -->	';
	}
	
	}elseif($_SESSION['login_type'] == 't'){
	$telebe_qrup = telebe_qrup($_SESSION["id"]);
	$sql = "select * from yazilar where qrup = '$telebe_qrup' ORDER BY id DESC";
	$tap_yazilar = mysql_query($sql);
	while($goster_yazilar = mysql_fetch_array($tap_yazilar)){
	echo '
			<div class="yazi">';
	if ($goster_yazilar["tip_yazar"] == 'm'){
	$id_muellim = $goster_yazilar["id_yazar"];
	$qrup_ad = $goster_yazilar["qrup"];
	$sql_m = "select * from muellim where id = '$id_muellim'";
	$tap_muellim = mysql_query($sql_m);
	$goster_muellim = mysql_fetch_array($tap_muellim);
	$muellim_ad = $goster_muellim["ad"]. ' '.$goster_muellim["soyad"] ;
	echo '<span class="label label-default" style = "padding: 4px;
  font-size: 13px;">'.$muellim_ad.' >> '.$qrup_ad.'</span>';
	}
	elseif($goster_yazilar["tip_yazar"] == 't'){
	$id_telebe = $goster_yazilar["id_yazar"];
	$sql_t = "select * from telebeler where id = '$id_telebe'";
	$tap_telebe = mysql_query($sql_t);
	$goster_telebe = mysql_fetch_array($tap_telebe);
	$telebe_ad = $goster_telebe["ad"]. ' '.$goster_telebe["soyad"] ;
	echo '<span class="label label-default" style = "padding: 4px;
  font-size: 13px;">'.$telebe_ad.'</span>';
	}
	else{
	echo '<span class="label label-default" style = "padding: 4px;
  font-size: 13px;">Ad soyad yoxdur</span>';
	}
	echo '<p style="margin-top:5px;">';
	echo $goster_yazilar["yazi"];
	echo'</p></div> <!-- end span8 -->	';
	}
	
	}
	?>		
				
		</div><!-- end post row -->
	</div><!-- end post -->
	<!--~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~-->
	
	</div><!-- end main area -->