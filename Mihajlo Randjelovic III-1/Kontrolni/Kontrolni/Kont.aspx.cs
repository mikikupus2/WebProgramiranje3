using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kontrolni
{
    public class Podaci
    {
        public string imePrez;
        public int ID;
        public Podaci(string imePrez, int ID)
        {
            this.imePrez = imePrez;
            this.ID = ID;
            
        }
    }

    public class Podaci2 : Podaci
    {
        public double cena_radnog_sata;
        public int broj_radnih_sati;
        public double stimulacija;
        public double obustava;
        public Podaci2(string imePrez, int ID, double cena_radnog_sata, int broj_radnih_sati, double stimulacija, double obustava):base(imePrez, ID)
        {
            this.cena_radnog_sata = cena_radnog_sata;
            this.broj_radnih_sati = broj_radnih_sati;
            this.stimulacija = stimulacija;
            this.obustava = obustava;
        }
        public double Izrac()
        {
            double LD;
            LD = (0.707 * cena_radnog_sata * broj_radnih_sati) * (1 + stimulacija / 100);
            return LD;
        }

    }
    public partial class Kont : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRadi_Click(object sender, EventArgs e)
        {
            LbRez.Visible = true;
            Podaci2 rd = new Podaci2(TbImePrez.Text, int.Parse(TbID.Text), double.Parse(TbCena.Text), int.Parse(TbRadnogSata.Text), double.Parse(DropStimulacija.SelectedValue), double.Parse(DropObustave.SelectedValue));
            LbRez.Text = rd.Izrac().ToString();

        }

        protected void DropStimulacija_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void DropObustave_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropStimulacija.SelectedIndex == 1)
            {
                TbStim.Visible = true;
                Label5.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (DropObustave.SelectedIndex == 1)
            {
                Label7.Visible = true;
                TextBox1.Visible = true;
            }
        }
    }
}