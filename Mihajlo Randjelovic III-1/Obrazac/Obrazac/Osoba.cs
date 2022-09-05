using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obrazac
{
    public class Osoba
    {
        public string ime, prezime;
        public bool pol;
        public Osoba(string ime, string prezime, bool pol)
        {
            this.ime = ime;
            this.prezime = prezime;
            this.pol = pol;
        }
    }
}