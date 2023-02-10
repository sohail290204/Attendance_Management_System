using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows;

namespace my_proj
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            String Username, Password;
            Username = TextBox2.Text;
            Password = TextBox1.Text;
            try
            {
                string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                SqlConnection objConn = new SqlConnection(strConn);
                String querry = "Select * from Admin where Username ='" + TextBox2.Text + "' and Password='" + TextBox1.Text + "'";
                SqlDataAdapter sda = new SqlDataAdapter(querry, objConn);

                DataTable dtable = new DataTable();
                sda.Fill(dtable);
                if (dtable.Rows.Count > 0)
                {
                    MessageBox.Text="Login Succesfull";
                    Response.Redirect("add_admin.aspx");


                }
                else
                {
                   // MessageBox.Text = "Invalid Login Details!";
                    Response.Write("<script>alert('Invalid Login Details!')</script>");
                }
            }
            catch
            {
                MessageBox.Text = "Error";
            }
        }
    }
}