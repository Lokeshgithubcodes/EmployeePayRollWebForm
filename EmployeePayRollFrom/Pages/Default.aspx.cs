using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeePayRollFrom.Pages
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Login(object sender, EventArgs e)
        {
            
            Response.Redirect("Login.aspx");
        }

        protected void Button_Register(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }
    }
}