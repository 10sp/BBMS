<?php

echo "om namah Shivaya<br><br><br><br>";
$servername = "localhost";
$username = "root";
$password = "hey";
$mydbname="bbms";

// Create connection
$conn = new mysqli($servername, $username, $password,$mydbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql="select * from donor;";
?>

<form action="index.php" method="post">
<textarea name="comment" rows="5" cols="40"></textarea><br>
<input type="submit">
</form>



<?php
$sql=$_POST["comment"];
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_array()) {
        echo "id: " . $row[0]. " -   Name: " . $row[1]. " Address:  " . $row[2]. "<br>";
    }
} else {
    echo "0 results";
}

?> 