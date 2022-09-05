using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validacija1g2811
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int manji, veci, i;
            manji = int.Parse(TextBox1.Text);
            veci = int.Parse(TextBox2.Text);
            Label3.Text = "";
            for (i = manji; i <= veci; i++)
                if (i % 2 == 1)
                    Label3.Text += i.ToString() + " ";
            Label3.Visible = true;
        }
    }
}