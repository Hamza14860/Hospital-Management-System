<html>
<head>
<title>LOGIN</title>
<style>
body {  background-image: url("background7.jpg");}

.button {
  display: inline-block;
  padding: 5px 15px;
  font-size: 15px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: coral;
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
form { 
margin: 0 auto; 
width:400px;
border: 5px ;
border-color: coral;
padding: 50px ;
border-style: inset;
}

.center {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 15%;
}

</style>
</head>


<!--form-->

<body>

	<marquee  behavior="scroll" scrollamount="5" style="font-family:calibri; border:10px solid Tomato;border-style: inset; "><font color="red" size="16"> IVOR PAINE MEMORIAL HOSPITAL</marquee>
	 <img src="logo1.png" alt="hoslogo" class="center"> 
	<br>
	<h1 style=" text-align:center; text-decoration: underline red; " > LOGIN</h1><!-- MAIN PAGE -->
	
	
	


	<form name="LOGIN" action="login_check.php" method="Post" action="" >
	<label style="font-family:Calibri Light; font-size: 160%; font-weight: bold; text-align:middle;"> EMAIL: </label> <input type="text" name="email" value="" placeholder="xyz@gmail.com" required></br>
	<br>
	<label style="font-family:Calibri Light; font-size: 160%; font-weight: bold;text-align:center;"> PASSWORD: </label> <input type="password" name="pass" value="" required></br>
	
	<!--<input type="submit" name="submit" value="Submit" ></br>-->
	<button class="button" type="submit" name="submit" value="Submit">SIGN IN</button>
	</form>
	
	<br>
		<form name="SIGNUP" action="signup1.php" method="Post" action="" >
	<h2 style="font-family:calibri; text-decoration: underline red; " > SIGN UP TO MAKE AN ACCOUNT</h2>
	<!--<input type="submit" name="submit" value="Submit" ></br>-->
	<button class="button" type="submit" name="submit" value="Submit">SIGN UP PAGE</button>
	</form>
	<br>
	
	<br><br><br><br><br><br>
	<h5 style="font-family:calibri; text-align:right " > POWERED BY : HAMZA,SHARIQ,ANEES,HASHAAM</h5>
</body>
</html>