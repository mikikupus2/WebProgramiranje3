using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace povez
{
    public partial class forma1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        }
        protected void Radi()
        {
            Response.Redirect("forma2.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Radi();
        }
    }
}