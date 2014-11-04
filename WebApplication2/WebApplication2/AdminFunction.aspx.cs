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
        public static string statusText;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["isLogin"] != null)
            {
                if ((bool)Session["isLogin"])
                {
                    statusLbl.Text = statusText;
                    if (statusText == "The sign up form is active")
                    {
                        RadioButton1.Checked = true;
                    }
                    else if (statusText == "The sign up form is inactive")
                    {
                        RadioButton2.Checked = true;
                    }
                }
                else
                {
                    Session["loginMsg"] = "Pleas Login first!";
                    Response.Redirect("AdminLogin.aspx");
                }
                
            }
            else
            {
                Session["loginMsg"] = "Pleas Login first!";
                Response.Redirect("AdminLogin.aspx");
            }
            
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
                statusText = statusLbl.Text;
            }
            else if (RadioButton2.Checked)
            {
                flag = false;
                statusLbl.Text = "The sign up form is inactive";
                statusText = statusLbl.Text;
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["isLogin"] = null;
            Response.Redirect("AdminLogin.aspx");
        } 
       
    }
}