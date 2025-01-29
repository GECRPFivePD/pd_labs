const units = {
  Celcius: "°C",
  Fahrenheit: "°F",
};

const config = {
  minTemp: 1,
  maxTemp: 90,
  unit: "Celcius",
  maxPressure: 100,
  minPressure: 150,
};

var opts = {
  angle: -0.17, // The span of the gauge arc
  lineWidth: 0.15, // The line thickness
  radiusScale: 1, // Relative radius
  pointer: {
    length: 0.52, // // Relative to gauge radius
    strokeWidth: 0.029, // The thickness
    color: "#000000", // Fill color
  },
  limitMax: false, // If false, max value increases automatically if value > maxValue
  limitMin: false, // If true, the min value of the gauge will be fixed
  // colorStart: "#ececec", // Colors
  // // colorStop: "#32a852", // just experiment with them
  strokeColor: "#E0E0E0", // to see which ones work best for you
  generateGradient: true,
  highDpiSupport: true, // High resolution support
  percentColors: [[0.0, "#a9d70b"], [0.50, "#f9c802"], [1.0, "#ff0000"]],
  // renderTicks is Optional
  renderTicks: {
    divisions: 6,
    divWidth: 1.8,
    divLength: 0.70,
    divColor: "#333333",
    subDivisions: 3,
    subLength: 0.5,
    subWidth: 1,
    subColor: "#666666",
  },
};

$(() => {
  let currentTemp = 10;
  let currentPressure = 120;
  let intervalId = null;
  let intervalId2 = null;
  var target = document.getElementById("canvas-preview");
  var gauge = new Gauge(target).setOptions(opts);
  gauge.set(125);
  $("#barometer-wrapper").fadeOut(100);
  const IncreaseTempInterval = () => {
    let increaseRatePerSecond = 5;
    intervalId = setInterval(() => {
      currentTemp += increaseRatePerSecond;
      if (currentTemp >= config.maxTemp) {
        $.post("https://pd_labs/maxTempReached");
        $("#termometer-wrapper").fadeOut(100);
        clearInterval(intervalId);
        intervalId = null;
      } else if (currentTemp <= config.minTemp) {
        $.post("https://pd_labs/minTempReached");
        $("#termometer-wrapper").fadeOut(100);
        clearInterval(intervalId);
        intervalId = null;
      }
      setTemperature(currentTemp);
    }, 1000);
  };

  const IncreasePressureInterval = () => {
    let increaseRatePerSecond = 10;
    intervalId2 = setInterval(() => {
      if (currentPressure >= config.maxPressure) {
        $.post("https://pd_labs/maxPressureReached");
        clearInterval(intervalId2);
        $("#barometer-wrapper").fadeOut(100);
        intervalId2 = null;
      } else if (currentPressure <= config.minPressure) {
        $.post("https://pd_labs/minPressureReached");
        clearInterval(intervalId2);
        $("#barometer-wrapper").fadeOut(100);
        intervalId2 = null;
      }
      currentPressure += increaseRatePerSecond;
      gauge.set(currentPressure);
    }, 1000);
  };

  window.addEventListener("message", (e) => {
    if (e.data.action === "openTemperature") {
      $("#termometer-wrapper").fadeIn(200);
      currentTemp = e.data.defaultTemp;
      config.minTemp = e.data.minTemp;
      config.maxTemp = e.data.maxTemp;
      setTemperature(currentTemp);
      IncreaseTempInterval();
    } else if (e.data.action === "lowerTemp") {
      currentTemp -= 2;
      setTemperature(currentTemp);
    } else if (e.data.action === "closeTemperature") {
      if (intervalId) {
        clearInterval(intervalId);
      }
      $("#termometer-wrapper").fadeOut(100);
    }
    if (e.data.action === "openPressure") {
      $("#barometer-wrapper").fadeIn(100);
      currentPressure = e.data.defaultPressure;
      config.defaultPressure = e.data.defaultPressure;
      gauge.animationSpeed = 20;
      gauge.setMinValue(e.data.minPressure);
      gauge.maxValue = e.data.maxPressure;
      config.minPressure = e.data.minPressure;
      config.maxPressure = e.data.maxPressure;
      gauge.set(currentPressure);
      IncreasePressureInterval();
    } else if (e.data.action === "lowerPressure") {
      currentPressure -= 10;
      gauge.set(currentPressure);
    } else if (e.data.action === "closePressure") {
      gauge.set(config.defaultPressure);
      if (intervalId2) {
        clearInterval(intervalId2);
      }
      $("#barometer-wrapper").fadeOut(100);
    }
  });
});

function setTemperature(val) {
  temperature.style.height =
    ((val - config.minTemp) / (config.maxTemp - config.minTemp)) * 100 + "%";
  temperature.dataset.value = val + units[config.unit];
}
