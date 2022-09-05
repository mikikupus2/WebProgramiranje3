using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
class Proizvod
{
    //definisemo klasu proizvod sa svojstvima naziv-string i nabcena-double
    public string naziv;
    public double nabcena;
    public Proizvod(string n, double nc)
    {
        naziv = n;
        nabcena = nc;
    }
}
class Novi : Proizvod //klasa Novi je nasledjena od klase Proizvod
{
    public double marza, porez, cenap;
    //Nova klasa ima dodatna svojstva tipa double i to su marza i porez(oba u %) i
    //svojstvo cenap koje se racuna po formuli
    public Novi(string n, double nc, double m, double p) : base(n, nc)
    {
        //funckija Novi nasledjuje  svojstva n i nc od klase roditelja Proizvod
        marza = m;
        porez = p;
        cenap = (1 + marza / 100 + porez / 100) * nabcena;
    }
    public void stampa()
    {
        //funkcija stampa naziv proizvoda i cenu proizvoda i tipa je void jer
        //ne vraca vrednost
        Console.WriteLine("Naziv proizvoda je {0}", naziv);
        Console.WriteLine("Cena proizvoda je {0}", cenap);
    }
}
namespace test2grupa
{
    class Program
    {
        static void Main(string[] args)
        {
            string n;
            double nc, m, p;
            Console.WriteLine("Unesi naziv proizvoda");
            while (n != "kraj")
                //sve dok se za naziv proizvoda ne unese string "kraj"
                //petlja se izvrsava
            {
                Console.WriteLine("Unesi nabavnu cenu proizvoda");
                nc = double.Parse(Console.ReadLine());
                Console.WriteLine("Unesi marzu proizvoda");
                m = double.Parse(Console.ReadLine());
                Console.WriteLine("Unesi porez proizvoda");
                p = double.Parse(Console.ReadLine());
                Novi Neki = new Novi(n, nc, m, p);
                //kreira se instanca klase Novi koja se zove Neki
                Neki.stampa();//pozivamo funkciju stampa za istancu Neki
                Console.WriteLine("Unesi naziv proizvoda");
                n = Console.ReadLine();
            }
            Console.ReadKey();
        }
    }
}
/*definisati klasu prozivod koja ima dva svojstva naziv tipa string,
 i nabavna cena tipa double, iz te klase izvesti klasu 
 Novi koja imas svojstva marza, porez cena p tipa double. 
 Napaisati funkciju kojom se se stampa naziv proizvoda i cenap izracunati svojstvo cenppa.
 U glavnom programu se unosi unos proizvoda sve dok se za naziv ne unese kraj za sve se unosi naziv i nabavna cena.