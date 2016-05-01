<?php  
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "enrollment_system";

$conn=mysqli_connect($servername,$username,$password,$dbname);
session_start(); //to use any session that has ben set
    if(!isset($_SESSION["username"]))//if no session, the user will be directed to index.php
{
    header("location: ../Index.php");
}   
$date=date("Y-m-d");
$count=0;
$sql="SELECT * from history where Date_act='$date' ORDER by Time_act DESC";
$fetch=mysqli_query($conn,$sql);
$check=mysqli_num_rows($fetch);
echo "<table border='0' cellspacing='0' cellpading='0'>";
echo "<tr><th>S.No.</th><th>Activity</th><th>Date</th><th>Time</th>";
    while($row=mysqli_fetch_array($fetch)){
        $count=$count+1;
                if($count%2==0){
                    $time=$row['Time_act'];
                    echo "<tr id='even'>";
                    echo "<td>".$row['Student_no']."</td>";
                    echo "<td>".$row['activity']."</td>";
                    echo "<td>".$row['Date_act']."</td>";
                    echo "<td>".substr($time, 0,5)."</td>";
                    echo "</tr>";
                    }
                else
                    {
                    $time=$row['Time_act'];
                    echo "<tr>";
                    echo "<td>".$row['Student_no']."</td>";
                    echo "<td>".$row['activity']."</td>";
                    echo "<td>".$row['Date_act']."</td>";
                    echo "<td>".substr($time, 0,5)."</td>";
                    echo "</tr>"; 
                    }
                }
?>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../CSS/side.css">
    <meta http-equiv="refresh" content="3">
</head>
<body>
</body>
</html>