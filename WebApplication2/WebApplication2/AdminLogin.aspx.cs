using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
                conn.Open();

                System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
                byte[] bs = System.Text.Encoding.UTF8.GetBytes(PW.Text);
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
               
                conn.Close();

                if (psw == inputpsw)
                {                    
                    Response.Redirect("AdminFunction.aspx");
                }            
                
                else{
                    Response.Write("Incorrect password, please try again.");
                }

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }
    }
}