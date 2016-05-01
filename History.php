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
$count=0;
$count1=0;
$limit=10;

echo "<span>History</span>";
echo "<form method='POST'>";
echo "<input type='text' name='search' placeholder='Year-month-day' id='search'>";
echo "<input type='submit' value='search' name='history' id='button'>";
echo "</form>";
echo "<table border='0' cellspacing='0' cellpading='0'>";

if(isset($_POST['history']))
{
    $next = @$_POST['next'];
    $search = @$_POST['search'];
    $sql="SELECT * from history where Date_act='$search' ORDER by Date_act DESC";
    $fetch=mysqli_query($conn,$sql);
    $check=mysqli_num_rows($fetch);
    if($check>0)
    {

echo "<tr><th>Student_no</th><th>Activity</th><th>Date</th><th>Time</th>";
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
            }
     else
    {
    echo "<script> alert('no result'); </script>";
    goto BB;
    } 
    }  
else
{
BB:
echo "<tr><th>Student_no</th><th>Activity</th><th>Date</th><th>Time</th>";
$next = @$_POST['next'];
$previous = @$_POST['previous'];
$search=@$_POST['search'];
$sql="SELECT * from history ORDER  BY Date_act DESC";
$fetch=mysqli_query($conn,$sql);


    while($row=mysqli_fetch_array($fetch))
    {
    if(isset($next)){
        $limit=$limit+5;
    }
        $count=$count+1;
        $count1=$count1+1;

        
        if($count1>$limit){
            break;

        }            
        else{
            if($count%2==0){
            $time=$row['Time_act'];
            echo "<tr id='even'>";
            echo "<td>".$row['Student_no']."</td>";
            echo "<td>".$row['activity']."</td>";
            echo "<td>".$row['Date_act']."</td>";
            echo "<td>".substr($time, 0,5)."</td>";
            echo "</tr>";
            }
            else{
            $time=$row['Time_act'];
            echo "<tr>";
            echo "<td>".$row['Student_no']."</td>";
            echo "<td>".$row['activity']."</td>";
            echo "<td>".$row['Date_act']."</td>";
            echo "<td>".substr($time, 0,5)."</td>";
            echo "</tr>";
            }
        }
    }
    echo "</table>";
    echo "<form method='POST'><button name='next'  id='button1'>
        Load More...
    </button> </form>";
}


?>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="../CSS/history.css">
    </head>
<body>
<form method="POST">

</form>
</body>
</html>