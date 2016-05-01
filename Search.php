<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";
date_default_timezone_set('Asia/Manila');//to get the time zone in ASIA/MANILA
session_start(); //to use any session that has ben set
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
$conn=mysqli_connect($servername,$username,$password,$dbname);
		$choose = strtolower($_SESSION["word"]); // to make the word being search into lower case		
			$result = $conn -> query("SELECT * from student_record");	
			$rows = $result->fetch_all(MYSQLI_ASSOC);
			$temp=0;
			$count=0;
			if(isset($_POST['update']))
			{
		$Fname=@ucfirst(strtolower($_POST['Fname']));
		$Mname=@ucfirst(strtolower($_POST['Mname']));
		$Lname=@ucfirst(strtolower($_POST['Lname']));
		$sex=@strtoupper($_POST['sex']);
		$course=@strtoupper($_POST['course']);
		$year=@strtoupper($_POST['year']);
		$section=@strtoupper($_POST['section']);
		$bracket=@strtoupper($_POST['bracket']);
		$snumber=@$_POST['snumber'];
		$date= date("Y-m-d H:i:s");
		$sql="UPDATE student_record set Student_no='$snumber',First_name='$Fname',Middle_initial='$Mname',Last_name='$Lname',Course='$course',Year='$year',Section='$section',Bracket='$bracket' where Student_no='$snumber'" ;
			$result = $conn -> query($sql);
			$history="INSERT into history VALUES ('','$snumber','UPDATE','$date','$date')";
				mysqli_query($conn,$history);
			header("location: Search.php");
			}
			if(isset($_POST['delete']))
			{
				$date= date("Y-m-d H:i:s");
				$snumber=@$_POST['snumber'];
				$sql="DELETE from student_record where Student_no='$snumber'";
				$result = $conn -> query($sql);
				$history="INSERT into history VALUES ('','$snumber','DELETE','$date','$date')";
				mysqli_query($conn,$history);
				header("location: Main.php");

			}
			foreach($rows as $row){
				if(strtolower($row['First_name'])==$choose||
					strtolower($row['Middle_initial'])==$choose||strtolower($row['Last_name'])==$choose||
					strtolower($row['Sex'])==$choose||strtolower($row['Course'])==$choose||strtolower($row['Year'])==$choose||
					strtolower($row['Section'])==$choose||strtolower($row['Bracket'])==$choose){
					$temp=1;
				}
				else if(strtolower($row['Student_no'])==$choose){
					$temp=2;
					break;
				}

			}

			if($temp==1)
			{
			echo "<table border='0' cellspacing='0' cellpading='0'><tr class='th'><th>StudentNo</th><th>FirstName</th><th>M.I</th><th>LastName</th><th>Sex</th><th>Course</th><th>Year</th><th>Section</th><th id='right'>Bracket</th></tr>";		
			echo "<span id='message'>The result for ".$choose."</span>";
			foreach($rows as $row){
				if(strtolower($row['Student_no'])==$choose||strtolower($row['First_name'])==$choose||
					strtolower($row['Middle_initial'])==$choose||strtolower($row['Last_name'])==$choose||
					strtolower($row['Sex'])==$choose||strtolower($row['Course'])==$choose||strtolower($row['Year'])==$choose||
					strtolower($row['Section'])==$choose||strtolower($row['Bracket'])==$choose)
				{
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
		}
	}
		else if($temp==2)
		{
			echo "<form method='POST'>";
			echo "<table border='0' cellspacing='0' cellpading='0'><tr class='th'><th>StudentNo</th><th>FirstName</th><th>M.I</th><th>LastName</th><th>Sex</th><th>Course</th><th>Year</th><th>Section</th><th id='right'>Bracket</th></tr>";		
			echo "<span id='message'>The result for ".$choose."</span>";
			echo "<tr><td ><input type='text' name='snumber' value='" .$row['Student_no']."' readonly id='large'></td>";
			echo "<td><input type='text' name='Fname' value='".$row['First_name']."' id='large'></td>";
			echo "<td><input type='text' name='Mname' value='" .$row['Middle_initial']."' id='xs'></td>";

			echo "<td><input type='text' name='Lname' value='" .$row['Last_name']."' id='large'></td>";
			echo "<td><input type='text' name='sex' value='".$row['Sex']."' id='medium'></td>";
			echo "<td><input type='text' name='course' value='" .$row['Course']."' id='medium'></td>";

			echo "<td><input type='text' name='year' value='" .$row['Year']."' id='small'></td>";
			echo "<td><input type='text' name='section' value='".$row['Section']."' id='small'></td>";
			echo "<td id='right'><input type='text' name='bracket' value='" .$row['Bracket']."' id='small'></td>","<tr>";
			echo "</table>";
			echo "<input type='submit' name='delete' value='delete' id='submit'>";
			echo "<input type='submit' name='update' value='update' id='submit1'>";
			echo "</form>";
		}
		else
		{
			echo "<span id='message'>No result found</span>";
		}

?>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="..\CSS\search.css">
</head>
<body>
	
</body>
</html>