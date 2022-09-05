using System;
using static System.Console;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
class vozilo
{
    public string marka;
    public int regbr;
    public vozilo(int regbr, string marka)
    {
        this.regbr = regbr;
        this.marka = marka;
    }
}
class regvozilo : vozilo
{
    public int godpr, kilometraza;
    public string tip;
    public regvozilo(int regbr, string marka, int godpr, int kilometraza, string tip) : base(regbr, marka)
    {
        this.godpr = godpr;
        this.kilometraza = kilometraza;
        this.tip = tip;
    }

    public void Ispis()
    {
        WriteLine("Registracioni broj: {0}", regbr);
        WriteLine("Marka: {0}", marka);
        WriteLine("Godina proizvodnje: {0}", godpr);
        WriteLine("Kilometraza: {0}", kilometraza);
        WriteLine("Tip: {0}", tip);
    }
    public void Test()
    {
        if (kilometraza < 100000 && godpr < 2010)
            WriteLine("Ispravan!");
        else
            WriteLine("Neispravan!");
    }
}
namespace test
{
    class Program
    {
        static void Main(string[] args)
        {
            string marka, tip;
            int godpr, kilometraza, regbr;
            Write("Unesite registracioni broj:");
            regbr = int.Parse(ReadLine());
            Write("Unesite marku vozila:");
            marka = ReadLine();
            Write("Unesite godinu proizvodnje:");
            godpr = int.Parse(ReadLine());
            Write("Unesite kilometrazu:");
            kilometraza = int.Parse(ReadLine());
            Write("Unesite tip vozila:");
            tip = ReadLine();
            regvozilo auto = new regvozilo(regbr, marka, godpr, kilometraza, tip);
            auto.Ispis();
            auto.Test();
            ReadKey();
        }
    }
}
