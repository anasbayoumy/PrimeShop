<?php
$to = "anasbayoumy20@gmail.com";
$subject = "Test Email";
$message = "This is a test.";
$headers = "From: anasbayoumy14@gmail.com" ;
// Send the email
if(mail($to, $subject, $message, $headers)) {
    echo "Email sent successfully.";
} else {
    echo "Failed to send email.";
}
?>
