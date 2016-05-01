<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";
session_start();

$conn=mysqli_connect($servername,$username,$password,$dbname);

	if(isset($_POST['logout'])){//ig log-out button is press, session will be destroy
			session_unset();
			session_destroy();
			header('Location: ../Index.php');


		}		
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}		
	if(isset($_POST['search']))//if the button search is press, the data will be used in Search.php to search
	{

		$word = @$_POST['word'];
		echo "<Script> alert('".$word."'); </script>";
		$_SESSION["word"]=$word;
		header("location: Search.php");

	}
?>
<html>
<head>
	<title>Enrollment System</title>
	<link rel="stylesheet" type="text/css" href="../CSS/background.css">	
	<link rel="stylesheet" type="text/css" href="../CSS/login.css">
</head>

<body>

<table id="banner">
<tr>
<form method="POST" target="main">
<td><img src="../Logo/SLSU.gif"></td>
<td><top>Enrollment System</top></td>
<td><input type="text" placeholder="Search" name="word"></td>
<td><input type="image" src="../Logo/search.png" value="submit" id="search" name="search" target="main"></td>
<td><img src="../Logo/tr.png" id="user"><?php echo "<p id='username'>",$_SESSION["username"],"</p>"; ?></td>
<td><admin></admin></td>
</form>
<form method="POST">
<td><input type="image" src="../Logo/Exit.png" name="logout" value="submit"></td>
</form>
</tr>
<form method="POST" target="main">
</table>
<table id="left" >
<tr><td id="td"><a href="Main.php" target="main">Home</a></td></tr>
<tr><td id="td"><a href="History.php" target="main">History</a></td></tr>
<tr><td id="td"><a href="Assessment.php" target="main">Assessment</a></td></tr>
<tr><td id="td"><a href="Sign-up.php" target="main">Registration</a></td></tr>
<tr><td id="td"><a href="Record.php" target="main">Student Record</a></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
<tr><td></td></tr>
</table>
</form>
<iframe src="Main.php"  name="main" id="main">
</iframe>
<iframe src="SideHistory.php" name="side" id="side">
</iframe>
</body>
</html>