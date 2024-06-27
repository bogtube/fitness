<!doctype html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="style.css" />
        <title>fitness</title>
    </head>
    <body>

        <header>
            <div id="rest" onclick="changeDisplay()"></div>
            <div id="info" onclick="changeDisplay()">
                <div id="gain"></div>
            </div>
        </header>

        <section>
            <? include "list.php"; ?>
            <script src="fetch_workout.js"></script>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="change_display.js"></script>
        <script src="fetch_gain.js"></script>
        <script src="fetch_rest.js"></script>
    </body>
</html>
