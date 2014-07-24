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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
                conn.Open();
                //checks if email of the attendee already exist in database, if it exist it will not input
                string checkEmail = "SELECT count(*) FROM Attendee WHERE Email ='"+Email.Text+"'";
                SqlCommand com = new SqlCommand(checkEmail, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("Attendee Already Exist!");
                }
                conn.Close();

            }


        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
                conn.Open();
                //inserts the attendees inputs into the Attendee table in the database
                string insertQuery = "insert into Attendee (CareerCode,FirstName, LastName,Email,PhoneNo,Degree,Major,GradMonth,GradYear,DreamRole,JobAvailability,LinkedIn) values(@careerCode,@fname,@lname,@email,@phoneNo,@degree,@major,@gradMonth,@gradYear,@dreamRole,@jobAvailability,@linkedIn)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@careerCode", CareerCode.Text);
                com.Parameters.AddWithValue("@fname", Fname.Text);
                com.Parameters.AddWithValue("@lname", Lname.Text);
                com.Parameters.AddWithValue("@email", Email.Text);
                com.Parameters.AddWithValue("@phoneNo", PhoneNo.Text);
                com.Parameters.AddWithValue("@degree", Degree.SelectedItem.ToString());
                com.Parameters.AddWithValue("@major", Major.Text);
                com.Parameters.AddWithValue("@gradMonth", GradMonth.SelectedItem.ToString());
                com.Parameters.AddWithValue("@gradYear", GradYear.SelectedItem.ToString());
                com.Parameters.AddWithValue("@dreamRole", DreamRole.Text);
                com.Parameters.AddWithValue("@JobAvailability", JobAvailability.SelectedItem.ToString());
                com.Parameters.AddWithValue("@linkedIn", LinkedIn.Text);

                com.ExecuteNonQuery();
                Response.Redirect("SignupSuccessPage.aspx");
                
                                
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());

            }
        }

        protected void Fname_TextChanged(object sender, EventArgs e)
        {

        }
    }

}