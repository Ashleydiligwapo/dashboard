<?php
$hostname = 'localhost';
$username = 'paws';
$password = 'paws';
$database = 'salesdb';

try {

    $db = new PDO("mysql:host=$hostname;dbname=$database", $username, $password);


    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

  
} catch (PDOException $e) {
   
}
?>
