<?php

session_start();

include('connect.php');

$USERNAME=$_POST['USERNAME'];

$UPASS=$_POST['UPASS'];

$qry="SELECT * From userek Where USERNAME='$USERNAME' && UPASS='$UPASS' ";

$c=mysqli_query($con, $qry);

$result=mysqli_query($con,$qry);

$num = mysqli_num_rows($result);

if($num == 1)
{
 
$_SESSION['USERNAME'] = $USERNAME;
  
}
else
{
echo "<script>alert('Ivalid username or password')</script>"; 
}


?>