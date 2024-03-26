using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRollFrom.Pages
{
    public partial class Employee : System.Web.UI.Page
    {

        string connectionString = "Data Source=LOKESH\\SQLEXPRESS;Initial Catalog=WebFormsDB;Integrated Security=True;TrustServerCertificate=True ";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitRegister_Click(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string profilestring = "";
                if (RadioButton1.Checked)
                {
                    profilestring=Image1.ImageUrl;
                }else if (RadioButton2.Checked)
                {
                    profilestring=Image2.ImageUrl;
                }else if(RadioButton3.Checked)
                {
                    profilestring=Image3.ImageUrl;
                }
                else
                {
                    profilestring=Image4.ImageUrl;
                }

                conn.Open();

                SqlCommand cmd= new SqlCommand("emplist_sp", conn);
                cmd.CommandType=CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@profileimage", profilestring);
                cmd.Parameters.AddWithValue("@gender", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("@department", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@salary", TextBox2.Text);
                cmd.Parameters.AddWithValue("@startdate", TextBox4.Text);
                cmd.Parameters.AddWithValue("@notes", TextBox3.Text);
                cmd.ExecuteNonQuery();
                Response.Redirect("EmployeeList.aspx");
                
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        
    }
}