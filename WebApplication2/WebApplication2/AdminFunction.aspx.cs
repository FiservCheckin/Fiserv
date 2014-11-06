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
        public static Boolean flag; // The flag indicates wheather the sign up form is active or not
        public static string statusText; // statusText shows the status of the sign up form in text

        protected void Page_Load(object sender, EventArgs e)
        {
            /*
             * A session is applied to check whether admin is log in or not
             * If admin hasn't log in, the page will direct to admin login page
             * 
             * */
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
         
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
            //The page will go to ChangePassword.aspx if change password button is clicked
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangeWelcomeMessage.aspx");
            //The page will go to ChangeWelcomeMessage.aspx if change welcome message button is clicked
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("DataView.aspx");
            //The page will go to DataView.aspx if view attendee data button is clicked
        }

        protected void returnBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("FiservSignUpForm.aspx");
            //The page will go to FiservSignUpForm.aspx if return to form button is clicked
        }

        /*
         * A radio button is applied to active/shut down the sign up form 
         * 
         * */
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