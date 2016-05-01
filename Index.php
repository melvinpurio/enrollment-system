<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";
$user = @$_POST['username'];
$pass = @$_POST['password'];
$log=@$_POST['login'];

session_start();
if(isset($_SESSION['username']))
header("location: ../Enrollment/Login/Home.php");
$conn=mysqli_connect($servername,$username,$password,$dbname);
$query="SELECT * FROM account WHERE username='$user' AND password='$pass'";
$result=mysqli_query($conn,$query);
$row=mysqli_fetch_assoc($result); //MYSQLI_ASSOC for solohan select , solo lang ang makikitang data
$name=$row['username'];
$pass=$row['password'];

if(isset($log)){
	if(($user!="")||($pass!="")){

	if(mysqli_num_rows($result)==1){
		$_SESSION["username"]=$user;
		header("location: Login/Home.php");
	}

	else{
		echo "<div id='helpdiv'><p>You've enter incorrect username or password.<br>Please check and try again.</div>";
	}
	}
}

?>


<html>
	<head>

	
	<link rel="stylesheet" type="text/css" href="CSS/design.css">
	<title>
		Enrollment System
	
	</title>
		
	</head>
	
	<body>
	<form method="POST">
	<table align="center"> 
	<tr>
	<td  class="tda">	
	<img class="icon" src="Logo/SLSU.gif"> SLSU COE Enrollment System
 	</td>
	<tr>
	<td><hr></td>
	</tr>
	</tr>
		
		<tr>
			<td>
			<input class="itext" placeholder="Username" name="username" type="text" required>
			</td>
		</tr>
		<tr>
			 <td>
				 <input class="itext" placeholder="Password" name="password" type="password" required>
			</td>
		</tr>
		<tr>
			<td>
			<div class="adlog">
				<input class="input" name="login" type="submit" value="Login">				
			</div>
			</td>
		</tr>
	</table>
	</form>	
	</form>
	<script type="text/javascript">
		window.setTimeout("closeHelpDiv();",2000);
		function closeHelpDiv(){
			document.getElementById("helpdiv").style.display="none";
		}
	</script>
	</body>
</html>