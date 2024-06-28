<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    require_once("config.php");

    $conn = new mysqli($servername, $username, $password, $dbname);

    // die Verbindung "testen"
    if ($conn->connect_error) {
        die("Verbindung fehlgeschlagen: " . $conn->connect_error);
    }

    $datum = $_POST['datum'];
    $größe = $_POST['größe'];
    $gewicht = $_POST['gewicht'];

 
    $sql = "INSERT INTO nutzerapp (datum, größe, gewicht) VALUES (?, ?, ?)";


    if ($stmt = $conn->prepare($sql)) {
        // Binde die Parameter
        $stmt->bind_param("sdd", $datum, $größe, $gewicht); // 's' für String (Datum), 'd' für Double (Fließkommazahl)

   
        if ($stmt->execute()) {
            echo "Neuer Datensatz erfolgreich erstellt";
            header("location: index.php");
        } else {
            echo "Fehler: " . $stmt->error;
        }


        $stmt->close();
    } else {
        echo "Fehler bei der Vorbereitung des SQL-Statements: " . $conn->error;
    }

    // Datenbankverbindung geht weg
    $conn->close();
} else {
    echo "Ungültige Anforderung";
}
?>
