<?php 
	$baglan = @mysql_connect("localhost", "root", "");
	$vb_sec = @mysql_select_db("diplom",$baglan);
	//mysql_query("SET CHARACTER SET utf8_general_mysql500_ci");
	mysql_set_charset('utf8', $baglan);
?>