var infoOptions = {
  series: [20, 48, 70, 4],
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
          return seriesName + ":  " + opts.w.globals.series[opts.seriesIndex];
        },
      },
    },
  },
  colors: ["#319f5840", "#319f5880", "#319f58bf", "#319f58"],
  labels: ["Push", "Pull", "Arme", "Beine"],
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

var infoChart = new ApexCharts(document.querySelector("#rest"), infoOptions);
infoChart.render();
