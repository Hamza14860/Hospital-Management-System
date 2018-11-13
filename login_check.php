<html>
	<head>

		<title><LOGIN CHECK</title>
		<style>
		body {border:4px solid Tomato;border-style: inset;padding: 120px;margin: 400px;background-image: url("background7.jpg");}
		</style>
	</head>
	<body>
		<h1 style="font-family:calibri; text-align:center; border:2px solid Tomato;" > IVOR PAINE MEMORIAL HOSPITAL</h1><!-- MAIN HEADING -->
		<hr>
		

		<br>
		<br>
		<br>
		
		<?php
		if(isset($_POST['submit']))
		{

		$pat=$_POST["email"];
		$pat2=$_POST["pass"];

		//}
		
		?>
			
		<?php
		$db_sid = "(DESCRIPTION = (ADDRESS_LIST = (ADDRESS = (PROTOCOL = TCP)(HOST = LAPTOP-PNH3DF17)(PORT = 1521)) ) (CONNECT_DATA = (SID = ORACLEHAMZA) ) )"; 
     $db_user = "hamza"; 
     $db_pass = "hospital";
     
      $con = oci_connect($db_user,$db_pass,$db_sid); 
      if($con) 
      { 
      // echo "Oracle Connection Successful.";
        
      } 
   else 
      { die('Could not connect to Oracle: '); 
      }
	  ?>
	  
	  
	  
	  <!--ERROR CHECK -->
		<h1 style="font-family:calibri; text-align:center; color:Tomato;" > 
			<?php
			$query10="select email_id, password from login where email_id='$pat' and password='$pat2'";
		$a10 = oci_parse($con, $query10);
		$r10= oci_execute($a10);
		
		
			if($row10 = oci_fetch_array($a10, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo'LOGIN SUCCESSFULL';
							 ?>
							<!--TO MAIN PAGE-->
						<br>
						<form name="MENU" action="main.php" method="Post" action="" >
						<input type="submit" name="submit" value="TO MAIN PAGE"></br>
						</form>
						
						<!--////////////////////-->
						<?php
		  }
		  else {echo'LOGIN FAILED';
						?>
						
						<!--BACK TO LOGIN PAGE-->
						<br>
						<form name="LOGIN" action="login1.php" method="Post" action="" >
						<input type="submit" name="submit" value="BACK TO LOGIN PAGE"></br>
						</form>
						
						<!--////////////////////-->
						<?php
					}
		
		?>
		</h1>
		<!--/////////////////////////////////////////////-->
		
		
	  
	  
	  
	  
	  
	  
	 
		<br>
		
		<?php
			}
			
		else {
			?>
			<marquee  behavior="scroll" scrollamount="5" style="font-family:calibri; border:3px solid Tomato; "><font color="red" size="35"> ERROR</marquee>
			<br>
		<!--BACK TO LOGIN PAGE-->
						<h3 style="text-align:right">
						<form name="LOGIN" action="login1.php" method="Post" action="" >
						<input type="submit" name="submit" value="LOGIN PAGE"></br>
						</form>
						</h3>
						<!--////////////////////-->
		</h3>
		<!--////////////////////-->
			
			
			<?php
			
			
			}
		?>
	

		
	
	</body>

</html>