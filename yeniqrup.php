<?php
/*yenifenn*/
session_start();
include("header.php");
?>
    <div class="container">
		<div class="row">
			<div class="col-md-8">
			<div class="panel panel-primary">
			<div class="panel-heading"><h4 class="panel-title">Yeni Qrup Qeydiyyatı</h4></div>
				<div class="panel-body">
				<form action="yeniqrup_q_proses.php" method="post" role="form">
				<div class="form-group">
				<table class="table">
				<tr>
					<td>
						<label for="qrup_id">id</label>
						<input type="text" class="form-control" disabled id="qrup_id" placeholder="İd avtomatik əlavə olunur">
					</td>
					<td>
						<label for="qrup_ad">Qrupun adı</label>
						<input type="text" class="form-control" id="qrup_ad" name="qrup_ad" placeholder="Qrupun adın daxil edin">
					</td>
				</tr>
				<tr>
					<td>
						<label for="fakulte_ad">Fakültə</label>
						<input type="text" class="form-control" id="fakulte_ad" name="fakulte_ad" placeholder="Fakültə adın daxil edin">
					</td>
					<td>
						<label for="ixtisas_ad">İxtisas</label>
						<input type="text" class="form-control" id="ixtisas_ad" name="ixtisas_ad" placeholder="İxtisas adın daxil edin">
					</td>
				</tr>
				<tr>
					<td>
						<label for="sobe">Şöbə</label><br/>
						<label><input type="radio" name="sobe" value="əyani">Əyani</label>
						<label><input type="radio" name="sobe" value="qiyabi">Qiyabi</label>
					</td>
					<td>
						<label for="bolme">Bölmə</label><br/>
						<label><input type="radio" name="bolme" value="az">Azərbaycan</label>
						<label><input type="radio" name="bolme" value="en">İnglis</label>
						<label><input type="radio" name="bolme" value="ru">Rus</label>
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

    <!-- javascript
    ================================================== -->
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
    