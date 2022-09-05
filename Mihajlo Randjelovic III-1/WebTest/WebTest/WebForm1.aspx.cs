using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebTest
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomIme_ServerValidate(object source, ServerValidateEventArgs args)
        {
            string ime = args.Value;
            /*bool mala = false, velika = false;
            mala = velika = false;*/
            bool mala = false, velika = false, blanko = false, spec = true;

            if (Char.IsUpper(ime[0]))
            {
                args.IsValid = false;
                foreach(char znak in ime)
                {
                    if (char.IsUpper(znak))
                        velika = true;
                    if (char.IsLower(znak))
                        mala = true;
                    if (znak == ' ')
                        blanko = true;
                    if (!char.IsUpper(znak) || !char.IsLower(znak))
                    {
                        spec = false;
                    }
                    else
                        spec = true;
                }
                if (mala && velika && blanko && spec)
                {
                    args.IsValid = true;
                    return;
                }
                /*foreach (char znak in ime)
                {
                    if (char.IsUpper(znak))
                        velika = true;
                    if (char.IsLower(znak))
                        mala = true;
                }
                if(mala && velika)
                {
                    args.IsValid = true;
                    return;
                }*/
            }
            args.IsValid = false;
        }

        protected void BObrisi_Click(object sender, EventArgs e)
        {
            TBime.Text = TBrednibroj.Text = TBvisina.Text = LBrez.Text = "";
            DropDownList1.SelectedIndex = 0;
            LBrez.Visible = false;
        }

        protected void BTRadi_Click(object sender, EventArgs e)
        {
            int redni_broj = int.Parse(TBrednibroj.Text), pol = 0;
            string ime = TBime.Text;
            double idealna_tezina = 0, visina = double.Parse(TBvisina.Text);
            if (Page.IsValid)
            {
                if (DropDownList1.SelectedIndex == 1)
                    pol = 1;
                else if (DropDownList1.SelectedIndex == 2)
                    pol = 2;
                if (pol == 1)
                {
                    idealna_tezina = visina - 100;
                    LBrez.Text = "Idealna tezina za " + ime + " cija je visina " + visina.ToString() + "cm iznosi: " + idealna_tezina.ToString() + " kg.";
                }
                if (pol == 2)
                {
                    idealna_tezina = visina - 110;
                    LBrez.Text = "Idealna tezina za " + ime + " cija je visina " + visina.ToString() + "cm iznosi: " + idealna_tezina.ToString() + " kg.";
                }
                LBrez.Visible = true;
            }
        }
    }
}