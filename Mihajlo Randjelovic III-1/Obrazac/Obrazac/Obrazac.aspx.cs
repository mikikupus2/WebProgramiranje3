using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Obrazac
{
    public partial class Obrazac : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btsnimi_Click(object sender, EventArgs e)
        {
            bool pol = !rbzenski.Checked;
            Osoba2 neko = new Osoba2(tbime.Text, tbprezime.Text, pol, tbemail.Text, ddnivo.SelectedIndex);
            if (neko.Proveri())
            {
                lbrez.Visible = true;
                lbrez.Text = tbime.Text + "<br>" + tbprezime.Text + "<br>" + tbemail.Text;
            }
            else
            {
                lbrez.Visible = false;
                lbrez.Text = "";
            }
                
        }

        protected void btobrisi_Click(object sender, EventArgs e)
        {
            lbrez.Visible = false;
            lbrez.Text = "";
            tbime.Text = "";
            tbemail.Text = "";
            tbprezime.Text = "";
            ddnivo.SelectedIndex = 0;
            rbzenski.Checked = true;
            rbmuski.Checked = false;
        }
    }       
}