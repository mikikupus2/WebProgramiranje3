let gradovi = ["smederevo", "beograd", "novi-sad"];
let gradovi2 = [
  "https://www.smederevo.org.rs/",
  "https://www.beograd.rs/",
  "https://www.novisad.rs/",
];

function selekt() {
  let index = document.getElementById("sel1").value;
  document.getElementById("if1").src =
    "https://naslovi.net/vremenska-prognoza/" + gradovi[index];
  document.getElementById("if2").src = gradovi2[index];
}
