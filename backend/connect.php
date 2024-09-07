<?php
// include_once "function.php";

$dsn = "mysql:host=localhost;dbname=primeshop";
$user = "root"; // Remove any extra spaces
$pass = "";
// $dsn = "mysql:host=sql313.byethost4.com;dbname=b4_37205206_anas";
// $user = "b4_37205206"; // Remove any extra spaces
// $pass = "2132130000";
$option = array(
    PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"
);

$countrowinpage = 9;

try {
    $con = new PDO($dsn, $user, $pass, $option);
    $con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // CORS headers
    header("Access-Control-Allow-Origin: *");
    header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With, Access-Control-Allow-Origin");
    header("Access-Control-Allow-Methods: POST, OPTIONS , GET");
    
    if (!isset($notAuth)) {
        // checkAuthenticate(); // Commented out for now
    }
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
}
