<?php
if(is_null($_GET["id"])){
$fenn_id = 0;
}else{
$fenn_id = $_GET["id"];
}
?>
	<ul class="nav nav-pills nav-stacked">
<li <?php if ($_GET["nav"]=="net") echo "class='active'";?>><a href="http://localhost/dis/result.php?nav=net&id=<?php echo $fenn_id;?>">Ümumi</a></li>
<li <?php if ($_GET["nav"]=="lab") echo "class='active'";?>><a href="http://localhost/dis/neticeler/laboratoriya.php?nav=lab&id=<?php echo $fenn_id;?>">Laboratoriya</a></li>
<li <?php if ($_GET["nav"]=="ser") echo "class='active'";?>><a href="http://localhost/dis/neticeler/serbest.php?nav=ser&id=<?php echo $fenn_id;?>">Sərbəst işlər</a></li>
<li <?php if ($_GET["nav"]=="kol") echo "class='active'";?>><a href="http://localhost/dis/neticeler/Kollokvium.php?nav=kol&id=<?php echo $fenn_id;?>">Kollokvium</a></li>
<li <?php if ($_GET["nav"]=="mes") echo "class='active'";?>><a href="http://localhost/dis/neticeler/mesgele.php?nav=mes&id=<?php echo $fenn_id;?>">Məşğələ</a></li>
<!--<li <?php if ($_GET["nav"]=="fver") echo "class='active'";?>><a href="http://localhost/dis/fenn-verilenleri.php?nav=fver&id=<?php echo $fenn_id;?>">Fənn Verilənləri</a></li>-->
	</ul>
