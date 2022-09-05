using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Obrazac
{
    public class Osoba2 : Osoba
    {
        public string email;
        public int nivoobr;
        public Osoba2(string ime, string prezime, bool pol, string email, int nivoobr) : base(ime, prezime, pol)
        {
            this.email = email;
            this.nivoobr = nivoobr;
        }

        public bool Proveri()
        {
            if (this.pol == true && this.nivoobr >= 3)
                return true;
            else
                return false;
        }
    }
}