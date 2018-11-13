<html>
	<head>

		<title><CONSULTANT TEAM RECORD</title>
		<style>
		body {border:4px solid Tomato;border-style: inset;padding: 300px;margin: 300px;background-image: url("background7.jpg");}
		</style>
	</head>
	<body>
		<h1 style="font-family:calibri; text-align:center; border:2px solid Tomato;" > IVOR PAINE MEMORIAL HOSPITAL</h1><!-- MAIN HEADING -->
		<h2 style="font-family:calibri; text-align:center;" > CONSULTANT TEAM RECORD </h2>
		<hr>
		

		<br>
		<br>
		<br>
		
		<?php
		if(isset($_POST['submit']))
		{

		$pat=$_POST["STAFF_NO"];
		
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
			$query10="select staff_no from Non_Consultant where staff_no='$pat'";
		$a10 = oci_parse($con, $query10); 
		$r10= oci_execute($a10);
		
		if($row10 = oci_fetch_array($a10, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							
							 
							$pat=$row10["STAFF_NO"];
								echo "		";
							echo "<br>";
		  }
		  else {echo'RECORD NOT FOUND';
						$pat=$row10["STAFF_NO"];
					}
		?>
		</h1>
		<!--/////////////////////////////////////////////-->
		
		
		<h3 style="font-family:calibri; text-align:left" > Staff No:
			<?php	//echo $pat;       ?>
			<?php
			$query1="select staff_no from Non_Consultant where staff_no='$pat'";
		$a9 = oci_parse($con, $query1); 
		$r9= oci_execute($a9);
		
		if($row9 = oci_fetch_array($a9, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							
							echo $row9["STAFF_NO"]; 
								echo "		";
							echo "<br>";
		  }
		?>
			
		<!--</h3>-->
	  
	  
	  
	  
	  
	  
	  
	  
	  
	   <!--//////////////////////QUERY FOR DISPLAYING NAME OF DOCTOR/////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Name:
	  <?php
		$query1="select name from Non_Consultant where staff_no='$pat'";
		$a1 = oci_parse($con, $query1); 
		$r1 = oci_execute($a1);
		
		while($row = oci_fetch_array($a1, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["NAME"]; 
								echo "		";
							echo "<br>";
		  }
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->


	  <!--//////////////////////QUERY FOR DISPLAYING POSITION OF DOCTOR/////////////////-->
	  <h3 style="font-family:calibri; text-align:left;" > Position:
	  <?php
		//$query2="select position_id from previousexp where staff_no='$pat' and todate >=(select max(todate) from previousexp where staff_no='$pat')";
		$query2="select position_name from position where position_id=(select position_id from previousexp where staff_no='$pat' and todate >=(select max(todate) from previousexp where staff_no='$pat'))";
		$a2 = oci_parse($con, $query2); 
		$r2 = oci_execute($a2);
		
		while($row = oci_fetch_array($a2, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["POSITION_NAME"]; 
								echo "		";
							echo "<br>";
		  }
		
	?><!--</h3>-->
		<!--///////////////////////////////////////////////////////////-->
	    
	  <!--//////////////////////QUERY FOR DISPLAYING DATE JOINED TEAM/////////////////-->
	  <!--<h3--> <span style="font-family:calibri; float:right;" > Date Joined Team:
	  <?php
		$query4="select fromdate from previousexp where staff_no='$pat' and fromdate <=(select min(fromdate) from previousexp where staff_no='$pat')";
		$a4 = oci_parse($con, $query4); 
		$r4 = oci_execute($a4);
		
		while($row = oci_fetch_array($a4, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {
							echo $row["FROMDATE"]; 
								echo "		";
							echo "<br>";
		  }
		
	?></h3>
		<!--///////////////////////////////////////////////////////////-->
			  

	
		
		<br><br>
		<hr>
		
		 <div style ="border:2px;width:100%;height:5%;float:left"></div>
		 <div style ="border:2px solid red;width:50%;height:40%; float:left">
		
		<h3 style="font-family:calibri; text-align:center;" > Prevoius Experience</h3>
		
		<!--//////////////////////QUERY FOR DISPLAYING PREVIOUS EXPERIENCE /////////////////-->
	   
		<table border="true" bordercolor=RED style="width:100%">
		<tr>
		<th style="font-family:calibri; text-align:center;">From Date</th>
		<th style="font-family:calibri; text-align:center;">To Date</th>
		<th style="font-family:calibri; text-align:center;">Position</th>
		<th style="font-family:calibri; text-align:center;">Establishment</th>
		</tr>
		
	    <?php
		$query6="select fromdate,todate,position_id,establishment from previousexp where staff_no='$pat'";
		$a6 = oci_parse($con, $query6); 
		$r6 = oci_execute($a6);
		
		while($row = oci_fetch_array($a6, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {?>
			<tr>
							<td><?php echo $row["FROMDATE"]; 
								echo "		";?></td>
							<td><?php echo $row["TODATE"]; 
								echo "		";?></td>
							<td><?php echo $row["POSITION_ID"]; 
								echo "		";?></td>
							<td><?php echo $row["ESTABLISHMENT"]; 
								echo "		";?></td>
							<?php echo "<br>";?>
			</tr>	<?php			
		  }
		
		?>
		</table>
		
		</div>
		<!--///////////////////////////////////////////////////////////-->

		<div style ="border:2px;width:100%;height:5%;float:right"></div>
		<div style ="border:2px solid red;width:40%;height:40%; float:right">
		
		<h3 style="font-family:calibri; text-align:center;" > Progress</h3>
		
		<!--//////////////////////QUERY FOR DISPLAYING PROGRESS /////////////////-->
	   
		<table border="true" bordercolor=RED style="width:100%">
		<tr>
		<th style="font-family:calibri; text-align:center;">Date-Grade</th>
		<th style="font-family:calibri; text-align:center;">Performance</th>
		</tr>
		
	    <?php
		$query6="select date_grade,performance from progress where staff_no='$pat'";
		$a6 = oci_parse($con, $query6); 
		$r6 = oci_execute($a6);
		
		while($row = oci_fetch_array($a6, OCI_BOTH+OCI_RETURN_NULLS))  //parse or execute for update, insert
      	  {?>
			<tr>
							<td><?php echo $row["DATE_GRADE"]; 
								echo "		";?></td>
							<td><?php echo $row["PERFORMANCE"]; 
								echo "		";?></td>
							
							<?php echo "<br>";?>
			</tr>	<?php			
		  }
		
		?>
		</table>
		
		
		<br>
		<!--BACK TO MAIN PAGE-->
		<h3 style="text-align:right">
		<form name="MAIN_PAGE" action="main.php" method="Post" action="" >
		<input type="submit" name="submit" value="MAIN PAGE"></br>
		</form>
		</h3>
		<!--////////////////////-->
		
		
		
		</div>
		<!--///////////////////////////////////////////////////////////-->
		
		
		
		
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