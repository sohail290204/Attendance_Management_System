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
    public partial class ViewFyStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"]== null)
            {
                Response.Write("<script>alert('Enter Username!')</script>");
                Response.Redirect("studentloginFy.aspx");
            }
            else
            {

                string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;

                //Grid view all the data in the table form
                SqlConnection objConn = new SqlConnection(strConn);
                string strQuery = "select * from Fy_att where RollNo=@RollNo";
                objConn.Open();
                String strUser = Session["User"].ToString();
                SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                objCmd.Parameters.AddWithValue("@RollNo", strUser);
                SqlDataReader objRead = objCmd.ExecuteReader();
                GridView1.DataSource = objRead;
                GridView1.DataBind();
                objConn.Close();

                // Total lecture attended
                SqlConnection objConn2 = new SqlConnection(strConn);
                objConn2.Open();
                String strUser2 = Session["User"].ToString();
                String Present = "Present";
                SqlCommand comm = new SqlCommand("select count(*) from Fy_att where RollNo= '" + strUser2 + "' and PresentOrAbsent ='"+Present+"' ", objConn2);
                int count = (int)comm.ExecuteScalar();
                Label9.Text = count.ToString();

                // Total lecture 
                SqlConnection objConn3 = new SqlConnection(strConn);
                objConn3.Open();
                String strUser3 = Session["User"].ToString();
                SqlCommand comm3 = new SqlCommand("select count(*) from Fy_att where RollNo= '" + strUser3 + "' ", objConn3);
                int count3 = (int)comm3.ExecuteScalar();
                Label10.Text = count3.ToString();

                

                //student details
                SqlConnection objConn1 = new SqlConnection(strConn);
                string strQuery1 = "select * from FyBscCs where RollNo=@RollNo";
                objConn1.Open();
                SqlCommand objCmd1 = new SqlCommand(strQuery1, objConn1);
                String strUser1 = Session["User"].ToString();
                objCmd1.Parameters.AddWithValue("@RollNo", strUser1);
                SqlDataReader objRead1 = objCmd1.ExecuteReader();

                if (objRead1.Read())
                {
                    Label2.Text = objRead1.GetString(0);
                    Label7.Text = objRead1.GetString(0);
                    Label4.Text = objRead1.GetString(1);
                    Label6.Text = objRead1.GetString(5);

                    //Response.Write("<script>alert('Record inserted')</script>");
                }
                objConn1.Close();






            }
        }



        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {
            //Percentage
            int a = Int32.Parse(Label9.Text);
            //int a = Label9.Text.Count();
            int b = Int32.Parse(Label10.Text);
            if (b == 0)
            {
                String p = "No lectures were conducted for this student.";
                Label13.Text = p;
            }
            else
            {

                int Percentage = (a * 100) / b;
                String p = "Percentage :";
                Label12.Text = Percentage.ToString();
                Label13.Text = p;
            }
            Button btn = (Button)sender;
            btn.Visible = false;

            
        }
    }
}