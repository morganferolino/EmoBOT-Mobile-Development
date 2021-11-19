<?php
   $db = mysqli_connect('localhost', 'root', '', 'webemobot');
   if(!$db) {
       echo "Database connection failed";
   }
   
   $username = $_POST['username'];
   $firstname = $_POST['firstName'];
   $lastname = $_POST['lastName'];
   
   $sql = "UPDATE emobot_person SET firstName = '".$firstname."' ,
                                    lastName = '".$lastname."' WHERE username = '".$username."'";
   $result = mysqli_query($db, $sql);
   if($result === true) {
        // Send back the complete records as a json.
        echo json_encode("Success");
   } else {
        echo json_decode("Error");
   }
 
?>