using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        public static Boolean flag;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeWelcomeMessage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DataView.aspx");
        }

        protected void returnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("FiservSignUpForm.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if(RadioButton1.Checked)
            {
                flag = true;
                statusLbl.Text = "The sign up form is active";
            }
            else if (RadioButton2.Checked)
            {
                flag = false;
                statusLbl.Text = "The sign up form is inactive";
            }
        } 
       
    }
}