using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace my_proj
{
    public partial class update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateFybsc.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateSybsc.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateTybsc.aspx");
        }
    }
}