<html>
	<head>

		<title><ALL PATIENTS</title>
		<style>
		
		body {border:4px solid Tomato;border-style: inset;padding: 100px;margin: 200px;background-image: url("background7.jpg");}
		</style>
	</head>
	<body>
		<h1 style="font-family:calibri; text-align:center; border:2px solid Tomato;" > IVOR PAINE MEMORIAL HOSPITAL</h1><!-- MAIN HEADING -->
		<h2 style="font-family:calibri; text-align:center;" > ALL PATIENTS RECORD</h2>
		<hr>
		
		
		<?php
		if(isset($_POST['submit']))
		{

		
		//echo $pat;

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
	  
	  
	  	  
		
		<!--//////////////////////QUERY FOR DISPLAYING MEDICAL HISTORY OF PATIENT /////////////////-->
	   
		<table border="true" bordercolor=RED style="width:100%">
		<tr>
		<th style="font-family:calibri; text-align:center;">PATIENT ID</th>
		<th style="font-family:calibri; text-align:center;">PATIENT NAME</th>
		<th style="font-family:calibri; text-align:center;">PHONE#</th>
		<th style="font-family:calibri; text-align:center;">DOB</th>
		<th style="font-family:calibri; text-align:center;">GENDER</th>
		<th style="font-family:calibri; text-align:center;">BLOOD GROUP</th>
		<th style="font-family:calibri; text-align:center;">ADDRESS</th>
		<th style="font-family:calibri; text-align:center;">INCHARGE DOCTOR</th>
		</tr>
		
	    <?php
		$query6="select * from patient";
		$a6 = oci_parse($con, $query6); 
		$r6 = oci_execute($a6);
		
		while($row = oci_fetch_array($a6, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {?>
			<tr>
							<td><?php echo $row["PATIENT_ID"]; 
								echo "		";?></td>
							<td><?php echo $row["PATIENT_NAME"]; 
								echo "		";?></td>
							<td><?php echo $row["PHONE"]; 
								echo "		";?></td>
							<td><?php echo $row["DOB"]; 
								echo "		";?></td>
							<td><?php echo $row["GENDER"]; 
								echo "		";?></td>
							<td><?php echo $row["BLOODGROUP"]; 
								echo "		";?></td>
							<td><?php echo $row["ADDRESS"]; 
								echo "		";?></td>
							<td><?php echo $row["IN_CHARGE"]; 
								echo "		";?></td>
							<?php echo "<br>";?>
			</tr>	<?php			
		  }
		
		?>
		</table>
		<!--///////////////////////////////////////////////////////////-->
		
		
		<br>
		<!--BACK TO MAIN PAGE-->
		<h3 style="text-align:right">
		<form name="MAIN_PAGE" action="main.php" method="Post" action="" >
		<input type="submit" name="submit" value="MAIN PAGE"></br>
		</form>
		</h3>
		<!--////////////////////-->
		
		
		<?php
			}
			
		else {
			?>
			<marquee  behavior="scroll" scrollamount="5" style="font-family:calibri; border:3px solid Tomato; "><font color="red" size="35"> ERROR</marquee>
			
			<!--BACK TO MAIN PAGE-->
		<h3 style="text-align:right">
		<form name="MAIN_PAGE" action="main.php" method="Post" action="" >
		<input type="submit" name="submit" value="MAIN PAGE"></br>
		</form>
		</h3>
		<!--////////////////////-->
			
			
			<?php
			
			
			}
		?>
	

		
	
	</body>

</html>