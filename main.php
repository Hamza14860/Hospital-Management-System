<html>
<head>
<title>Main Page</title>
<style>
body {border:10px solid Tomato;padding: 20px ;border-style: inset; margin: 30px;  background-image: url("background7.jpg");}

.button {
  display: inline-block;
  padding: 5px 15px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: red;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: tomato}

.button:active {
  background-color: tomato;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}

.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 15%;
}

form { 
margin: 0 auto; 
width:400px;
}


</style>
</head>


<!--form-->

<body>

	<marquee  behavior="scroll" scrollamount="5" style="font-family:calibri; border:5px solid Tomato;border-style: inset; "><font color="red" size="16"> IVOR PAINE MEMORIAL HOSPITAL</marquee>
	<!--<h1 style="font-family:calibri; text-align:center; border:2px solid Tomato; " > IVOR PAINE MEMORIAL HOSPITAL</h1><!-- MAIN HEADING -->
	<img src="logo1.png" alt="hoslogo" class="center">
	<h1 style="font-family:calibri light; text-align:center; text-decoration: underline red; " >MAIN PAGE</h1><!-- MAIN PAGE -->
	<hr>
	
	
	<!--PAT REC-->
	<form name="PATIENT_RECORD" action="patrec.php" method="Post" action="" >
	
	<h2 style="font-family:calibri; text-decoration: underline red;" > PATIENT RECORD</h2>
	<label style="font-family:calibri; font-size: 120%; font-weight: bold;"> Patient No: </label> <input type="text" name="PATIENT_NO" value="" placeholder="eg. PI0001" required></br>
	
	<!--<input type="submit" name="submit" value="Submit" ></br>-->
	<button class="button" type="submit" name="submit" value="Submit">Submit</button>
	</form>
	<br>
	<!--PAT ALL-->
	<form name="ALL_PATIENTS" action="displayall_pat.php" method="Post" action="" >	
	<button class="button" type="submit" name="submit" value="Submit">DISPLAY ALL PATIENTS</button>
	</form>
	
	
	<br>
	
	
	<form name="WARD_RECORD" action="wardrec.php" method="Post" action="" >
	
	<h2 style="font-family:calibri; text-decoration: underline red; " > WARD RECORD</h2>
	<label style="font-family:calibri; font-size: 120%; font-weight: bold;"> Ward Name: </label> <input type="text" name="WARD_NAME" value="" placeholder="eg. SURGERY WARD" required></br>
	<button class="button" type="submit" name="submit" value="Submit">Submit</button>
	
	</form>
	
	<br>	
		<!--WARD ALL-->
	<form name="ALL_WARDS" action="displayall_ward.php" method="Post" action="" >	
	<button class="button" type="submit" name="submit" value="Submit">DISPLAY ALL WARDS</button>
	</form>

	
	
	<form name="CONSULTANT_TEAM_RECORD" action="con_team_rec.php" method="Post" action="" >
	
	<h2 style="font-family:calibri; text-decoration: underline red;" > CONSULTANT TEAM RECORD</h2>
	<label style="font-family:calibri; font-size: 120%; font-weight: bold;"> Staff No: </label> <input type="text" name="STAFF_NO" value="" placeholder="eg. SNN004" required></br>
	<button class="button" type="submit" name="submit" value="Submit">Submit</button>
	
	</form>

	<br>
	
			<!--DOCTORS ALL-->
	<form name="ALL_DOC" action="displayall_doc.php" method="Post" action="" >	
	<button class="button" type="submit" name="submit" value="Submit">DISPLAY ALL DOCTORS</button>
	</form>
	
	<br>
	<hr>
		<form name="login" action="login1.php" method="Post" action="" >
	<input type="submit" name="submit" value="LOGOUT" ></br>
	</form>
	<h5 style="font-family:calibri; text-align:right " > POWERED BY : HAMZA,SHARIQ,ANEES,HASHAAM</h5>
</body>
</html>