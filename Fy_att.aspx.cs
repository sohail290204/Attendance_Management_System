using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace my_proj
{
    public partial class Fy_att : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            string strQuery = "select * from FyBscCs where RollNo=@RollNo";
            objConn.Open();

            SqlCommand objCmd = new SqlCommand(strQuery, objConn);
            objCmd.Parameters.AddWithValue("@RollNo", RollNo.Text);
            SqlDataReader objRead = objCmd.ExecuteReader();
            if (objRead.Read())
            {
                Name.Text = objRead.GetString(0);
                RollNo1.Text = objRead.GetString(1);
                Department.Text = objRead.GetString(5);

                //Response.Write("<script>alert('Record inserted')</script>");
            }
            else
            {
                Response.Write("<script>alert('Invalid Id')</script>");
                // message.Text = "Invalid Email ID!";
            }
            objConn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            String approval = "" ;
            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            
            string strQuery = "insert into Fy_att values(@RollNo, @PresentOrAbsent, @Date)";
            if (Yes.Checked)
            {
                approval = "Present" ;
            }
            else
            {
                approval = "Absent" ;
            }
            //int Date = 26;
            DateTime a = DateTime.Now;
            string date_str = a.ToString("dd/MM/yyyy");

            objConn.Open();
            SqlCommand objCmd = new SqlCommand(strQuery, objConn);
            objCmd.Parameters.AddWithValue("@RollNo", RollNo1.Text);
            objCmd.Parameters.AddWithValue("@PresentOrAbsent", approval);
            objCmd.Parameters.AddWithValue("@Date", date_str);

            int intFlag = objCmd.ExecuteNonQuery();
            if (intFlag > 0)
            {

                Response.Write("<script>alert('Attendence updated')</script>");
            }
            else
            {
                Response.Write("<script>alert('Error')</script>");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {




            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            string strQuery = "select * from FyBscCs where RollNo=@RollNo";

            //String R = "";
           // R = RollNo1.Text;
            int R = Int32.Parse(RollNo1.Text);
            R = R + 1;

            objConn.Open();

            SqlCommand objCmd = new SqlCommand(strQuery, objConn);
            objCmd.Parameters.AddWithValue("@RollNo", R );
            SqlDataReader objRead = objCmd.ExecuteReader();
            if (objRead.Read())
            {
                RollNo.Text = objRead.GetString(1);
                Name.Text = objRead.GetString(0);
                RollNo1.Text = objRead.GetString(1);
                Department.Text = objRead.GetString(5);

                //Response.Write("<script>alert('Record inserted')</script>");
            }
            
            objConn.Close();
        }
    }
}