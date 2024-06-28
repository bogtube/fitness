let restChart;

// Daten für das Diagramm abrufen und Diagramm/Tabelle aktualisieren
function fetchrestData() {
  fetch("get_rest.php")
    .then((response) => response.json())
    .then((data) => {
      console.log("Fetched data:", data); // Debugging
      const splits = data.map((item) => item.Split);
      const rest = data.map((item) => parseFloat(item.Rest));

      const restOptions = {
        series: [
          {
            name: "Rest",
            data: rest,
          },
        ],
        chart: {
          type: "bar",
          height: 350,
        },
        plotOptions: {
          bar: {
            horizontal: true,
          },
        },
        dataLabels: {
          enabled: false,
        },
        xaxis: {
          title: {
            text: "Gewinnrate (%)",
          },
          categories: splits,
        },
        yaxis: {
          title: {
            text: "Personen",
          },
        },
        tooltip: {
          y: {
            formatter: function (val) {
              return val.toFixed(2) + "%";
            },
          },
        },
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
  fetchrestData();
});
