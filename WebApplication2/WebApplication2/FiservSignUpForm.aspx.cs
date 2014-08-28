using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

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
                string checkEmail = "SELECT count(*) FROM Attendee WHERE Email ='" + Email.Text + "'";
                SqlCommand com = new SqlCommand(checkEmail, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString());

                if (temp == 1)
                {
                    Response.Write("Attendee Already Exist!");
                }
                conn.Close();
            }
            else
            {
                if (!string.IsNullOrEmpty(ddlDegree.SelectedValue))
                {
                    var degreeTable = GetAllDegrees();

                    if (degreeTable != null & degreeTable.Rows.Count > 0)
                    {
                        foreach (DataRow row in degreeTable.Rows)
                        {
                            ddlDegree.Items.Add(new ListItem(row.Field<string>("DegreeName"), row.Field<int>("DegreeId").ToString()));
                        }
                    }
                }
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);

            try
            {
                conn.Open();
                //inserts the attendees inputs into the Attendee table in the database
                string insertQuery = "insert into Attendee (FirstName, LastName,Email,PhoneNo,GradSem,GradYear,Role,MajorId) values(@fname,@lname,@email,@phoneNo,@gradSem,@gradYear,@Role,@MajorId)";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@fname", Fname.Text);
                com.Parameters.AddWithValue("@lname", Lname.Text);
                com.Parameters.AddWithValue("@email", Email.Text);
                com.Parameters.AddWithValue("@phoneNo", PhoneNo.Text);
                com.Parameters.AddWithValue("@gradSem", GradSem.SelectedItem.ToString());
                com.Parameters.AddWithValue("@gradYear", GradYear.SelectedItem.ToString());
                com.Parameters.AddWithValue("@Role", Role.SelectedItem.ToString());
                com.Parameters.AddWithValue("@MajorId", ddlMajor.SelectedValue);

                com.ExecuteNonQuery();
                Response.Redirect("SignupSuccessPage.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
            finally
            {
                conn.Close();
            }
        }
        protected DataTable GetAllDegrees()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            DataTable datatable = new DataTable();

            try
            {
                conn.Open();
                //inserts the attendees inputs into the Attendee table in the database
                string insertQuery = "SELECT * FROM Degrees Order By DegreeName";
                SqlCommand com = new SqlCommand(insertQuery, conn);

                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    da.Fill(datatable);
                }
            }
            catch (Exception ex)
            {
                //Response.Write("Error:" + ex.ToString());
            }
            finally
            {
                conn.Close();
            }

            return datatable;
        }
        protected DataTable GetMajors(int degreeId)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            DataTable datatable = new DataTable();

            try
            {
                conn.Open();
                //inserts the attendees inputs into the Attendee table in the database
                string insertQuery = "SELECT * FROM Majors WHERE DegreeId = @DegreeId ORDER BY MajorName";
                SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@DegreeId", degreeId);

                using (SqlDataAdapter da = new SqlDataAdapter(com))
                {
                    da.Fill(datatable);
                }
            }
            catch (Exception ex)
            {
                //Response.Write("Error:" + ex.ToString());
            }
            finally
            {
                conn.Close();
            }

            return datatable;
        }

        protected void Fname_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ddlDegree_SelectedIndexChanged(object sender, EventArgs e)
        {
            while (ddlMajor.Items.Count > 1)
            {
                ddlMajor.Items.RemoveAt(1);
            }

            int degreeId = 0;
            if (!int.TryParse(ddlDegree.SelectedValue, out degreeId))
                return;

            if (!string.IsNullOrEmpty(ddlDegree.SelectedValue))
            {
                var majorTable = GetMajors(degreeId);

                if (majorTable != null & majorTable.Rows.Count > 0)
                {
                    foreach (DataRow row in majorTable.Rows)
                    {
                        ddlMajor.Items.Add(new ListItem(row.Field<string>("MajorName"), row.Field<int>("MajorId").ToString()));
                    }
                }
            }
        }
    }

}