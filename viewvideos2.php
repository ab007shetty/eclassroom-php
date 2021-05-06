	<?php
session_start();

if ( $_SESSION[ "sidx" ] == "" || $_SESSION[ "sidx" ] == NULL ) {
	header( 'Location:studentlogin' );
}

$userid = $_SESSION[ "sidx" ];
$userfname = $_SESSION[ "fname" ];
$userlname = $_SESSION[ "lname" ];
?>

<?php include('studenthead.php'); ?>

<div class="container">
	<div class="row">
		<div class=" col-md-12">
				<h3> Welcome <a href="welcomestudent.php" <?php echo "<span style='color:red'>".				$userfname." ".$userlname."</span>";?> </a></h3>
				
			<?php 
				
				include('database.php');
				$video_id= $_GET['viewid'];
				$sql="SELECT * FROM video WHERE V_id=$video_id";
				$rs=mysqli_query($connect,$sql);?>			
				<?php
				while($row=mysqli_fetch_array($rs))
					{
					?>
					
					<div class="row text-enter">										
						<div class="col-12 col-md-6">	
							<h2>Title: <?PHP echo $row['V_Title'];?></h2>						
						<?PHP echo $row['V_Url'];?>
						</div>
					<br>
						<div class="col-12  col-md-6 text-justify">
						<h3>Video Description:</h3>
						<p> <?PHP echo $row['V_Remarks'];?> </p>
						<a href="viewvideos.php"> <input type=	"button" Value="Back"  class="btn btn-warning btn-sm"  data-toggle="modal" data-target="#myModal"></a>

						</div>
					</div>
					
			
					<?php
					}
					?>
			</div>
		</div>


	<?php include('allfoot.php');  ?>