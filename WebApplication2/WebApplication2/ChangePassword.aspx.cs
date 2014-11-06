using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm4 : System.Web.UI.Page
    {
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
         * A function to check if the new password match the format
         * If not match, Lable2 will display msg "invalid"
         * */
        protected void ValidateNewPw()
        {
            //define pattern of the password
            String newPw = TextBox2.Text;
            String pat = @"([A-Za-z0-9]+)";
            Regex r = new Regex(pat, RegexOptions.IgnoreCase);
            Match match = r.Match(newPw);

            if (!match.Success)
	        {
                Label2.Text = "invalid";
            }
        }

        /*
         * A boolean to check if admin types the same new password in both TextBox2 and TextBox3.
         * return true if the same
         * return not if not the same
         * 
         * */
        protected Boolean CheckMatch()
        {
            Boolean match = false;
            if(TextBox2.Text == TextBox3.Text)
            {
                match = true;
            }
            
            return match;
        }

        /*
         * A boolean to check if the current password is correct
         * return true and replace the old password with the new password in database if correct
         * return false if not
         * 
         * */
        protected Boolean correctPsw()
        {
            Boolean correct = false;
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
                conn.Open();

                System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
                byte[] bs = System.Text.Encoding.UTF8.GetBytes(TextBox1.Text);
                bs = x.ComputeHash(bs);
                System.Text.StringBuilder s = new System.Text.StringBuilder();
                foreach (byte b in bs)
                {
                    s.Append(b.ToString("x2").ToLower());
                }

                string getpswsql = "select * from PW";

                SqlCommand com = new SqlCommand(getpswsql, conn);

                if (com.ExecuteScalar().ToString() == s.ToString())
                {
                    correct = true;

                    System.Security.Cryptography.MD5CryptoServiceProvider x1 = new System.Security.Cryptography.MD5CryptoServiceProvider();
                    byte[] bs1 = System.Text.Encoding.UTF8.GetBytes(TextBox2.Text);
                    bs1 = x1.ComputeHash(bs1);
                    System.Text.StringBuilder s1 = new System.Text.StringBuilder();
                    foreach (byte b in bs1)
                    {
                        s1.Append(b.ToString("x2").ToLower());
                    }
                    var newPSW = s1.ToString();

                    string replacePWQuery = "UPDATE PW SET PW = " + "'" + newPSW + "'" + "WHERE PW = " + "'" + com.ExecuteScalar().ToString() + "';";
                    SqlCommand comm = new SqlCommand(replacePWQuery, conn);
                    comm.ExecuteNonQuery();
                }
                else
                {

                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
           
            return correct;
        }
        /*
         * New password will be saved if new password match the format and user type the same new password
         * 
         * */
        protected void Button1_Click(object sender, EventArgs e)
        {
            ValidateNewPw();
            if(CheckMatch())
            {
                Label3.Text = "";
               if (correctPsw())
               {
                   Response.Write("***New password has been saved***");
               }
               else{
                   Label4.Text = "Wrong password";
               }
            }
            else
            {
                Label3.Text = "Password confirmation does not match";
            }
        }
        
    }
}