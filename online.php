<div class="panel panel-primary">
					<div class="panel-heading"><h4 class="panel-title"  style="text-align:center;">Onlayn olanlar</h4></div>
					Mü?llim:
					<ul>
					<?php 
					$tap_online = mysql_query("select ad from muellim where onlayn=1;");
								while($goster_fenn = mysql_fetch_array($tap_online)){
								echo '<li>adad</li>';
								}
					?>
					</ul>
					T?l?b?:
					<ul>
					<li>Sevdimali</li>
					<li>Sevdimali</li>
					<li>Sevdimali</li>
					<li>Sevdimali</li>
					</ul>
					</div>