﻿using System;
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
            DateTime dt = DateTime.Now;
            titleLabel.Text = dt.ToString("MMMM") + " " + DateTime.Now.Year.ToString() + " Careers Fair";//get current year and month
            
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
                //Build dynamic graduate year values for graduate year drop down list
                int firstGradYear;
                firstGradYear = (int)DateTime.Now.Year;
                GradYear.Items.Add("Select Graduate Year");
                for (int i = 0; i <= 4; i++)
                {
                    GradYear.Items.Add(new ListItem((firstGradYear + i).ToString()));
                }
            }
        }
        /*
         * A function to submit data if all necessary fields are filled with correct format
         * */
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            if (WebForm5.flag == true)
            {
                try
                {
                    conn.Open();
                    //inserts the attendees inputs into the Attendee table in the database
                    
                    string insertQuery = "insert into Attendee (FirstName, LastName,Email,PhoneNo,Degree, GradSem,GradYear,Role,Role2,Role3,InputTime) values(@fname,@lname,@email,@phoneNo,@degree,@gradSem,@gradYear,@Role,@Role2,@Role3,@InputTime)";
                    
                    //execute the querys
                    SqlCommand com = new SqlCommand(insertQuery, conn);
                    
                    com.Parameters.AddWithValue("@fname", Fname.Text);
                    com.Parameters.AddWithValue("@lname", Lname.Text);
                    com.Parameters.AddWithValue("@email", Email.Text);
                    com.Parameters.AddWithValue("@phoneNo", PhoneNo.Text);
                    com.Parameters.AddWithValue("@degree", Degree.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@gradSem", GradSem.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@gradYear", GradYear.SelectedItem.ToString());
                    com.Parameters.AddWithValue("@Role", DreamRoleDropDownList1.SelectedItem.ToString());

                    com.Parameters.AddWithValue("@Role2", DreamRoleDropDownList2.SelectedIndex == 0 ? (object)DBNull.Value : DreamRoleDropDownList2.SelectedItem.ToString());

                    com.Parameters.AddWithValue("@Role3", DreamRoleDropDownList3.SelectedIndex == 0 ? (object)DBNull.Value : DreamRoleDropDownList3.SelectedItem.ToString());

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

       /*
        * Functions for attendee to choose their dream roles
        * First dream role is mandatory
        * The second and third one is not required
        * */

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

                DreamRoleDropDownList2.Items.Insert(lastChangeIDFor1, lastChangeItemFor1);

                if (DreamRoleDropDownList3.Enabled == true)
                {
                    DreamRoleDropDownList3.Items.Insert(lastChangeIDFor2, lastChangeItemFor2);

                    DreamRoleDropDownList3.Enabled = false;
                }

                DreamRoleDropDownList3.Items.Insert(lastChangeIDFor1, lastChangeItemFor1);

                if (DreamRoleDropDownList1.SelectedIndex == 0)
                {
                    DreamRoleDropDownList2.Enabled = false;
                }

                else
                {
                    DreamRoleDropDownList2.Items.Remove(DreamRoleDropDownList1.SelectedItem);

                    DreamRoleDropDownList3.Items.Remove(DreamRoleDropDownList1.SelectedItem);

                    lastChangeIDFor1 = DreamRoleDropDownList1.SelectedIndex;
                    lastChangeItemFor1 = DreamRoleDropDownList1.SelectedItem;
                }
                
            }

            DreamRoleDropDownList2.SelectedIndex = 0;

            DreamRoleDropDownList3.SelectedIndex = 0;
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
                DreamRoleDropDownList3.Items.Insert(lastChangeIDFor2, lastChangeItemFor2);

                if (DreamRoleDropDownList2.SelectedIndex == 0)
                {                   
                    DreamRoleDropDownList3.Enabled = false;                       
                }
                else
                {
                    DreamRoleDropDownList3.Items.Remove(DreamRoleDropDownList2.SelectedItem);

                    lastChangeIDFor2 = DreamRoleDropDownList2.SelectedIndex;
                    lastChangeItemFor2 = DreamRoleDropDownList2.SelectedItem;
                }
            }

            DreamRoleDropDownList3.SelectedIndex = 0;
        }
    }
}