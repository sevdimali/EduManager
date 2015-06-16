<?php
echo "Sizin İnformasiyalarınız<br/>";
$telebe_ad = goster_telebe_id_den($id,1);
$telebe_soyad = goster_telebe_id_den($id,2);
$telebe_ataad = goster_telebe_id_den($id,3);
echo '<span>Ad: </span>'.$telebe_ad;
echo '<span>Soyad: </span>'.$telebe_soyad;
echo '<span>Ata adı: </span>'.$telebe_ataad;
?>