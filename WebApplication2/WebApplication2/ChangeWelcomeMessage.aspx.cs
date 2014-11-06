using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        public static String welcomeMsg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] != null)
            {
                if ((bool)Session["isLogin"])
                {
                    
                }
                else
                {
                    Session["loginMsg"] = "Please Login first!";
                    Response.Redirect("AdminLogin.aspx");
                }

            }
            else
            {
                Session["loginMsg"] = "Please Login first!";
                Response.Redirect("AdminLogin.aspx");
            }
        }
        /*
         * A function to set welcome message on sign up form
         * */
        protected void Button1_Click(object sender, EventArgs e)
        {
            welcomeMsg = TextBox1.Text;
            Response.Redirect("FiservSignUpForm.aspx");
        }
    }
}