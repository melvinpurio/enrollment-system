<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";



date_default_timezone_set('Asia/Manila');
session_start();
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
$connect=mysqli_connect($servername,$username,$password,$dbname);
if(isset($_POST['register'])){
	$fname = ucfirst(strtolower(@$_POST['fname']));
$lname = ucfirst(strtolower(@$_POST['lname']));
$mi = ucfirst(strtolower(@$_POST['mi']));
$course = strtoupper(@$_POST['course']);
$year = strtoupper(@$_POST['year']);
$section = strtoupper(@$_POST['section']);
$scheme = strtoupper(@$_POST['scheme']);
$gender = strtoupper(@$_POST['gender']);
		if($course!="COURSE"&&$year!="YEAR"&&$section!="SECTION"&&$scheme!="SCHEME"&&$gender!="GENDER")
		{
		$date= date("Y-m-d H:i:s");
		$search="INSERT INTO student_record VALUES ('','$fname','$mi','$lname','$gender','$course','$year','$section','$scheme') ";
		$result=mysqli_query($connect,$search);
		$search1="SELECT * from student_record where First_name='$fname' and Middle_initial='$mi' and Last_name='$lname'";
		$result1=mysqli_query($connect,$search1);
		$row=mysqli_fetch_array($result1);
		$numberS=$row['Student_no'];
		$history="INSERT into history VALUES ('','$numberS','REGISTER','$date','$date')";
		mysqli_query($connect,$history);
		echo "<script> alert('Successfully registered'); </script>";
		}
		else
		{
			echo "<script> alert('Some data are empty')</script>";
		}
	}

?>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="..\CSS\Sign.css">
	<title>Sign-Up</title>
</head>
<body>
<div class="testbox">
 <table>
 	<form method="POST">
 	<tr>
 	<td class="Top">Registration</td>
 	<tr>
 	<td><hr></td>
 	<tr>
 	
 	<td><input type="text"  id="topname" required placeholder="First name" name="fname"><input type="text" placeholder="M.I." id="MI" name="mi"><input type="text" required placeholder="Last name" name="lname"  id="topname"></td>

 	<tr>
 	<td>
 	<select id="size" name="course">
 		<option selected="selected" class="Course">Course</option>
 		<option>	
 			BSCpE
 		</option>
 		<option>
 			BSEE
 		</option>
 		<option>
 			BSIE
 		</option>
 		<option>
 			BSECE
 		</option>
 		<option>
 			BSCE
 		</option>
 		<option>
 			BSME
 		</option>
 	</select><select name="year">
 	<option selected="selected" class="Course">Year</option>
 		<option>
 			1st
 		</option>
 		<option>
 			2nd
 		</option>
 		<option>
 			3rd
 		</option>
 		<option>
 			4th
 		</option>
 		<option>
 			5th
 		</option>
 	</select><select name="section">
 	<option selected="selected" class="Course">Section</option>
 		<option>
 			GA
 		</option>
 		<option>
 			GB
 		</option>
 		<option>
 			GC
 		</option>
 		<option>
 			GD
 		</option>
 		<option>
 			GE
 		</option>
 		<option>
 			GF
 		</option>
 		<option>
 			GG
 		</option>
 		<option>
 			GH
 		</option>
 		<option>
 			GI
 		</option>
 		<option>
 			GJ
 		</option>
 		<option>
 			GK
 		</option>
 		<option>
 			GL
 		</option>
 		<option>
 			GM
 		</option>
 		<option>
 			GN
 		</option>
 		<option>
 			GO
 		</option>

 	</select>
 	</td>
 	<tr>
 	<td><select id="size1" name="scheme">
 		<option selected="selected" class="Course">
 			Scheme
 		</option>
 		<option>
 			A
 		</option>
 		<option>
 			B
 		</option>
 		<option>
 			C
 		</option>
 	</select><select id="size1" name="gender">
 		<option selected="selected" class="Course">
 			Gender
 		</option>
 		<option>
 			Male
 		</option>
 		<option>
 			Female
 		</option>
 		
 	</select></td>
 	<tr>
 	<tr>
 	<td><p>By clicking Register, you<br> agree on our<a href="#"> terms and<br>condition.</a></p>
<a href="C:\Users\Jamilano\Documents\pearl\Project.html"><input type="submit" id="button" value="Register" name="register"></a></td>
	</form>
 </table>
 </div>
</body>
</html>