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
        /*
         * A session is applied to check whether admin is log in or not
         * If admin hasn't log in, the page will direct to admin login page
         * 
         * */
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["isLogin"] != null)
            {
                if ((bool)Session["isLogin"])
                {
                    Response.Redirect("AdminFunction.aspx");
                }
                
            }
            
            if (Session["loginMsg"] != null)
            {
                Label3.Text = Session["loginMsg"].ToString();
                Session["loginMsg"] = null;
            }
            else
            {
                Label3.Text = "";
            }
            
        }

        /*
         * check if the password match with the database
         * log the user in if match
         * show error msg if not
         * */
        protected void Loginbutton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
                conn.Open();

                //psw is encrypted by MD5
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
                    Session["isLogin"] = true;
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