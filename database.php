<?php
$servername = "localhost";
$username = "root";
$password = "Password464!";
$dbname = "Crudnew_db";

// Create connection
$conn = mysqli_connect($servername, $username, $password, $dbname);
// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>