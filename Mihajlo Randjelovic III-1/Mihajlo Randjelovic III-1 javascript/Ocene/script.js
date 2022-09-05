class Ucenik {
  constructor(prezime, ime, ocena1, ocena2, ocena3) {
    this.prezime = prezime;
    this.ime = ime;
    this.ocena1 = ocena1;
    this.ocena2 = ocena2;
    this.ocena3 = ocena3;
    this.srocena = (this.ocena1 + this.ocena2 + this.ocena3) / 3;
  }
}
let niz_ucenika = [];
const unos = () => {
  let ime = document.getElementById("ime").value;
  let prezime = document.getElementById("prezime").value;
  let ocena1 = Number(document.getElementById("ocena1").value);
  let ocena2 = Number(document.getElementById("ocena2").value);
  let ocena3 = Number(document.getElementById("ocena3").value);
  niz_ucenika.push(new Ucenik(prezime, ime, ocena1, ocena2, ocena3));
  document.getElementById("ime").value = "";
  document.getElementById("prezime").value = "";
  document.getElementById("ocena1").value = "";
  document.getElementById("ocena2").value = "";
  document.getElementById("ocena3").value = "";
  localStorage.setItem("niz_ucenika", JSON.stringify(niz_ucenika));
};
const open_table = () => {
  window.open("tabela.html");
};
const create_table = () => {
  let nizucenika = JSON.parse(localStorage.getItem("niz_ucenika"));
  let tabela = document.getElementById("tabela");
  let red = tabela.insertRow();
  red.innerHTML +=
    "<th>" +
    "RB" +
    "</th>" +
    "<th>" +
    "Prezime i Ime" +
    "</th>" +
    "<th>" +
    "Ocena1" +
    "</th>" +
    "<th>" +
    "Ocena2" +
    "</th>" +
    "<th>" +
    "Ocena3" +
    "</th>" +
    "<th>" +
    "SR" +
    "</th>";
  for (let i = 0; i < nizucenika.length; i++) {
    let row = tabela.insertRow();
    let RB = row.insertCell();
    let prezimeiime = row.insertCell();
    let ocena1 = row.insertCell();
    let ocena2 = row.insertCell();
    let ocena3 = row.insertCell();
    let srocena = row.insertCell();

    RB.innerHTML = i + 1;
    prezimeiime.innerHTML = nizucenika[i].prezime + nizucenika[i].ime;
    ocena1.innerHTML = nizucenika[i].ocena1;
    ocena2.innerHTML = nizucenika[i].ocena2;
    ocena3.innerHTML = nizucenika[i].ocena3;
    srocena.innerHTML = nizucenika[i].srocena;
  }
};

const open_chart = () => {
  window.open("grafik.html");
};

const chart = () => {
  let nizucenika = JSON.parse(localStorage.getItem("niz_ucenika"));
  let xValues = nizucenika.map((uc) => uc.ime + " " + uc.prezime);
  let yValuesocena1 = nizucenika.map((uc) => uc.ocena1);
  let yValuesocena2 = nizucenika.map((uc) => uc.ocena2);
  let yValuesocena3 = nizucenika.map((uc) => uc.ocena3);
  let yValuessrocena = nizucenika.map((uc) => uc.srocena);
  grafik = new Chart("myChart", {
    type: "bar",
    data: {
      labels: xValues,
      datasets: [
        {
          backgroundColor: "green",
          data: yValuesocena1,
        },
        {
          backgroundColor: "blue",
          data: yValuesocena2,
        },
        {
          backgroundColor: "red",
          data: yValuesocena3,
        },
        {
          backgroundColor: "yellow",
          data: yValuessrocena,
        },
      ],
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: "Ocene",
      },
      scales: {
        yAxes: [{ ticks: { min: 0, max: 40 } }],
      },
    },
  });
};
