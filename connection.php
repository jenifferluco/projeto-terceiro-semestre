<?php 

$servername = "fdb22.awardspace.net";
$database = "3859119_projetoterceirosemestre";
$username = "3859119_projetoterceirosemestre";
$password = "tosemsenha123";

$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}

?>