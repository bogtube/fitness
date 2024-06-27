<?php

// Linus sagt hier muss was hin
$servername = "";
$username = "";
$password = "";
$dbname = ""; 

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Verbindung fehlgeschlagen: " . $conn->connect_error);
}

$sql = "SELECT;";
// Linus braucht: Datum ("date"), alle Übungen ("uebungen") vom Tag und ID ("ID")

$result = $conn->query($sql);

// Überprüfen, ob die Abfrage Ergebnisse liefert
if ($result->num_rows > 0) {
      // Ausgabe der Daten jeder Zeile
    while ($row = $result->fetch_assoc()) {
        echo "<div id='"$row["ID"]"' onclick='changeDisplay()' style='background: rgba(255, 255, 255, 0.2); border-radius: 16px; box-shadow: 0 4px 30px rgba(10, 10, 10, 0.1); backdrop-filter: blur(5px); -webkit-backdrop-filter: blur(5px); border: 1px solid rgba(255, 255, 255, 0.3);'> "$row["date"]" </div>" 
        echo "<div id='"$row["ID"]"-uebung' onclick='changeDisplay()' style='display: None; background: rgba(255, 255, 255, 0.2); border-radius: 16px; box-shadow: 0 4px 30px rgba(10, 10, 10, 0.1); backdrop-filter: blur(5px); -webkit-backdrop-filter: blur(5px); border: 1px solid rgba(255, 255, 255, 0.3);'> "$row["uebungen"]" </div>"
        echo 'function changeDisplay() { var x = document.getElementById("info"); if (x.style.display === "block") { x.style.display = "none"; } else { x.style.display = "block"; }}'

} else {
    echo "<div style='width: 100%; background: rgba(255, 255, 255, 0.2); border-radius: 16px; box-shadow: 0 4px 30px rgba(10, 10, 10, 0.1); backdrop-filter: blur(5px); -webkit-backdrop-filter: blur(5px); border: 1px solid rgba(255, 255, 255, 0.3);'> 0 Ergebnisse </div>";
}

// Verbindung zur Datenbank schließen
$conn->close();
