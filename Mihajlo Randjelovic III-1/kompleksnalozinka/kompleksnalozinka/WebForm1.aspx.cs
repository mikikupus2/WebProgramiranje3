using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace kompleksnalozinka
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = false;
            string loz = args.Value;
            bool vs, ms, cif;
            vs = ms = cif = false;
            if(loz.Length <6 && loz.Length > 25)
            {
                CustomValidator1.ErrorMessage = "Lozinka mora imate od 6 do 25 karaktera";
                return;
            }
                
            foreach (char zn in loz)
                if (zn >= 'A' && zn <= 'Z') 
                {
                    vs = true;break; 
                }
            if (!vs) return;
            foreach (char zn in loz)
                if (zn >= 'a' && zn <= 'z')
                {
                    ms = true;break;
                }
            if (!ms) return;
            foreach (char zn in loz)
                if (zn >= '0' && zn <= '9')
                {
                    cif = true; break;
                }
            if (!cif) return;
            if (vs && ms && cif)
                args.IsValid = true;
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if(Page.IsValid)
            {
                Label1.Visible = TBIme.Visible = false;
                Label2.Visible = TBloz1.Visible = false;
                Label3.Visible = TBloz2.Visible = true;
            }
        }
    }
}