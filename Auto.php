<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";

$submit = @$_POST['button'];
session_start(); //to use any session that has ben set
	if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
	header("location: ../Index.php");
}	
$text = @$_POST['number'];
$_SESSION['Student_number_pdf']=$text;
$sem = @$_POST['semester'];
$_SESSION['semester_pdf']=$sem;
$conn=mysqli_connect($servername,$username,$password,$dbname);//connection
echo "<span>Assessment</span>";
if(isset($submit))//if button submit was press
{
	if ($text==null) {//if student number is null
		echo "<p>Please input valid value</p>";
	}
	else{//if student number is not null
		$sql="SELECT * FROM student_record WHERE Student_no='$text'";//select from table student_record where Student_no column is equal to student number input
		$result=$conn->query($sql);
		if(mysqli_num_rows($result)==0){//fetch the data of a row that is equal to student number the admin search
			echo "<p>No valid input</p>";
			}
		else{
			$row = $result->fetch_array();
			$year=$row["Year"];
			if($year =='1ST'||$year=='2ND')
			{
				$course='BE';
			}
			else{
			$course=$row["Course"];
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
		$sql1="SELECT * FROM course_curriculum WHERE course='$course' and Year='$year' and Sem='$sem'";//slect from table cource_curriculum where the student can can enroll
		$result1=$conn->query($sql1);
		$totalp='0';
		$totalu='0';

		echo "<p id='name'>".$fname." ".$mi.". ".$lname."</p>";
		echo "<div class='center'><table border='0' cellspacing='0' cellpading='0'><tr class='th'><th>Code</th><th>Subject Description</th><th>Units</th><th>Price</th></tr>";	
			while($row1=$result1->fetch_array()){//print data from table student_record where Student_no column is equal to student number input
		$result=$conn->query($sql);
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
		}
		$irreg=$text;
		$sql1="SELECT * FROM irreg where Student_no='$irreg'";
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
		while($row=mysqli_fetch_array($test))
		{
			$sub=$row['subject'];
			$semm=$row['Sem'];

		$pur=mysqli_query($conn,"SELECT * from course_curriculum where Subject_code='$sub' AND (Course='$course' || Course='$course1')");

		while($row1=mysqli_fetch_array($pur)){
				//print data from table student_record where Student_no column is equal to student number input
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
				echo "<form action='index.php' method='POST'><input type='submit'  value='Download As PDF file' name='convert' id='convert'></form>";
	}
	}
?>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../CSS/assessment.css">
</head>
<body>
	<form method="POST">
	<input type="text" placeholder="Student number" name="number"></input>
	<select name="semester">
		<option selected="selected" class="Semester">
			Semester
		</option>
		<option>
			1st
		</option>
		<option>
			2nd
		</option>
	</select>
	<input type="submit" placeholder="Submit" name="button"></input>
	<?php ?>
	</form>
</body>
</html>