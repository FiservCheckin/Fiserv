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
        static int lastChangeIDFor1;
        static ListItem lastChangeItemFor1;
        static int lastChangeIDFor2;
        static ListItem lastChangeItemFor2;
        protected void Page_Load(object sender, EventArgs e)
        {
            welcomeMsg.Text = WebForm6.welcomeMsg;
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
            ////DataTable CityMembersTable = GetCity();
            //DreamRoleDropDownList2.DataSource = ;
            //DreamRoleDropDownList2.DataTextField = "CityName";
            //DreamRoleDropDownList2.DataValueField = "CityID";
            //DreamRoleDropDownList2.DataBind();

            DreamRoleDropDownList2.Items.Insert(0, new ListItem("<--Choose City-->", ""));

            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            if (WebForm5.flag == true)
            {
                try
                {
                    conn.Open();
                    //inserts the attendees inputs into the Attendee table in the database
                    
                    string insertQuery = @"
                        insert into Attendee (FirstName, LastName,Email,PhoneNo,GradSem,GradYear,Role,Role2,Role3,InputTime,DegreeId) 
                        values (@fname,@lname,@email,@phoneNo,@gradSem,@gradYear,@Role,@Role2,@Role3,@InputTime,@DegreeId)";
                    
                    //execute the querys
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    
                    com.Parameters.AddWithValue("@fname", Fname.Text);
                    com.Parameters.AddWithValue("@lname", Lname.Text);
                    com.Parameters.AddWithValue("@email", Email.Text);
                    com.Parameters.AddWithValue("@phoneNo", PhoneNo.Text);
                    com.Parameters.AddWithValue("@gradSem", GradSem.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@gradYear", GradYear.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Role", DreamRoleDropDownList1.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Role2", DreamRoleDropDownList2.SelectedItem.ToString() == "Select Dream Role" ? (object)DBNull.Value : DreamRoleDropDownList2.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Role3", DreamRoleDropDownList3.SelectedItem.ToString() == "Select Dream Role" ? (object)DBNull.Value : DreamRoleDropDownList3.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@DegreeId", ddlDegree.SelectedValue);

                    //com.Parameters.AddWithValue("@MajorId", ddlMajor.SelectedValue);
                    com.Parameters.AddWithValue("@InputTime", DateTime.Now.ToShortDateString());

                   

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
            }else if(WebForm5.flag == false)
            {
                Response.Redirect("ClosedForm.aspx");
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

        protected void ddlDegree_SelectedIndexChanged(object sender, EventArgs e)
        {
            //while (ddlMajor.Items.Count > 1)
            //{
            //    ddlMajor.Items.RemoveAt(1);
            //}

            //int degreeId = 0;
            //if (!int.TryParse(ddlDegree.SelectedValue, out degreeId))
            //    return;

            //if (!string.IsNullOrEmpty(ddlDegree.SelectedValue))
            //{
            //    var majorTable = GetMajors(degreeId);

            //    if (majorTable != null & majorTable.Rows.Count > 0)
            //    {
            //        foreach (DataRow row in majorTable.Rows)
            //        {
            //            ddlMajor.Items.Add(new ListItem(row.Field<string>("MajorName"), row.Field<int>("MajorId").ToString()));
            //        }
            //    }
            //}
        }

        protected void DreamRoleDropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {            
            if (DreamRoleDropDownList2.Enabled == false)
            {
                DreamRoleDropDownList2.Enabled = true;

                DreamRoleDropDownList2.Items.Remove(DreamRoleDropDownList1.SelectedItem);

                DreamRoleDropDownList3.Items.Remove(DreamRoleDropDownList1.SelectedItem);

                lastChangeIDFor1 = DreamRoleDropDownList1.SelectedIndex;
                lastChangeItemFor1 = DreamRoleDropDownList1.SelectedItem;
            }
            else
            {
                if (DreamRoleDropDownList1.SelectedIndex == 0)
                {
                    DreamRoleDropDownList2.ClearSelection();

                    DreamRoleDropDownList1.ClearSelection();

                    DreamRoleDropDownList2.Items.Insert(lastChangeIDFor1, lastChangeItemFor1);

                    DreamRoleDropDownList3.Items.Insert(lastChangeIDFor1, lastChangeItemFor1);

                    DreamRoleDropDownList2.SelectedIndex = 0;

                    DreamRoleDropDownList3.SelectedIndex = 0;

                    DreamRoleDropDownList2.Enabled = false;

                    DreamRoleDropDownList3.Enabled = false;

                    DreamRoleDropDownList2.ClearSelection();

                    DreamRoleDropDownList1.ClearSelection();
                }
                else
                {
                    DreamRoleDropDownList2.ClearSelection();

                    DreamRoleDropDownList2.Items.Insert(lastChangeIDFor1, lastChangeItemFor1);

                    DreamRoleDropDownList2.Items.Remove(DreamRoleDropDownList1.SelectedItem);

                    DreamRoleDropDownList3.Items.Insert(lastChangeIDFor1, lastChangeItemFor1);

                    DreamRoleDropDownList3.Items.Remove(DreamRoleDropDownList1.SelectedItem);

                    DreamRoleDropDownList2.SelectedIndex = 0;

                    DreamRoleDropDownList3.SelectedIndex = 0;

                    DreamRoleDropDownList3.Enabled = false;

                    lastChangeIDFor1 = DreamRoleDropDownList1.SelectedIndex;
                    lastChangeItemFor1 = DreamRoleDropDownList1.SelectedItem;
                }
            }
            
        }

        protected void DreamRoleDropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DreamRoleDropDownList3.Enabled == false)
            {
                DreamRoleDropDownList3.Enabled = true;
                DreamRoleDropDownList3.Items.Remove(DreamRoleDropDownList2.SelectedItem);

                lastChangeIDFor2 = DreamRoleDropDownList2.SelectedIndex;
                lastChangeItemFor2 = DreamRoleDropDownList2.SelectedItem;
            }
            else
            {
                if (DreamRoleDropDownList2.SelectedIndex == 0)
                {
                    DreamRoleDropDownList2.ClearSelection();

                    DreamRoleDropDownList3.ClearSelection();

                    DreamRoleDropDownList3.Items.Insert(lastChangeIDFor2, lastChangeItemFor2);

                    DreamRoleDropDownList3.Enabled = false;

                    DreamRoleDropDownList3.SelectedIndex = 0;

                    DreamRoleDropDownList2.ClearSelection();

                    DreamRoleDropDownList3.ClearSelection();                    
                }
                else
                {
                    DreamRoleDropDownList3.ClearSelection();

                    DreamRoleDropDownList3.Items.Insert(lastChangeIDFor2, lastChangeItemFor2);

                    DreamRoleDropDownList3.Items.Remove(DreamRoleDropDownList2.SelectedItem);

                    DreamRoleDropDownList3.SelectedIndex = 0;

                    lastChangeIDFor2 = DreamRoleDropDownList2.SelectedIndex;
                    lastChangeItemFor2 = DreamRoleDropDownList2.SelectedItem;
                }
            }
        }
    }

}