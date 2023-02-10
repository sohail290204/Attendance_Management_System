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
    public partial class add_teacher : System.Web.UI.Page
    {
        string strConn = WebConfigurationManager.ConnectionStrings["DBConn"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(Name.Text))
            {
                
                Response.Write("<script>alert('Enter Name')</script>");
            }
            else if (string.IsNullOrWhiteSpace(Id.Text))
            {
                
                Response.Write("<script>alert('Enter Id')</script>");
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
            else if (string.IsNullOrWhiteSpace(Subject.Text))
            {
               
                Response.Write("<script>alert('Enter Subject')</script>");
            }
            else if (string.IsNullOrWhiteSpace(Department.Text))
            {
                
                Response.Write("<script>alert('Enter Department')</script>");
            }
            else
            {
                //Response.Write("<script>alert('Succesfull')</script>");

                try
                {
                    SqlConnection objConn = new SqlConnection(strConn);


                    String querry = "Select * from Teacher where Id ='" + Id.Text + "'";
                    SqlDataAdapter sda = new SqlDataAdapter(querry, objConn);

                    DataTable dtable = new DataTable();
                    sda.Fill(dtable);
                    if (dtable.Rows.Count > 0)
                    {

                        Response.Write("<script>alert('Invalid ID, ID already Exist')</script>");

                    }
                    else
                    {
                        string strQuery = "insert into Teacher values(@Name, @Id, @PhoneNo, @Address, @Subject, @Department, @Password)";

                        objConn.Open();
                        SqlCommand objCmd = new SqlCommand(strQuery, objConn);
                        objCmd.Parameters.AddWithValue("@Name", Name.Text);
                        objCmd.Parameters.AddWithValue("@Id", Id.Text);
                        objCmd.Parameters.AddWithValue("@PhoneNo", PhoneNo.Text);
                        objCmd.Parameters.AddWithValue("@Address", Address.Text);
                        objCmd.Parameters.AddWithValue("@Subject", Subject.Text);
                        objCmd.Parameters.AddWithValue("@Department", Department.Text);
                        objCmd.Parameters.AddWithValue("@Password", Password.Text);
                       
                        int intFlag = objCmd.ExecuteNonQuery();
                        if (intFlag > 0)
                        {
                           
                            Response.Write("<script>alert('Record inserted')</script>");
                        }
                    }

                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error')</script>");
                    Console.WriteLine(ex);

                }

            }

                


            }

        }
    }
