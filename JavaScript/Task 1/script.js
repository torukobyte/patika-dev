var timer = document.getElementById('time');

function time() {
  var d = new Date();
  var s = d.getSeconds();
  var m = d.getMinutes();
  var h = d.getHours();
  var days = [
    'Pazar',
    'Pazartesi',
    'Salı',
    'Çarşamba',
    'Perşembe',
    'Cuma',
    'Cumartesi',
  ];
  var day = days[d.getDay()];

  // switch (day) {
  //     case 0:
  //         day = "Pazar";
  //         break;
  //     case 1:
  //         day = "Pazartesi";
  //         break;
  //     case 2:
  //         day = "Salı";
  //         break;
  //     case 3:
  //         day = "Çarşamba";
  //         break;
  //     case 4:
  //         day = "Perşembe";
  //         break;
  //     case 5:
  //         day = "Cuma";
  //         break;
  //     case 6:
  //         day = "Cumartesi";
  //         break;
  // }

  timer.textContent =
    ('0' + h).substr(-2) +
    ':' +
    ('0' + m).substr(-2) +
    ':' +
    ('0' + s).substr(-2) +
    ' ' +
    day;
}

setInterval(time, 1000);

function getUserName() {
  var userName = prompt('Lütfen Adınızı Giriniz:', '');
  if (userName != null) {
    document.getElementById('userInput').innerHTML = userName;
  }
}

document.addEventListener('DOMContentLoaded', function () {
  getUserName();
});
