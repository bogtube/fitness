<?php
session_start();
if(isset($_SESSION["user_id"])){
   // header("location: nutzer_app_data.php");
}
?>

<!DOCTYPE html>
<html lang="de">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrierung</title>
    <!-- weil ich keine Lust hatte eine neue Datei zu erstellen  -->
    <style>
        body {
            font-family: Verdana, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .anmelde-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 90%;
            max-width: 400px;
            box-sizing: border-box;
        }
        .anmelde-container h2 {
            margin-bottom: 20px;
            text-align: center;
            font-size: 1.5em;
        }
        .anmelde-container label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            font-size: 1em;
        }
        .anmelde-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1em;
        }
        .anmelde-container button {
            width: 100%;
            background-color: #f39f18;
            color: #fff;
            border: none;
            padding: 10px;
            cursor: pointer;
            border-radius: 4px;
            font-size: 1em;
        }
        .anmelde-container button:hover {
            background-color: #ec7c26;
        }
    </style>
</head>
<body>
    <div class="anmelde-container">
        <h2>Registrierung</h2>
        <form action="insert_user.php" method="post">
            <label for="email">E-Mail:</label>
            <input type="email" id="email" name="email" required>

            <label for="vorname">Vorname:</label>
            <input type="text" id="vorname" name="vorname" required>

            <label for="nachname">Nachname:</label>
            <input type="text" id="nachname" name="nachname" required>

            <label for="geburtstag">Geburtsdatum:</label>
            <input type="date" id="geburtstag" name="geburtstag" required>

            <label for="password">Passwort:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Registrieren</button>
        </form>
    </div>
</body>
</html>

