let gainChart;

// Daten für das Diagramm abrufen und Diagramm/Tabelle aktualisieren
function fetchgainData() {
  fetch("get_gain.php")
    .then((response) => response.json())
    .then((data) => {
      console.log("Fetched data:", data); // Debugging
      const splits = data.map((item) => item.Splits);
      const volume = data.map((item) => parseFloat(item.Volume));

      const gainOptions = {
        series: [
          {
            name: "Volumen",
            data: volume,
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

      if (gainChart) {
        gainChart.updateOptions(gainOptions);
      } else {
        gainChart = new ApexCharts(
          document.querySelector("#win-percentage-chart"),
          gainOptions,
        );
        gainChart.render();
      }
    })
    .catch((error) => console.error("Error fetching data:", error));
}

// Initiale Daten laden
document.addEventListener("DOMContentLoaded", () => {
  console.log("Document loaded. Fetching data...");
  fetchgainData();
});
