using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRollFrom.Pages
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Id"] != null && Session["Name"] != null)
                {
                    int userId = (int)Session["Id"];
                    string userName = (string)Session["Name"];

                    Get(userId, userName);



                    // You can fetch and display other user details as well if needed
                }
                else
                {
                    // Redirect the user to the login page if session variables are not set
                    Response.Redirect("Login.aspx");
                }
            }

        }


        public void Get(int empId, string empName)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=LOKESH\SQLEXPRESS;Initial Catalog=WebFormsDB;Integrated Security=True;TrustServerCertificate=True");
            conn.Open();
            SqlCommand co = new SqlCommand("execute empdetails_sp '" + empId + "' , '" + empName + "' ", conn);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Response.Redirect("Default.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeList.aspx");
        }
    }
}