<html>
<head>
	<link rel="stylesheet" type="text/css" href="../CSS/Manual.css">
</head>
<body>
<form method="POST">
<input type="text" placeholder="Student number" name="number"><input type="submit" value="submit" name="submit">
</form>

</body>
</html>
<?php 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";
$conn=mysqli_connect($servername,$username,$password,$dbname);
$submit = @$_POST['submit'];
$text = @$_POST['number'];
session_start(); //to use any session that has ben set
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
	if(isset($submit)){

		$_SESSION['student_irreg']=$text;
		echo "<form method='POST'>";
		echo "<input type='text' name='sub_code' placeholder='Subject Code'>";
		echo "<select name='sem'>";
		echo "<option>1ST</option>";
		echo "<option>2ND</option>";
		echo "<input type='submit' name='pass' value='submit'>";
		echo "<form>";

	}
	if(isset($_POST['pass']))
	{	

		$semester=$_POST['sem'];
		$sub_code=$_POST['sub_code'];
		$irreg=$_SESSION['student_irreg'];
		$sql="INSERT INTO irreg values('$irreg','$sub_code','$semester')";
		mysqli_query($conn,$sql);
		echo "<form method='POST'>";
		echo "<input type='text' name='sub_code' placeholder='Subject Code'>";
		echo "<select name='sem'>";
		echo "<option>1ST</option>";
		echo "<option>2ND</option>";
		echo "<input type='submit' name='pass' value='submit'>";
		echo "</form>";
		$sql1="SELECT * FROM irreg where Student_no='$irreg'";
		echo "<table>";
		$totalu=0;
		$totalp=0;
		$sql="SELECT * FROM student_record WHERE Student_no='$irreg'";//select from table student_record where Student_no column is equal to student number input
		$result=$conn->query($sql);
		if(mysqli_num_rows($result)==0){//fetch the data of a row that is equal to student number the admin search
			echo "<p>No valid input</p>";
			}
		else{
			$row = $result->fetch_array();
			$year=$row["Year"];
			if($year =='1ST'||$year=='2ND')
			{
				$course="BE";
				$course1=$row["Course"];
			}
			else{
			$course=$row["Course"];
			$course1=$row["Course"];
			}
			$scheme=$row["Bracket"];
			$fname=$row["First_name"];
			$mi=$row["Middle_initial"];
			$lname=$row["Last_name"];

			$count=0;
				if($scheme=='A'){//if bracket A
					$scheme='100';
					}
				else if($scheme=='B'){//if bracket B
					$scheme='175';
					}
				else{//if bracket C
				$scheme='250';
				}
		$test=mysqli_query($conn,$sql1);
		echo "<table border='0' cellspacing='0' cellpading='0'><tr><th>CODE</th><th>SUBJECT DESCRIPTION</th><th>UNIT</th><Th>Price</th></tr>";
		while($row=mysqli_fetch_array($test))
		{
			$sub=$row['subject'];

		$pur=mysqli_query($conn,"SELECT * from course_curriculum where Subject_code='$sub' AND (Course='$course1' || Course='$course')");
		while($row1=mysqli_fetch_array($pur)){//print data from table student_record where Student_no column is equal to student number input
				$count=$count+1;
				if ($count%2==0){
					$price=$scheme*$row1["Units"];
					echo "<tr id='even'>";
					echo "<td>".$row1["Subject_code"]."</td>";
					echo "<td>".$row1["Subject_description"]."</td>";
					echo "<td>".$row1["Units"]."</td>";
					echo "<td id='right'>".$price."</td></tr>";
					$totalp=$totalp+$price;
					$totalu=$totalu+$row1["Units"];
					}	
				else{
					$price=$scheme*$row1["Units"];
					echo "<tr>";
					echo "<td>".$row1["Subject_code"]."</td>";
					echo "<td>".$row1["Subject_description"]."</td>";
					echo "<td>".$row1["Units"]."</td>";
					echo "<td id='right'>".$price."</td></tr>";
					$totalp=$totalp+$price;
					$totalu=$totalu+$row1["Units"];
					}
				}
				
			}
			echo "<tr id='color'><td>Total:<td><td>".$totalu."<td>".$totalp."</tr></table></div>";
	}
}
 ?>
