<?php include('allhead.php'); ?>
<div class="container">
	<div class="row">
	</div>
	<div class="row">
		<div class="col-md-12">
			<fieldset>
				<legend>
					<h3 style="padding-top: 25px;"><span class="glyphicon glyphicon-lock"></span>&nbsp;Admin Login</h3>
				</legend>
				<!-- Admin login form -->
				<form name="adminlogin" action="loginlinkadmin.php" method="POST">
					<div class="control-group form-group">
						<div class="controls">
							<label>Admin Id:</label>
							<input type="text" class="form-control" name="aid">
							<p class="help-block"></p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Passsword:</label>
							<input type="password" class="form-control" name="apass">
							<p class="help-block"></p>
						</div>
					</div>
					<div>
					<button type="reset" class="btn btn-danger" >Reset</button>
						<button type="submit" name="login" class="btn btn-success  pull-right">Login</button>
						
					</div>
			</fieldset>
			</form>
		</div>
	</div>
	<?php include('allfoot.php'); ?>