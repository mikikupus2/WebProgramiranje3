using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static System.Console;
class osoba
{
    public string ime, prezime;
    public osoba(string i ,string p)
    {
        ime = i;
        prezime = p;
    }
}
class ucenik : osoba
{
    public string zanimanje;
    public int raz, od;
    public double prosek;
    public ucenik(string i, string p, string z, int r, int o, double pro) : base(i, p)
    {
        zanimanje = z;
        raz = r;
        od = 0;
        prosek = pro;
    }
    public string uspeh()
    {
        string pom;
        if (prosek >= 4.50)
            pom = "odlican";
        else if (prosek >= 3.50)
            pom = "vrlo dobar";
        else if (prosek >= 2.50)
            pom = "dobar";
        else
            pom = "dovoljan";
        return pom;
    }
    public void ispisi()
    {
        WriteLine("Ime: {0}", ime);
        WriteLine("Prezimme: {0}", prezime);
        WriteLine("Zanimanje: {0}", zanimanje);
        WriteLine("razred: {0}", raz);
        WriteLine("odeljenje: {0}", od);
        WriteLine("prosek: {0}", prosek);
        WriteLine("uspeh: {0}", uspeh());
    }
}
namespace ucenik1
{
    class Program
    {
        static void Main(string[] args)
        {
            string ime, prez, zan;
            int raz, ode;
            double p;
            WriteLine("Unesi ime ucenika>");
            ime = ReadLine();
            while (ime != "kraj")
            {
                WriteLine("Unesi prezime ucenika>");
                prez = ReadLine();
                WriteLine("Unesi zanimanje ucenika>");
                zan = ReadLine();
                WriteLine("Unesi razred ucenika>");
                raz = int.Parse(ReadLine());
                WriteLine("Unesi odeljenje ucenika>");
                ode = int.Parse(ReadLine());
                WriteLine("Unesi prosek ucenika>");
                p = double.Parse(ReadLine());
                ucenik uc = new ucenik(ime, prez, zan, raz, ode, p);
                uc.ispisi();
                WriteLine("unesi ime ucenika ili kraj za zavrsetak:");
                ime = ReadLine();
            }
        }
    }
}
