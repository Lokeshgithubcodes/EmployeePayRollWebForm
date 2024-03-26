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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        string connectionString = "Data Source=LOKESH\\SQLEXPRESS;Initial Catalog=WebFormsDB;Integrated Security=True; Encrypt=False";

        protected void Button_Login(object sender, EventArgs e)
        {
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("emplogin_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                int Id = int.Parse(TextBox1.Text);
                string Name = TextBox2.Text;
                cmd.Parameters.AddWithValue("@empid", Id);
                cmd.Parameters.AddWithValue("@name", Name);
                conn.Open();
                cmd.ExecuteNonQuery();
                SqlDataReader dataReader = cmd.ExecuteReader();
                while (dataReader.Read())
                {
                    Session["Id"] = dataReader["EmpID"];
                    Session["Name"] = dataReader["Name"];
                }
                if (Id.Equals(Session["Id"]) && Name.Equals(Session["Name"]))
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login sucessfull');", true);
                    Response.Redirect("UserDetails.aspx");

                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Login failed');", true);
                    Response.Redirect("Default.aspx");

                }
            }
        }


    }
}