using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace apl1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //public int k = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                if (ViewState["Clicks"] == null)
                    ViewState["Clicks"] = 0;
                //k = 0;
            }
            TextBox1.Text = ViewState["Clicks"].ToString();
            //TextBox1.Text = k.ToString();
        }

        protected void Klikni_Click(object sender, EventArgs e)
        {
            int bk = (int)ViewState["Clicks"] + 1;
            TextBox1.Text = bk.ToString();
            ViewState["Clicks"] = bk;
        }
    }
}