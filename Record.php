<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";
session_start(); //to use any session that has ben set
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
$conn=mysqli_connect($servername,$username,$password,$dbname);
	$count=0;
	$sql="SELECT * FROM student_record";
	$result=$conn->query($sql);
	echo "<span>Student Record</span>";
	echo "<table border='0' cellspacing='0' cellpading='0'><tr class='th'><th>StudentNo</th><th>FirstName</th><th>M.I</th><th>LastName</th><th>Sex</th><th>Course</th><th>Year</th><th>Section</th><th id='right'>Bracket</th></tr>";
	while($row=$result->fetch_array()){
		$count=$count+1;
			if($count%2==0){
			echo "<tr id='even'><td>" .$row['Student_no']."</td>";
			echo "<td>".$row['First_name']."</td>";
			echo "<td>" .$row['Middle_initial']."</td>";

			echo "<td>" .$row['Last_name']."</td>";
			echo "<td>".$row['Sex']."</td>";
			echo "<td>" .$row['Course']."</td>";

			echo "<td>" .$row['Year']."</td>";
			echo "<td>".$row['Section']."</td>";
			echo "<td id='right'>" .$row['Bracket']."</td>","<tr>";				
			}
			else{
			echo "<tr><td>" .$row['Student_no']."</td>";
			echo "<td>".$row['First_name']."</td>";
			echo "<td>" .$row['Middle_initial']."</td>";

			echo "<td>" .$row['Last_name']."</td>";
			echo "<td>".$row['Sex']."</td>";
			echo "<td>" .$row['Course']."</td>";

			echo "<td>" .$row['Year']."</td>";
			echo "<td>".$row['Section']."</td>";
			echo "<td id='right'>" .$row['Bracket']."</td>","<tr>";
				}

		}	
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="../CSS/record.css">
</head>
<body>

</body>
</html>