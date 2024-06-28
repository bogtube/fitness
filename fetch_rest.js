let restChart;

// Daten für das Diagramm abrufen und Diagramm/Tabelle aktualisieren
function fetchRestData() {
  fetch("get_rest.php")
    .then((response) => response.json())
    .then((data) => {
      console.log("Fetched data:", data); // Debugging
      const splits = data.map((item) => item.Split);
      const rest = data.map((item) => parseInt(item.Rest, 10));

      var restOptions = {
        series: rest,
        chart: {
          height: 390,
          type: "radialBar",
        },
        plotOptions: {
          radialBar: {
            offsetY: 0,
            startAngle: 0,
            endAngle: 270,
            hollow: {
              margin: 5,
              size: "30%",
              background: "transparent",
              image: undefined,
            },
            dataLabels: {
              name: {
                show: false,
              },
              value: {
                show: false,
              },
            },
            barLabels: {
              enabled: true,
              useSeriesColors: true,
              margin: 8,
              fontSize: "16px",
              formatter: function (seriesName, opts) {
                return (
                  seriesName + ": " + opts.w.globals.series[opts.seriesIndex]
                );
              },
            },
          },
        },
        colors: ["#f39f1857", "#f39f1896", "#f39f18b8", "#f39f18"],
        labels: splits,
        responsive: [
          {
            breakpoint: 480,
            options: {
              legend: {
                show: false,
              },
            },
          },
        ],
      };

      if (restChart) {
        restChart.updateOptions(restOptions);
      } else {
        restChart = new ApexCharts(
          document.querySelector("#win-percentage-chart"),
          restOptions,
        );
        restChart.render();
      }
    })
    .catch((error) => console.error("Error fetching data:", error));
}

// Initiale Daten laden
document.addEventListener("DOMContentLoaded", () => {
  console.log("Document loaded. Fetching data...");
  fetchRestData();
});
