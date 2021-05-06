<?php include('allhead.php'); ?> 
 </nav>
<div class="container">
	<div class="row">
		<div class="col-md-12">
			<fieldset>
				<!-- Faculty login page -->
				<legend>
					<h3 style="padding-top: 25px;"><span class="glyphicon glyphicon-lock"></span>&nbsp;  Faculty Login</h3>
				</legend>
				<form name="facultylogin" action="loginlinkfaculty" method="POST">
					<div class="control-group form-group">
						<div class="controls">
							<label>Faculty ID:</label>
							<input type="text" class="form-control" name="fid" required data-validation-required-message="Please enter your Faculty Id.">
							<p class="help-block"></p>
						</div>
					</div>
					<div class="control-group form-group">
						<div class="controls">
							<label>Passsword:</label>
							<input type="password" class="form-control" name="pass" required data-validation-required-message="Please enter your password.">
							<p class="help-block"></p>
						</div>
					</div>
					<div>
					<button type="reset" class="btn btn-danger" >Reset</button>
						<button type="submit" class="btn btn-success pull-right ">Login</button>
						
					</div>
			</fieldset>
			</form>
		</div>
	</div>
	<?php include('allfoot.php'); ?>