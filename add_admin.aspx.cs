using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace my_proj
{
    public partial class add_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("add_teacher.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("addyear.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewStudent.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewTeacher.aspx");
        }
    }
}