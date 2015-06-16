<?php

?>
<h3 class="qiymetleri_yenile_basliq">Qiymətləri Yenilə</h3>
<form method="POST" action="qiymet_yaz_prosessinq.php">
<span class="label label-info pull-left lbl_qiymet_yaz">Fənn seçin:</span>
<select name="fenn_ad" class="form-control fenn-sec" id="fenn_ad">
		<?php muellimin_ders_dediyi_fenler_formatli($_SESSION["id"]); ?>
		</select>
<div style="clear: both;"></div>
<span class="label label-info pull-left lbl_qiymet_yaz">Tələbə seçin:</span>
<select name="telebe" class="form-control telebe_sec">
<?php
butun_telebeler();
?>
</select>
<div style="clear: both;"></div>
<span class="label label-info pull-left lbl_qiymet_yaz">Tipi seçin:</span>
<select name="secim" class="form-control secim_sec">
<option></option>
<option>Kurs isi</option>
<option>Lab 1</option>
<option>Lab 2</option>
<option>Lab 3</option>
<option>Kol 1</option>
<option>Kol 2</option>
<option>Kol 3</option>
<option>Məş 1</option>
<option>Məş 2</option>
<option>Məş 3</option>
<option>Sər 1</option>
<option>Sər 2</option>
<option>Sər 3</option>
</select>
<div style="clear: both;"></div>
<span class="label label-info pull-left lbl_qiymet_yaz">Qiyməti daxil edin:</span>
<input name="qiymet" class="form-control qiymet_yaz" type="text" size="3" />
<div style="clear: both;"></div>
<button style="min-width: 100%;  margin-top: 25px;  min-height: 40px;" type="submit" class="btn btn-success">Əlavə et</button>
</form>
