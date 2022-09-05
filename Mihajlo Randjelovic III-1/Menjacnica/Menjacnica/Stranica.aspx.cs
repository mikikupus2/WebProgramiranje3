using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Menjacnica
{
    public partial class Stranica : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btkonvert_Click(object sender, EventArgs e)
        {
            double iznos = double.Parse(Tbiznos.Text);
            if (DDLvaluta.SelectedIndex == 0)
            {
                iznos = iznos * 117.27;
                Iznos.Text = "Iznos u dinarima: " + iznos.ToString() + " Din.";
            }
            if (DDLvaluta.SelectedIndex == 1)
            {
                iznos = iznos * 0.0085;
                Iznos.Text = "Iznos u evrima: " + iznos.ToString() + " €";
            }
            Iznos.Visible = true;
        }

        protected void DDLvaluta_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void Btpotvrda_Click(object sender, EventArgs e)
        {
            Tbiznos.Text = "0";
            Iznos.Text = "";
            Iznos.Visible = false;
            lbiznos.Text = "";
            if (DDLvaluta.SelectedIndex == 0)
            {
                lbiznos.Text = "Unesite iznos Eura: ";
                lbiznos.Visible = true;
                Tbiznos.Visible = true;
                Btkonvert.Visible = true;
            }
            if (DDLvaluta.SelectedIndex == 1)
            {
                lbiznos.Text = "Unesite iznos Dinara: ";
                lbiznos.Visible = true;
                Tbiznos.Visible = true;
                Btkonvert.Visible = true;
            }
        }
    }
}