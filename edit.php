<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";
$text = @$_POST['number'];
$submit = @$_POST['button'];
session_start(); //to use any session that has ben set
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
$conn=mysqli_connect($servername,$username,$password,$dbname);
if(isset($submit)){
	$sql="SELECT * FROM student_record WHERE Student_no='$text'";
	$result=$conn->query($sql);
	$row = $result->fetch_array();
	$year=$row["Year"];
	$course=$row["Course"];
	echo "<table>";
	echo "<tr><td><input type='text' value='".$text."'></td><td><input type='text' value='".$course."'></tr>";
	echo "</table>";
}

?>
<html>
<head>
	
</head>
<body>
	<form method="POST">
	<input type="text" placeholder="Student number" name="number"></input>
	<input type="submit" value="Submit" name="button"></input>
	</form>
</body>
</html>