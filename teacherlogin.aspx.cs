using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace my_proj
{
    public partial class teacherlogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {

            if (string.IsNullOrWhiteSpace(TextBox2.Text))
            {

                Response.Write("<script>alert('Enter Id')</script>");
            }
            else if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {

                Response.Write("<script>alert('Enter Password')</script>");
            }
            else
            {
                try
                {
                    string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                    SqlConnection objConn = new SqlConnection(strConn);
                    String querry = "Select * from Teacher where Id ='" + TextBox2.Text + "' and Password='" + TextBox1.Text + "'";
                    SqlDataAdapter sda = new SqlDataAdapter(querry, objConn);

                    DataTable dtable = new DataTable();
                    sda.Fill(dtable);
                    if (dtable.Rows.Count > 0)
                    {
                        Response.Write("<script>alert('Login Succesfull')</script>");
                        Response.Redirect("Year.aspx");


                    }
                    else
                    {
                        //MessageBox.Text = "Invalid Login Details!";
                        Response.Write("<script>alert('Invalid Login Details!')</script>");
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                    //MessageBox.Text = "Error";
                }


            }

            
        }
    }
}