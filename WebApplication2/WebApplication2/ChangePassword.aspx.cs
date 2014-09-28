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

        }
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
        protected Boolean CheckMatch()
        {
            Boolean match = false;
            if(TextBox2.Text == TextBox3.Text)
            {
                match = true;
            }
            
            return match;
        }
        protected Boolean correctPsw()
        {
            Boolean correct = false;
            //String currentPsw = TextBox1.Text;
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

                var inputpsw = s.ToString();

                string pullPWQuery = "select * from PW";

                SqlCommand com = new SqlCommand(pullPWQuery, conn);

                string psw = com.ExecuteScalar().ToString();

                if (psw == inputpsw)
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

                    string replacePWQuery = "UPDATE PW SET PW = " + "'" + newPSW + "'" + "WHERE PW = " + "'" + psw + "';";
                    SqlCommand comm = new SqlCommand(replacePWQuery, conn);
                    comm.ExecuteNonQuery();
                }
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
           
            return correct;
        }

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