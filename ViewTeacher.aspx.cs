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
    public partial class WebForm3 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            SqlConnection objConn = new SqlConnection(strConn);
            string strQuery = "select * from Teacher where Id=@Id";
            objConn.Open();

            SqlCommand objCmd = new SqlCommand(strQuery, objConn);
            objCmd.Parameters.AddWithValue("@Id", Id.Text);
            SqlDataReader objRead = objCmd.ExecuteReader();
            if (objRead.Read())
            {
                Name.Text = objRead.GetString(0);
                PhoneNo.Text = objRead.GetString(2);
                Subject.Text = objRead.GetString(4);
                Address.Text = objRead.GetString(3);
                Department.Text = objRead.GetString(5);
                Password.Text = objRead.GetString(6);
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
            string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
            try
            {
                SqlConnection objCon = new SqlConnection(strConn);
                
                string strQuery = "update Teacher set Name=@Name, PhoneNo=@PhoneNo, Address=@Address, Subject=@Subject, Department=@Department, Password=@Password where Id=@Id";
                objCon.Open();
                SqlCommand objCmd = new SqlCommand(strQuery, objCon);     
                objCmd.Parameters.AddWithValue("@Name", Name.Text);
                objCmd.Parameters.AddWithValue("@Id", Id.Text);
                objCmd.Parameters.AddWithValue("@PhoneNo", PhoneNo.Text);
                objCmd.Parameters.AddWithValue("@Address", Address.Text);
                
                objCmd.Parameters.AddWithValue("@Subject", Subject.Text);
                objCmd.Parameters.AddWithValue("@Department", Department.Text);
                objCmd.Parameters.AddWithValue("@Password", Password.Text);

                int i = objCmd.ExecuteNonQuery();
                if (i > 0)
                {
                    Response.Write("<script>alert('Update Succesfull')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error in update')</script>");
                }
                objCon.Close();

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }


    }

   
    
}