using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace my_proj
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LoginYear.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
            Response.Redirect("teacherlogin.aspx");
        }
    }
}