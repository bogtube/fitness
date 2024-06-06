<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "test_db";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// SQL query to fetch data including the date field
$sql = "SELECT id, name, date FROM your_table_name";
$result = $conn->query($sql);

$data = [];
if ($result->num_rows > 0) {
    // Fetch all
    $data = $result->fetch_all(MYSQLI_ASSOC);
} else {
    echo "0 results";
}
$conn->close();

// Convert to JSON
echo json_encode($data);

?>
