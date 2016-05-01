<?PHP
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
	date_default_timezone_set("Asia/Manila");
	$number=$_SESSION['Student_number_pdf'];
	$sem=$_SESSION['semester_pdf'];

	$date= date("h:i:sa");
	
	$sql="SELECT * FROM student_record WHERE Student_no='$number'";//select from table student_record where Student_no column is equal to student number input
		$result=$conn->query($sql);
		if(mysqli_num_rows($result)==0){//fetch the data of a row that is equal to student number the admin search
			echo "<p>No valid input</p>";
			}
		else{
			$row = $result->fetch_array();
			$year=$row["Year"];
			$course=$row["Course"];
			$scheme=$row["Bracket"];
			$fname=$row["First_name"];
			$mi=$row["Middle_initial"];
			$lname=$row["Last_name"];
			if($year =='1ST'||$year=='2ND')
			{
				$course='BE';
			}
			else{
			$course=$row["Course"];
			}

				if($scheme=='A'){//if bracket A
					$scheme='100';
					}
				else if($scheme=='B'){//if bracket B
					$scheme='175';
					}
				else{//if bracket C
				$scheme='250';
				}
			}


	require("fpdf/fpdf.php");
	$pdf=new FPDF();
	
	
	$pdf->AddPage();
	$pdf->SetTitle('RFG');
	
	$pdf->SetFont('Arial','','8');
	$pdf->Cell(17,10,'Student ID:',1,0);
	$pdf->Cell(143,10,$number,1,0);
	$pdf->Cell(30,10,$date,1,1,'R');
	
	$pdf->SetFont('Arial','',14);	
	$pdf->Cell(0,7,'Southern Luzon State University',1,1,'C');
	$pdf->SetFont('Arial','B',14);
	$pdf->Cell(0,7,'College of Engineering',1,1,'C');
	$pdf->SetFont('Arial','',14);
	$pdf->Cell(0,7,'Lucban, Quezon',1,1,'C');
	$pdf->Ln(5);
	$pdf->SetFont('Arial','IB',14);
	$pdf->Cell(0,5,'ASSESSMENT FORM',1,1,'C');
	$pdf->Ln(5);
	
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(15,10,'Name: ',1,0,'L');
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(80,10,$fname,1,0,'L');
	$pdf->Cell(30,10,$mi,1,0,'L');
	$pdf->Cell(65,10,$lname,1,1,'L');
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(30,10,'Course/Year: ',1,0,'L');
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(30,10,$course,1,0,'L');
	$pdf->Cell(130,10,$year,1,0,'L');
	$pdf->Ln(10);
	
	//table
	$pdf->SetFont('Arial','B',12);
	$pdf->Cell(25,5,'CODE',1,0,'C');
	$pdf->Cell(105,5,'SUBJECT DESCRIPTION',1,0,'C');
	$pdf->Cell(30,5,'UNITS',1,0,'C');
	$pdf->Cell(30,5,'PRICE',1,1,'C');
	$sql1="SELECT * FROM course_curriculum WHERE course='$course' and Year='$year' and Sem='$sem'";
	$result1=$conn->query($sql1);
	$total=0;
	$total_units=0;
	while($row1=$result1->fetch_array())
	{
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(25,5,$row1['Subject_code'],1,0,'C');
	$pdf->Cell(105,5,$row1['Subject_description'],1,0,'C');
	$pdf->Cell(30,5,$row1['Units'],1,0,'C');
	$pdf->Cell(30,5,$row1['Units']*$scheme,1,1,'C');
	$total_units+=$row1['Units'];
	}
	$irreg=$number;
		$sql1="SELECT * FROM irreg where Student_no='$irreg'";
		$test=mysqli_query($conn,$sql1);
		while($row=mysqli_fetch_array($test))
		{
			$sub=$row['subject'];

		$pur=mysqli_query($conn,"SELECT * from course_curriculum where Subject_code='$sub' AND Course='$course'");
		while($row1=mysqli_fetch_array($pur)){//print data from table student_record where Student_no column is equal to student number input
				
						$price=$scheme*$row1["Units"];
						$pdf->SetFont('Arial','',12);
	$pdf->Cell(25,5,$row1['Subject_code'],1,0,'C');
	$pdf->Cell(105,5,$row1['Subject_description'],1,0,'C');
	$pdf->Cell(30,5,$row1['Units'],1,0,'C');
	$pdf->Cell(30,5,$row1['Units']*$scheme,1,1,'C');
	$total_units+=$row1['Units'];
					$total=$total+$price;
					$total_units=$total_units+$row1["Units"];
					}
				}


	$total=$total_units*$scheme;
	$pdf->Cell(25,5,'TOTAL',1,0,'L');
	$pdf->Cell(105,5,'',1,0,'C');
	$pdf->Cell(30,5,$total_units,1,0,'C');
	$pdf->Cell(30,5,$total,1,1,'C');
	
	$pdf->Cell(25,5,'',1,0,'C');
	$pdf->Cell(105,5,'',1,0,'C');
	$pdf->Cell(30,5,'',1,0,'C');
	$pdf->Cell(30,5,'',1,1,'C');
	
	$pdf->Cell(25,5,'',1,0,'C');
	$pdf->Cell(105,5,'',1,0,'C');
	$pdf->Cell(30,5,'',1,0,'C');
	$pdf->Cell(30,5,'',1,1,'C');
	
	$pdf->Output();
?>