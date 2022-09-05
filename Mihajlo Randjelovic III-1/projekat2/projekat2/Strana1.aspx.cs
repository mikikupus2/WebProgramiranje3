using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace projekat2
{
    public partial class Strana1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtRadi_Click(object sender, EventArgs e)
        {
            Lbrez.Text += TBIme.Text + " " + TBPrezime.Text + ".";
            Lbrez.Visible = true;
        }
        protected void BtPOC_Click(object sender, EventArgs e)
        {
            TBIme.Text = TBPrezime.Text = "";
            Lbrez.Text = "Vase ime i prezime je ";
            Lbrez.Visible = false;
        }
    }
}