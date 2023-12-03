<?php
session_start();
include('connect.php');

$EMAIL = $_POST['EMAIL'];
$USERNAME  = $_POST['USERNAME'];
$UPASS = $_POST['UPASS'];
$UREPASS = $_POST['UREPASS'];




if (!empty($EMAIL) || !empty($USERNAME) || !empty($UPASS) || !empty($UREPASS) )
{

/*$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "logandregistertest";



// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
*/
if (mysqli_connect_error()){
  die('Connect Error ('. mysqli_connect_errno() .') '
    . mysqli_connect_error());
}
else{
  $SELECT = "SELECT EMAIL From userek Where EMAIL = ? Limit 1";
  $INSERT = "INSERT Into userek (EMAIL , USERNAME , UPASS , UREPASS )values(?,?,?,?)";

//Prepare statement
     $stmt = $conn->prepare($SELECT);
     $stmt->bind_param("s", $email);
     $stmt->execute();
     $stmt->bind_result($email);
     $stmt->store_result();
     $rnum = $stmt->num_rows;

     //checking username
      if ($rnum==0) {
      $stmt->close();
      $stmt = $conn->prepare($INSERT);
      $stmt->bind_param("ssss", $EMAIL,$USERNAME,$UPASS,$UREPASS);
      $stmt->execute();
      echo "New record inserted sucessfully";
     } else {
      echo "Someone already register using this email";
     }
     $stmt->close();
     $conn->close();
    }
} else {
 echo "All field are required";
 die();
}
?>