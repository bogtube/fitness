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
            <div class="obj">
                <p>Benchpress</p>
                <p>8. Mai</p>
            </div>
            <div class="obj">
                <p>Benchpress</p>
                <p>8. Mai</p>
            </div>
            <div class="obj">
                <p>Benchpress</p>
                <p>8. Mai</p>
            </div>
            <div class="obj add">
                <p>+</p>
            </div>
        </section>

        <h1>Hier sollte hello world stehen</h1>
        <!--<ul id="dynamicList"></ul>-->

        <script src="list.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
        <script src="change_display.js"></script>
        <script src="get_rest.js"></script>
        <script src="get_gain.js"></script>
    </body>
</html>
