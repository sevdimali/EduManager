<?php
/*Fenn Verilenleri*/

session_start();
include("configM.php");
include("header-result.php");
?>	
	
	<div class="row">
	<div class="col-md-2">
	<?php include("result-left-sidebar.php");?>
	</div>
        <div class="col-md-7">
            <table class="table table-hover">
                <tr>
                <th>Mühazirə(slayd)</th>
                <th>Əlavə fayllar</th>
                <th>Faydalı link</th>
                </tr>
                <tr>
                    <td><a href="#" alt="sinaq">Muhazirə1</a></td>
                    <td><a href="#" alt="program">program</a></td>
                    <td><a href="#" alt="link">link</a></td>
                </tr>
                
            </table>
        </div>	
		<?php
		include("sidebar-profil-fenler-qruplar-result.php");
		?>
	 </div><!-- son row -->
 <hr>
		<?php
		include("footer.php");
		?>
    </div><!-- son container -->

  </body>
</html>

