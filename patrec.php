<html>
	<head>

		<title><PATIENT RECORD FORM</title>
		<style>
		<!--body {border:2px solid Tomato;padding: 30px;margin: 50px;}-->
		body {border:4px solid Tomato;border-style: inset;padding: 120px;margin: 400px;background-image: url("background7.jpg");}
		</style>
	</head>
	<body>
		<h1 style="font-family:calibri; text-align:center; border:2px solid Tomato;" > IVOR PAINE MEMORIAL HOSPITAL</h1><!-- MAIN HEADING -->
		<h2 style="font-family:calibri; text-align:center;" > PATIENT RECORD FORM</h2>
		<hr>
		

		<br>
		<br>
		<br>
		
		<?php
		if(isset($_POST['submit']))
		{

		$pat=$_POST["PATIENT_NO"];
		
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
	  
	  
	  
	  
	  
	  
	  
	  <!--ERROR-->
		<h1 style="font-family:calibri; text-align:center; color:Tomato;" > 
			<?php
			$query10="select patient_id from patient where patient_id='$pat'";
		$a10 = oci_parse($con, $query10); 
		$r10= oci_execute($a10);
		
		if($row10 = oci_fetch_array($a10, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							
							 
							$pat=$row10["PATIENT_ID"];
								echo "		";
							echo "<br>";
		  }
		  else {echo'RECORD NOT FOUND';
						$pat=$row10["PATIENT_ID"];
					}
		?>
		</h1>
		<!--/////////////////////////////////////////////-->
		
		
		<h3 style="font-family:calibri; text-align:left" > Patient No:
			<?php	//echo $pat;       ?>
			<?php
			$query1="select patient_id from patient where patient_id='$pat'";
		$a9 = oci_parse($con, $query1); 
		$r9= oci_execute($a9);
		
		if($row9 = oci_fetch_array($a9, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							
							echo $row9["PATIENT_ID"]; 
								echo "		";
							echo "<br>";
		  }
		?>
			
		<!--</h3>-->
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	   <!--//////////////////////QUERY FOR DISPLAYING DOCTOR INCHARGE NO OF PATIENT/////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Doctor No:
	  <?php
		$query1="select in_charge from patient where patient_id='$pat'";
		$a1 = oci_parse($con, $query1); 
		$r1 = oci_execute($a1);
		
		while($row = oci_fetch_array($a1, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							$doc=$row["IN_CHARGE"];
							echo $row["IN_CHARGE"]; 
								echo "		";
							echo "<br>";
		  }
		
1	?></h3>
		<!--///////////////////////////////////////////////////////////-->


	 <!--//////////////////////QUERY FOR DISPLAYING PATIENT NAME/////////////////-->
	  <h3 style="font-family:calibri; text-align:left;" > Patient Name:
	  <?php
		$query4="select patient_name from patient where patient_id='$pat'";
		$a4 = oci_parse($con, $query4); 
		$r4 = oci_execute($a4);
		
		while($row = oci_fetch_array($a4, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["PATIENT_NAME"]; 
								echo "		";
							echo "<br>";
		  }
		
	?><!--</h3>-->
		<!--///////////////////////////////////////////////////////////-->

		
	  <!--//////////////////////QUERY FOR DISPLAYING DOCTOR INCHARGE NAME OF PATIENT/////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Doctor Name:
	  <?php
		$query2="select name from doctor where staff_no=(select in_charge from patient where patient_id='$pat')";
		$a2 = oci_parse($con, $query2); 
		$r2 = oci_execute($a2);
		
		while($row = oci_fetch_array($a2, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["NAME"]; 
								echo "		";
							echo "<br>";
		  }
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->
	    			  

		
		<!--//////////////////////QUERY FOR DISPLAYING DOB PATIENT /////////////////-->
	  <h3 style="font-family:calibri; text-align:left;" > Patient DOB:
	  <?php
		$query5="select DOB from patient where patient_id='$pat'";
		$a5 = oci_parse($con, $query5); 
		$r5 = oci_execute($a5);
		
		while($row = oci_fetch_array($a5, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["DOB"]; 
								echo "		";
							echo "<br>";
		  }
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->
		
			<!--//////////////////////QUERY FOR DISPLAYING BLOODGROUP PATIENT /////////////////-->
	  <h3 style="font-family:calibri; text-align:left;" > BloodGroup:
	  <?php
		$query7="select bloodgroup from patient where patient_id='$pat'";
		$a7 = oci_parse($con, $query7); 
		$r7 = oci_execute($a7);
		
		while($row = oci_fetch_array($a7, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["BLOODGROUP"]; 
								echo "		";
							echo "<br>";
		  }
		
	?><!--</h3>-->
		<!--///////////////////////////////////////////////////////////-->
		
		
		<!--///////////////////////////////////////////////////////////-->
		
			<!--//////////////////////QUERY FOR DISPLAYING BLOODGROUP PATIENT /////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Consultant:
	  <?php
		$query11="select c.staff_no from consultant c inner join team t on c.staff_no=t.staff_no inner join non_consultant n on t.team_id=n.team_id where n.staff_no=(select in_charge from patient where patient_id='$pat')";
		$a11 = oci_parse($con, $query11); 
		$r11 = oci_execute($a11);
		
		if($row = oci_fetch_array($a11, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["STAFF_NO"]; 
								echo "		";
							echo "<br>";
		  }
		else{
			
			echo $doc;
			echo "		";
							echo "<br>";
		}
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->
		
		
		<br>
		<hr>
		<h3 style="font-family:calibri; text-align:center;" > MEDICAL HISTORY</h3>
		
		<!--//////////////////////QUERY FOR DISPLAYING MEDICAL HISTORY OF PATIENT /////////////////-->
	   
		<table border="true" bordercolor=RED style="width:100%">
		<tr>
		<th style="font-family:calibri; text-align:center;">Complaint ID</th>
		<th style="font-family:calibri; text-align:center;">Treatment Code</th>
		<th style="font-family:calibri; text-align:center;">Staff No</th>
		<th style="font-family:calibri; text-align:center;">Start Date</th>
		<th style="font-family:calibri; text-align:center;">End Date</th>
		</tr>
		
	    <?php
		$query6="select complaint_id,treatment_code,staff_no,start_date,end_date from treatment where patient_id='$pat'";
		$a6 = oci_parse($con, $query6); 
		$r6 = oci_execute($a6);
		
		while($row = oci_fetch_array($a6, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {?>
			<tr>
							<td><?php echo $row["COMPLAINT_ID"]; 
								echo "		";?></td>
							<td><?php echo $row["TREATMENT_CODE"]; 
								echo "		";?></td>
							<td><?php echo $row["STAFF_NO"]; 
								echo "		";?></td>
							<td><?php echo $row["START_DATE"]; 
								echo "		";?></td>
							<td><?php echo $row["END_DATE"]; 
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