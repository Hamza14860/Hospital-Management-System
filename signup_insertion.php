<html>
	<head>

		<title><SIGN UP INSERTION</title>
		<style>
		<!--body {border:2px solid Tomato;padding: 30px;margin: 50px;}-->
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

		$pat=$_POST["EMAIL"];
		$pat2=$_POST["PASS"];
		

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
	  
	  
	  
	  
	  
	  
	  
	  <!--ERROR-->
		<h1 style="font-family:calibri; text-align:center; color:Tomato;" > 
			<?php
			$query10="INSERT INTO Login (email_id,  password) VALUES ('$pat', '$pat2')";
		$a10 = oci_parse($con, $query10);
		$r10= oci_execute($a10);
		
		if($r10 )  //parse or execute for update, insert
      	{
					echo'SIGN UP DONE';
		}
		 else {echo'SIGN UP FAILED';
		 }
		?>
		</h1>
		<!--/////////////////////////////////////////////-->
		
		
	  
	  
	  
	  
	  
	  
	 
		<br>
		<!--BACK TO LOGIN PAGE-->
		<h3 style="text-align:right">
		<form name="LOGIN" action="login1.php" method="Post" action="" >
		<input type="submit" name="submit" value="LOGIN PAGE"></br>
		</form>
		</h3>
		<!--////////////////////-->
		
		
		<?php
			}
			
		else {
			?>
			<marquee  behavior="scroll" scrollamount="5" style="font-family:calibri; border:3px solid Tomato; "><font color="red" size="35"> ERROR</marquee>
			
			<!--BACK TO SIGNUP PAGE-->
		<h3 style="text-align:right">
		<form name="SIGNUP" action="signup1.php" method="Post" action="" >
		<input type="submit" name="submit" value="SIGNUP PAGE"></br>
		</form>
		</h3>
		<!--////////////////////-->
			
			
			<?php
			
			
			}
		?>
	

		
	
	</body>

</html>