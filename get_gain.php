<?php
$servername = "localhost"; 
$username = "root";
$password = "";
$dbname = "fitness";

// Verbindung zur Datenbank herstellen
$conn = new mysqli($servername, $username, $password, $dbname);

// Verbindung prüfen
if ($conn->connect_error) {
    die("Verbindung fehlgeschlagen: " . $conn->connect_error);
}

// SQL-Abfrage, um reps und gewicht aus der Tabelle sets abzurufen
$sql = "SELECT reps, gewicht FROM sets";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Ausgabe der Ergebnisse und Berechnung des Volumens
    while($row = $result->fetch_assoc()) {
        $reps = $row["reps"];
        $gewicht = $row["gewicht"];
        $volumen = $reps * $gewicht;
        echo "Reps: $reps - Gewicht: $gewicht - Volumen: $volumen<br>";
    }
} else {
    echo "Keine Ergebnisse gefunden.";
}

// Verbindung schließen
$conn->close();
?>
