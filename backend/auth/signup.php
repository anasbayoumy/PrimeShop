<?php
include_once "../connect.php";
include_once "../function.php";

$response = array();

// Fetch and sanitize input data
$username = filterRequest("username");
$password = sha1(filterRequest("password"));
$email = filterRequest("email");
$phone = filterRequest("phone");
$verifycode = rand(100000, 999999);

// Prepare and execute the SQL statement to check for existing user
$stmt = $con->prepare("SELECT * FROM `users` WHERE `users_email` = ? OR `users_phone` = ?");
$stmt->execute(array($email, $phone));
$count = $stmt->rowCount();

if ($count > 0) {
    // User already exists
    $response["status"] = "failed";
    $response["message"] = "User already exists";
} else {
    // User does not exist, proceed with insertion
    $data = array(
        "users_name" => $username,
        "users_email" => $email,
        "users_password" => $password,
        "users_phone" => $phone,
        "users_verifycode" => $verifycode
    );

    // Send verification email
   // $emailSent = sendMail($email, "PrimeShop SignUp Verification", "The OTP is: $verifycode\nPlease enter it in the app.");

    // if ($emailSent) {
    //     // Insert the new user into the database
    //     $insertCount = insertData("users", $data);
    //     if ($insertCount > 0) {
    //         $response["status"] = "success";
    //     } else {
    //         $response["status"] = "failed";
    //         $response["message"] = "Failed to insert user.";
    //     }
    // } else {
    //     $response["status"] = "failed";
    //     $response["message"] = "Failed to send verification email.";
    // }
}

// Output the response as JSON
header('Content-Type: application/json');
echo json_encode($response);
?>
