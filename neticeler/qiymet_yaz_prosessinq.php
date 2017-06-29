<?php
include ("../functions.php");
session_start();
if ($_SERVER['REQUEST_METHOD'] === 'POST'){
    
    $fenn_ad = mysql_real_escape_string($_POST["fenn_ad"]); 
    $telebe = mysql_real_escape_string($_POST["telebe"]);
    $secim_str = mysql_real_escape_string($_POST["secim"]);
    $qiymet = mysql_real_escape_string($_POST["qiymet"]);
    $id_muellim = $_SESSION['id'];
    $tarix = date('Y-m-d H:i:s');
    $id_fenn = fenn_id_addan_tap($fenn_ad);
    $id_telebe = strpos($telebe, '.');
    $id_telebe = substr($telebe,3,$id_telebe-3);
    $secim = secim_tap($secim_str);
    
    $qiymet_varmi_tap =  mysql_query("select * from netice where id_telebe = '$id_telebe' and secim = '$secim' and id_fenn = '$id_fenn'");
    if (mysql_numrows($qiymet_varmi_tap) >= 1){
        $sql = "Update netice set tarix = '$tarix', qiymet = '$qiymet' where id_telebe = '$id_telebe' and secim = '$secim'";
    }
    else{
$sql = "INSERT INTO netice (id_telebe, secim, tarix, id_fenn, id_muellim, qiymet) values 
                                    ('$id_telebe', '$secim', '$tarix', '$id_fenn', '$id_muellim', '$qiymet')";

   }
    echo $sql;
    $sql_net = mysql_query($sql);
    
    if (!$sql_net){
  echo '<span class="label label-warning">Xəta baş verdi əvvəlki səhifəyə yönləndirlirsiniz...</span>';
                header('Refresh: 2; url='.$site_url.'neticeler/qiymet_yaz.php');
} else {
        echo '<span class="label label-success">Qiymət uğurla yazıldı.</span>';
       header('Refresh: 2; url='.$site_url.'neticeler/qiymet_yaz.php');
 }
}

?>
