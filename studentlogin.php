<?php include('allhead.php'); ?>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<!-- Stdeunt login page -->
			<fieldset>
				<legend>
					<h3 style="padding-top: 25px;"><span class="glyphicon glyphicon-lock"></span>&nbsp;  Student Login</h3>
				</legend>
				<form name="studentlogin" action="loginlinkstudent" method="POST">
					<div class="control-group form-group">
						<div class="controls">
							<label>Email Id:</label>
							<input type="text" class="form-control" name="sid" required>
							<p class="help-block"></p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Passsword:</label>
							<input type="password" class="form-control" name="pass" required>
							<p class="help-block"></p>
						</div>
					</div>
					<div>
					<button type="reset" class="btn btn-danger " >Reset </button>
						<button type="submit" name="login" class="btn btn-success  pull-right">Login</button>						
					</div>
			</fieldset>
			</form>
		</div>
	</div>
	<?php include('allfoot.php'); ?>