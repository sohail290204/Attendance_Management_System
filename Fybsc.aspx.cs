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
    public partial class Fybsc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Name.Text))
            {

                Response.Write("<script>alert('Enter Name')</script>");
            }
            else if (string.IsNullOrWhiteSpace(RollNo.Text))
            {

                Response.Write("<script>alert('Enter RollNo')</script>");
            }
            else if (string.IsNullOrWhiteSpace(PhoneNo.Text))
            {

                Response.Write("<script>alert('Enter PhoneNo')</script>");
            }
            else if (string.IsNullOrWhiteSpace(Password.Text))
            {

                Response.Write("<script>alert('Enter Password')</script>");
            }
            else if (string.IsNullOrWhiteSpace(Address.Text))
            {

                Response.Write("<script>alert('Enter Address')</script>");
            }

            else if (string.IsNullOrWhiteSpace(Department.Text))
            {

                Response.Write("<script>alert('Enter Department')</script>");
            }
            else
            {
                //Response.Write("<script>alert('Succesfull')</script>");
                string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
                SqlConnection objConn = new SqlConnection(strConn);


                String querry = "Select * from FyBscCs where RollNo ='" + RollNo.Text + "'";
                SqlDataAdapter sda = new SqlDataAdapter(querry, objConn);

                DataTable dtable = new DataTable();
                sda.Fill(dtable);
                if (dtable.Rows.Count > 0)
                {

                    Response.Write("<script>alert('Invalid RollNo, RollNo already Exist')</script>");

                }
                else
                {
                    string strQuery = "insert into FyBscCs values(@Name, @RollNo, @PhoneNo, @Password, @Address, @Department)";

                    objConn.Open();
                    SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                    objCmd.Parameters.AddWithValue("@Name", Name.Text);
                    objCmd.Parameters.AddWithValue("@RollNo", RollNo.Text);
                    objCmd.Parameters.AddWithValue("@PhoneNo", PhoneNo.Text);
                    objCmd.Parameters.AddWithValue("@Password", Password.Text);
                    objCmd.Parameters.AddWithValue("@Address", Address.Text);

                    objCmd.Parameters.AddWithValue("@Department", Department.Text);

                    int intFlag = objCmd.ExecuteNonQuery();
                    if (intFlag > 0)
                    {
                        Response.Write("<script>alert('Record inserted')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error !!!!')</script>");
                    }
                }


            }
        }
    }
}