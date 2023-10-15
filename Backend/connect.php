<?php
$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "logandregistertest";



// Create connection
$conn = new mysqli ($host, $dbusername, $dbpassword, $dbname);
mysqli_select_db($conn, $dbname);

?>