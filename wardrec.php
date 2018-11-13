<html>
	<head>

		<title><WARD RECORD FORM</title>
		<style>
		body {border:4px solid Tomato;border-style: inset;padding: 120px;margin: 300px;background-image: url("background7.jpg");}
		</style>
	</head>
	<body>
		<h1 style="font-family:calibri; text-align:center; border:2px solid Tomato;" > IVOR PAINE MEMORIAL HOSPITAL</h1><!-- MAIN HEADING -->
		<h2 style="font-family:calibri; text-align:center;" > WARD RECORD </h2>
		<hr>
		

		<br>
		<br>
		<br>
		
		<?php
		if(isset($_POST['submit']))
		{

		$pat=$_POST["WARD_NAME"];
		
		//echo $pat;

		//}
		
		?>
	
		<!--</h3>-->	
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
			$query10="select ward_name from ward where ward_name='$pat'";
		$a10 = oci_parse($con, $query10); 
		$r10= oci_execute($a10);
		
		if($row10 = oci_fetch_array($a10, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							
							 
							$pat=$row10["WARD_NAME"];
								echo "		";
							echo "<br>";
		  }
		  else {echo'RECORD NOT FOUND';
						$pat=$row10["WARD_NAME"];
					}
		?>
		</h1>
		<!--/////////////////////////////////////////////-->
		
		
		<h3 style="font-family:calibri; text-align:left" > Ward Name:
			<?php	//echo $pat;       ?>
			<?php
			$query1="select ward_name from ward where ward_name='$pat'";
		$a9 = oci_parse($con, $query1); 
		$r9= oci_execute($a9);
		
		if($row9 = oci_fetch_array($a9, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							
							echo $row9["WARD_NAME"]; 
								echo "		";
							echo "<br>";
		  }
		?>
			
		<!--</h3>-->
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  
	   <!--//////////////////////QUERY FOR DISPLAYING SPECIALITY OF WARD/////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Specialty:
	  <?php
		$query1="select speciality_name from speciality where speciality_id=(select speciality_id from ward where ward_name='$pat')";
		$a1 = oci_parse($con, $query1); 
		$r1 = oci_execute($a1);
		
		while($row = oci_fetch_array($a1, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["SPECIALITY_NAME"]; 
								echo "		";
							echo "<br>";
		  }
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->


	  <!--//////////////////////QUERY FOR DISPLAYING DAY SISTERS IN WARD/////////////////-->
	  <h3 style="font-family:calibri; text-align:left;" > Day Sister:
	  <?php
		$query2="select name from DaySis where ward_id=(select ward_id from ward where ward_name='$pat')";
		$a2 = oci_parse($con, $query2); 
		$r2 = oci_execute($a2);
		
		while($row = oci_fetch_array($a2, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["NAME"]; 
								echo "		";
							echo "<br>";
		  }
		
	?><!--</h3>-->
		<!--///////////////////////////////////////////////////////////-->
	    
	  <!--//////////////////////QUERY FOR DISPLAYING NIGHT SISTERS IN WARD/////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Night Sister:
	  <?php
		$query4="select name from NightSis where ward_id=(select ward_id from ward where ward_name='$pat')";
		$a4 = oci_parse($con, $query4); 
		$r4 = oci_execute($a4);
		
		while($row = oci_fetch_array($a4, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["NAME"]; 
								echo "		";
							echo "<br>";
		  }
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->
			  

		
		<!--//////////////////////QUERY FOR DISPLAYING STAFF NURSES IN WARD /////////////////-->
	  <h3 style="font-family:calibri; text-align:left;" > Staff Nurse(s):
	  <?php
		$query5="select name from staffnurse where ward_id=(select ward_id from ward where ward_name='$pat')";
		$a5 = oci_parse($con, $query5); 
		$r5 = oci_execute($a5);
		
		while($row = oci_fetch_array($a5, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["NAME"]; 
								echo "		";
							echo ",";
		  }
		
	?><!--</h3>-->
		<!--///////////////////////////////////////////////////////////-->
		
			<!--//////////////////////QUERY FOR DISPLAYING NON-REGISTERED NURSES IN WARD /////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Non-Registered Nurse(s):
	  <?php
		$query7="select name from nonreg_nurse where ward_id=(select ward_id from ward where ward_name='$pat')";
		$a7 = oci_parse($con, $query7); 
		$r7 = oci_execute($a7);
		
		while($row = oci_fetch_array($a7, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["NAME"]; 
								echo "		";
							echo ",";
		  }
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->
		
		<br><br>
		<hr>
		<h3 style="font-family:calibri; text-align:center;" > PATIENT INFORMATION</h3>
		
		<!--//////////////////////QUERY FOR DISPLAYING PATIENT INFORMATION /////////////////-->
	   
		<table border="true" bordercolor=RED style="width:100%">
		<tr>
		<th style="font-family:calibri; text-align:center;">Patient No</th>
		<th style="font-family:calibri; text-align:center;">Patient Name</th>
		<th style="font-family:calibri; text-align:center;">Care Unit</th>
		<th style="font-family:calibri; text-align:center;">Bed No</th>
		<th style="font-family:calibri; text-align:center;">Consultant</th>
		<th style="font-family:calibri; text-align:center;">Date Admitted</th>
		</tr>
		
	    <?php
		$query6="select patient.patient_id,patient.patient_name,admissions.careunit_no,bedd.bed_id,doctor.name,admissions.date_admitted
    from careunit inner join admissions on careunit.careunit_no=admissions.careunit_no inner join patient on admissions.patient_id=patient.patient_id inner join bedd on patient.patient_id=bedd.patient_id inner join ward on careunit.ward_id=ward.ward_id inner join doctor on patient.in_charge=doctor.staff_no
    where ward.ward_name='$pat'";
		$a6 = oci_parse($con, $query6); 
		$r6 = oci_execute($a6);
		
		while($row = oci_fetch_array($a6, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {?>
			<tr>
							<td><?php echo $row["PATIENT_ID"]; 
								echo "		";?></td>
							<td><?php echo $row["PATIENT_NAME"]; 
								echo "		";?></td>
							<td><?php echo $row["CAREUNIT_NO"]; 
								echo "		";?></td>
							<td><?php echo $row["BED_ID"]; 
								echo "		";?></td>
							<td><?php echo $row["NAME"]; 
								echo "		";?></td>
							<td><?php echo $row["DATE_ADMITTED"]; 
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
			
		else {?>
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