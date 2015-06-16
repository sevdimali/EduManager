<?php
/*yenifenn*/
session_start();
include("header.php");
?>
    <div class="container">
		<div class="row">
			<div class="col-md-8">
			<div class="panel panel-primary">
			<div class="panel-heading"><h4 class="panel-title">Yeni Fənn Qeydiyyatı</h4></div>
				<div class="panel-body">
				<form action="yenifenn_q_proses.php" method="post" role="form">
				<div class="form-group">
				<table class="table">
				<tr>
					<td>
						<label for="fenn_ad">Fənnin adı</label>
						<input type="text" class="form-control" id="fenn_ad" name="fenn_ad" placeholder="Fənnin adın daxil edin">
					</td>
					<td>
						<label for="ixtisas_ad">İxtisasın adı</label>
						<input type="text" class="form-control" id="ixtisas_ad" name="ixtisas_ad" placeholder="İxtisasın adın daxil edin">
					</td>
				</tr>
				<tr>
					<td>
						<label for="ders_saat">Dərsin saatı</label>
						<input type="number" class="form-control" id="ders_saat" name="ders_saat" placeholder="Dərsin saatın daxil edin">
					</td>
					<td>
						<label for="lab_saat">Laboratoriya Saatı</label>
						<input type="number" class="form-control" id="lab_saat" name="lab_saat" placeholder="Laboratoriya saatın daxil edin">
					</td>
				</tr>
				<tr>
					<td>
						<label for="muh_saat">Mühazirə saatı</label>
						<input type="number" class="form-control" id="muh_saat" name="muh_saat" placeholder="Mühazirə saatın daxil edin">
					</td>
					<td>
						<label for="mes_saat">Məşğələ saatı</label>
						<input type="number" class="form-control" id="mes_saat" name="mes_saat" placeholder="Məşğələ saatın daxil edin">
					</td>
				</tr><tr>
					<td>
						 <label for="qruplar">Qrupu seçin:<?php echo qruplarin_sayi();?></label>
						  <select class="form-control" id="qruplar" name="qruplar">
							<?php
							$qrup_say = qruplarin_sayi();
							for($i=1;$i<=$qrup_say;$i++){
							echo '<option value="'.qrup_ad($i).'">'.qrup_ad($i).'</option>';
							}
							?>
						  </select>
					</td>
					<td>
						<label for="kurs_is">Fənnin kurs işi var?</label><br/>
						<label><input type="radio" name="kurs_is" value="1">Hə</label>
						<label><input type="radio" name="kurs_is" value="0">Yox</label>
					</td>
				</tr>
				</table>
				<button type="submit" class="btn btn-default" value="submit" name="submit">Əlavə et</button>
				</div>
				</div>
				</form>
			</div>
		</div>
			
		<?php
		include("sidebar-profil-fenler-qruplar.php");
		?>
      </div><!-- son row -->
 <hr>
		<?php
		include("footer.php");
		?>
    </div><!-- son container -->

  </body>
</html>
    