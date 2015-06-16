<?php
include("configM.php");

/*id-e gore telebenin tapilmasi
$say==>
		1 => yalniz ad;
		2 => ad, soyad;
		3 => ad, soyad, ata adi;
*/
function goster_telebe_id_den($id,$say){
	$tap_telebe = mysql_query("select * from telebeler where id='$id'");
	$goster_telebe = mysql_fetch_array($tap_telebe);
	if($say==1){
	return $goster_telebe["ad"];
	}elseif($say==2){
	return $goster_telebe["ad"]." ".$goster_telebe["soyad"];
	}else{
	return $goster_telebe["ad"]." ".$goster_telebe["soyad"]." ".$goster_telebe["ata_ad"];
	}
	}
//////////////////////////////////////////////////////////////////////////////////////////////////////


/*Laboratoriya Id telebe id fenn secim123 neticeler*/
function netice_qiymet_id_telebe_id_fenn_secim($id_telebe,$id_fenn,$secim){
	$tap_qiymet = mysql_query("select * from netice where id_telebe=$id_telebe && id_fenn=$id_fenn && secim=$secim order by tarix desc limit 1");
	$goster_qiymet = mysql_fetch_array($tap_qiymet);
	if(is_null($goster_qiymet["qiymet"])){
	return "";
	}
	else{
		return $goster_qiymet["qiymet"];
	}

}
//////////////////////////////////////////////////////////////////////////////////////////////////////
/*Qruplarin umumi sayi*/

function qruplarin_sayi(){
	$i = 0;
	$tap_qrup_say = mysql_query('select * from qrup');
	while($goster_qrup_say=mysql_fetch_array($tap_qrup_say)){
	$i = $i + 1;
	}
return $i;
}
//////////////////////////////////////////////////////////////////////////////////////////////////////
/*qrup adinin tapilmasi*/

	function qrup_ad($id){
	$tap_qrup_ad = mysql_query("select ad from qrup where id=$id");
	$goster_qrup_ad=mysql_fetch_array($tap_qrup_ad);
	return $goster_qrup_ad["ad"];
	}
/////////////////////////////////////////////////////////////////////////////////////////////////////

	function fenn_qrup_yoxlama($ad,$secim){
	if ($secim == 1){
	$tap_netice = mysql_query("select * from fenler where ad='$ad'");
		$goster_netice = mysql_fetch_array($tap_netice);
		if(mysql_num_rows($tap_netice)==1){
		return false;}
				else
			{
			return true;
			}
		}
	elseif($secim == 2){
	$tap_netice = mysql_query("select * from qrup where ad='$ad'");
		$goster_netice = mysql_fetch_array($tap_netice);
		if(mysql_num_rows($tap_netice)==1){
		return false;}
				else
			{
			return true;
			}
	}
	}
//////////////////////////////////////////////////////////////////////////////////////////////////////
// qrup adindan həmin qrupun id-nin tapılması
function qrup_id_addan_tap($qrup_ad){
    $tap_id = mysql_query("select * from qrup where ad = '$qrup_ad'");
    $goster_id = mysql_fetch_array($tap_id);
    return $goster_id["id"];
}
//////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////
// ana sehife paylasim ucun qrupadlari
function muellimin_ders_dediyi_qruplar_formatli($id_muellim){
	$tap_qrup_idler = mysql_query("select distinct id_qrup from fenler where id_muellim = '$id_muellim'");
	while($goster_id = mysql_fetch_array($tap_qrup_idler)){
	$id = $goster_id["id_qrup"];
	$tap_qrup_ad = mysql_query("select ad from qrup where id = '$id'");
	$goster_qrup_ad = mysql_fetch_array($tap_qrup_ad);
	$qrup_ad = $goster_qrup_ad["ad"];
	
    echo '<option>'.$qrup_ad.'</option>';
	}

}
//////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////
// ana sehife paylasim ucun qrupadlari

function muellimin_ders_dediyi_fenler_formatli($id_muellim){
	$tap_fenn_ad = mysql_query("select distinct ad from fenler where id_muellim = '$id_muellim'");
	while($goster_fenn_ad = mysql_fetch_array($tap_fenn_ad)){
	$fenn_ad = $goster_fenn_ad["ad"];
	
    echo '<option>'.$fenn_ad.'</option>';
	}

}

//////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////
// butun telebeler

function butun_telebeler(){
    $tap_telebeler = mysql_query("select * from telebeler");
    while($goster_telebeler = mysql_fetch_array($tap_telebeler)){
        $telebe_id = $goster_telebeler["id"];
        $telebe_ad = $goster_telebeler["ad"];
        $telebe_soyad = $goster_telebeler["soyad"];
        echo '<option>id:' . $telebe_id.'. '. $telebe_ad . ' ' . $telebe_soyad . '</option>';
    }
}


//////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////
// butun telebeler

function id_telebe_ad_soyad_qrup()
{
    
}
//////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////
// Qiymet yaz secim id tapilmasi

function secim_tap($secim_str){
    switch ($secim_str) {
        case 'Kurs işi':
             $secim = 1;
             break;
        case 'Lab 1':
             $secim = 2;
             break;
        case 'Lab 2':
             $secim = 3;
             break;
        case 'Lab 3':
             $secim = 4;
             break;
        case 'Kol 1':
             $secim = 5;
             break;
        case 'Kol 2':
             $secim = 6;
             break;
        case 'Kol 3':
             $secim = 7;
             break;
        case 'Məş 1':
             $secim = 8;
             break;
        case 'Məş 2':
             $secim = 9;
             break;
        case 'Məş 3':
             $secim = 10;
             break;
        case 'Sər 1':
             $secim = 11;
             break;
        case 'Sər 2':
             $secim = 12;
             break;
        case 'Sər 3':
             $secim = 13;
             break;
        default:
            $secim = 0;
    }
return $secim;
}
//////////////////////////////////////////////////////////////////////////////////////////////////////
// fenn adindan həmin fennin id-nin tapılması
function fenn_id_addan_tap($fenn_ad){
    $tap_id = mysql_query("select * from fenler where ad = '$fenn_ad'");
    $goster_id = mysql_fetch_array($tap_id);
    return $goster_id["id"];
}
//////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun tr arasinda serbest islerin cemi

function result_serbest_isler($id_fenn){
    $sql = "select sum(qiymet) qiymet, concat(telebeler.ad,' ' ,telebeler.soyad)  as ad_soyad from netice inner join telebeler on telebeler.id = netice.id_telebe where secim in(11,12,13) and id_fenn = '$id_fenn' group by id_telebe";
   // echo $sql;
    $tap_netice = mysql_query($sql);
    while($goster_netice = mysql_fetch_array($tap_netice)){
      $html = '<tr style="margin-bottom: 10px;">
                    <td style="width: 20%; padding:5px;">';
      $html .= $goster_netice["ad_soyad"];
      $html .= '</td><td style="width: 50%; padding:5px;" class="progress-cell"><div style="margin-bottom:0px;" class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: ';
  $html .= $goster_netice["qiymet"]*10;
  $html .= '%;">';
  $html .= $goster_netice["qiymet"];
  $html .='</div>
</div></td>
                </tr>';
      echo $html;  
    }
}
//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun tr arasinda serbest islerin cemi telebeler ucun

function result_serbest_isler_t($id_fenn,$id){
    $sql = "select sum(qiymet) qiymet, concat(telebeler.ad,' ' ,telebeler.soyad)  as ad_soyad from netice inner join telebeler on telebeler.id = netice.id_telebe where secim in(11,12,13) and id_fenn = '$id_fenn' and id_telebe = '$id'";
   // echo $sql;
    $tap_netice = mysql_query($sql);
    while($goster_netice = mysql_fetch_array($tap_netice)){
      $html = '<tr style="margin-bottom: 10px;">
                    <td style="width: 20%; padding:5px;">';
      $html .= $goster_netice["ad_soyad"];
      $html .= '</td><td style="width: 50%; padding:5px;" class="progress-cell"><div style="margin-bottom:0px;" class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: ';
  $html .= $goster_netice["qiymet"]*10;
  $html .= '%;">';
  $html .= $goster_netice["qiymet"];
  $html .='</div>
</div></td>
                </tr>';
      echo $html;  
    }
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun

function result_statistical($id_fenn,$secim){
    $sql = "Select lower(concat(substring(telebeler.ad,1,1),substring(telebeler.soyad,1,1),telebeler.id)) as said, qiymet from netice inner join telebeler on telebeler.id = netice.id_telebe where secim = '$secim' and id_fenn = '$id_fenn' order by id_telebe asc";
   // echo $sql;
    $tap_netice = mysql_query($sql);
    $html = '';
    while($goster_netice = mysql_fetch_array($tap_netice)){
        $html .= $goster_netice["said"];
        $html .= ": ";
        $html .= $goster_netice["qiymet"];
        $html .= ", "; 
    }
    echo substr($html,0,-2);

}
//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun ykeys
function result_statistical_ykeys($id_fenn,$secimler){
    switch ($secimler){
        case 'kol': $secim = '5,6,7';
        break;
        case 'lab': $secim = '2,3,4';
        break;
        case 'mes': $secim = '8,9,10';
        break;
    }
      $sql = "Select distinct lower(concat(substring(telebeler.ad,1,1),substring(telebeler.soyad,1,1),telebeler.id)) as said from netice inner join telebeler on telebeler.id = netice.id_telebe where secim in ('$secim') and id_fenn = '$id_fenn' order by id_telebe asc";
    //echo $sql;
    $tap_netice = mysql_query($sql);
    $html = '';
    while($goster_netice = mysql_fetch_array($tap_netice)){
        $html .= "'";
        $html .= $goster_netice["said"];
        $html .= "', ";
        }
        echo substr($html,0,-2);
}
//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun  labels

function result_statistical_labels($id_fenn,$secimler){
 switch ($secimler){
        case 'kol': $secim = '5,6,7';
        break;
        case 'lab': $secim = '2,3,4';
        break;
        case 'mes': $secim = '8,9,10';
        break;
    }
$sql = "Select distinct concat(telebeler.ad,' ',telebeler.soyad) as ad_soyad from netice inner join telebeler on telebeler.id = netice.id_telebe where secim in ('$secim') and id_fenn = '$id_fenn' order by id_telebe asc";
    //echo $sql;
    $tap_netice = mysql_query($sql);
    $html = '';
    while($goster_netice = mysql_fetch_array($tap_netice)){
        $html .= "'";
        $html .= $goster_netice["ad_soyad"];
        $html .= "', ";
        }
        echo substr($html,0,-2);
}

//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun

function result_statistical_t($id_fenn,$secim,$id){
    $sql = "Select lower(concat(substring(telebeler.ad,1,1),substring(telebeler.soyad,1,1),telebeler.id)) as said, qiymet from netice inner join telebeler on telebeler.id = netice.id_telebe where secim = '$secim' and id_fenn = '$id_fenn' and id_telebe = '$id'";
   // echo $sql;
    $tap_netice = mysql_query($sql);
    $html = '';
    while($goster_netice = mysql_fetch_array($tap_netice)){
        $html .= $goster_netice["said"];
        $html .= ": ";
        $html .= $goster_netice["qiymet"];
        $html .= ", "; 
    }
    echo substr($html,0,-2);

}
//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun ykeys
function result_statistical_ykeys_t($id_fenn,$secimler,$id){
    switch ($secimler){
        case 'kol': $secim = '5,6,7';
        break;
        case 'lab': $secim = '2,3,4';
        break;
        case 'mes': $secim = '8,9,10';
        break;
    }
      $sql = "Select distinct lower(concat(substring(telebeler.ad,1,1),substring(telebeler.soyad,1,1),telebeler.id)) as said from netice inner join telebeler on telebeler.id = netice.id_telebe where secim in ('$secim') and id_fenn = '$id_fenn' and id_telebe ='$id'";
    //echo $sql;
    $tap_netice = mysql_query($sql);
    $html = '';
    while($goster_netice = mysql_fetch_array($tap_netice)){
        $html .= "'";
        $html .= $goster_netice["said"];
        $html .= "', ";
        }
        echo substr($html,0,-2);
}
//////////////////////////////////////////////////////////////////////////////////////////////////////
// umumi neticeler ucun  ykeys

function result_statistical_labels_t($id_fenn,$secimler,$id){
 switch ($secimler){
        case 'kol': $secim = '5,6,7';
        break;
        case 'lab': $secim = '2,3,4';
        break;
        case 'mes': $secim = '8,9,10';
        break;
    }
$sql = "Select distinct concat(telebeler.ad,' ',telebeler.soyad) as ad_soyad from netice inner join telebeler on telebeler.id = netice.id_telebe where secim in ('$secim') and id_fenn = '$id_fenn' and id_telebe = '$id'";
    //echo $sql;
    $tap_netice = mysql_query($sql);
    $html = '';
    while($goster_netice = mysql_fetch_array($tap_netice)){
        $html .= "'";
        $html .= $goster_netice["ad_soyad"];
        $html .= "', ";
        }
        echo substr($html,0,-2);
}
function is_admin($id){
$query = "select * from muellim where id = '$id' and status = 'admin'";
$tap_netice = mysql_query($query);
$neticeler = mysql_num_rows($tap_netice);
if ($neticeler > 0){
    return true;
}
else{
    return false;
}
}
function telebe_qrup($id){
    $sql = "select qrup.ad as  qrup_ad from qrup inner join telebeler on telebeler.id_qrup = qrup.id where telebeler.id = '$id'";
    $tap_qrup = mysql_query($sql);
    $goster_qrup = mysql_fetch_array($tap_qrup);
    return $goster_qrup["qrup_ad"];
}
?>
