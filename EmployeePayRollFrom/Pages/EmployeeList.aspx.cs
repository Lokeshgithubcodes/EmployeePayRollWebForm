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
    public partial class EmployeeList : System.Web.UI.Page
    {

        string connectionString = "Data Source=LOKESH\\SQLEXPRESS;Initial Catalog=WebFormsDB;Integrated Security=True; Encrypt=False";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetList();
            }

        }



        public void GetList()
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand cmd=new SqlCommand("emplall_sp", con);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter sda=new SqlDataAdapter(cmd);
                DataTable dataTable = new DataTable();
                sda.Fill(dataTable);
                Gridview1.DataSource = dataTable;
                Gridview1.DataBind();
                con.Close();

            }

        }

        protected void Gridview1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
        {
            int id;
            if (Gridview1.DataKeys != null && e.RowIndex < Gridview1.DataKeys.Count)
            {
                if (int.TryParse(Gridview1.DataKeys[e.RowIndex].Value.ToString(), out id))
                {

                    using (SqlConnection conn = new SqlConnection(connectionString))
                    {
                        conn.Open();
                        SqlCommand cmd = new SqlCommand("delete from emp where EmpID='" + id + "'", conn);
                        int t = cmd.ExecuteNonQuery();
                        if (t > 0)
                        {
                            Response.Write("<script> alert('Deleted Successfully')</script>");
                            Gridview1.EditIndex = -1;
                            GetList();
                        }
                    }
                }
                else
                {
                    // Notify user about invalid ID
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid ID');", true);
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Invalid index');", true);

            }
        }

        protected void Gridview1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Gridview1.EditIndex = e.NewEditIndex;
            GetList();
        }

        protected void Gridview1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            Gridview1.EditIndex = -1;
            GetList();
        }

        protected void Gridview1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            if (Gridview1 != null && e.RowIndex >= 0 && Gridview1.Rows.Count > e.RowIndex)
            {
                int id = Convert.ToInt32(Gridview1.DataKeys[e.RowIndex].Value);

                GridViewRow row = Gridview1.Rows[e.RowIndex];
                string name = "";
                if (row.Cells[1].Controls.Count > 0 && row.Cells[1].Controls[0] is TextBox)
                {
                    name = ((TextBox)row.Cells[1].Controls[0]).Text;
                }
                string gender = ((TextBox)row.Cells[3].Controls[0]).Text;
                string department = ((TextBox)row.Cells[4].Controls[0]).Text;
                //int salary = Convert.ToInt32(((TextBox)row.Cells[5].Controls[0]).Text);
                string salaryText = ((TextBox)row.Cells[5].Controls[0]).Text.Trim();
                long salary = 0;
                if (!string.IsNullOrEmpty(salaryText) && long.TryParse(salaryText, out long parsedSalary))
                {
                    salary = (int)parsedSalary;
                }

                string notes = ((TextBox)row.Cells[7].Controls[0]).Text;
                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand("empupdate_sp", conn);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@Name", name);
                    cmd.Parameters.AddWithValue("@Gender", gender);
                    cmd.Parameters.AddWithValue("@Department", department);
                    cmd.Parameters.AddWithValue("@Salary", salary);
                    cmd.Parameters.AddWithValue("@Notes", notes);
                    cmd.Parameters.AddWithValue("@empid", id); 

                    int rowsAffected = cmd.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        Response.Write("<script>alert('Data has been updated');</script>");
                        Gridview1.EditIndex = -1;
                        GetList(); // Assuming this method retrieves and binds data to GridView1
                    }
                    else
                    {
                        Response.Write("<script>alert('Failed to update data');</script>");
                    }
                }
            }
            else
            {
                Response.Write("<script>alert('Error: Unable to update data. Please try again later.');</script>");
                // Handle the case where GridView1 or its related objects are null, or the row index is out of range
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox1.Text);
            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("empsearch_sp", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@empid", id);
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            string male = TextBox2.Text;
            int sal=int.Parse(TextBox3.Text);
            using(SqlConnection conn = new SqlConnection( connectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("empmalecount_sp", conn);
                cmd.CommandType= CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@gender", male);
                cmd.Parameters.AddWithValue("@salary", sal);
                SqlDataAdapter sd = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sd.Fill(dt);
                GridView3.DataSource= dt;
                GridView3.DataBind();
            }
        }

        
    }
}