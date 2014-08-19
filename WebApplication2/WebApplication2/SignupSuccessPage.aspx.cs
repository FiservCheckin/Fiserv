using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class SuccessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Return_Click(object sender, EventArgs e)
        {
            Response.Redirect("FiservSignUpForm.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            ClientScript.RegisterStartupScript(typeof(Page),"closePage","window.close();", true);
        }
    }
}