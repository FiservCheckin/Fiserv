using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
//using ExcelLibrary.SpreadSheet;
//using ExcelLibrary.CompoundDocumentFormat;
//using ExcelLibrary.BinaryDrawingFormat;
//using ExcelLibrary.BinaryFileFormat;
//using Excel = Microsoft.Office.Interop.Excel; 
using System.Data.SqlClient;
using System.Windows.Forms;
using Spire.Xls;
using System.Configuration;
using System.Data.OleDb;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Export_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = @"SELECT * FROM [Attendee]";

            using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command.CommandText, conn))
            {
                DataTable dt = new DataTable();
                dataAdapter.Fill(dt);
                BindingSource bSource = new BindingSource();

                bSource.DataSource = dt;
                dataAdapter.Update(dt);

                string path = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);

                Spire.Xls.Workbook book = new Spire.Xls.Workbook();
                Spire.Xls.Worksheet sheet = book.Worksheets[0];
                sheet.InsertDataTable(dt, true, 1, 1);
                book.SaveToFile(path + "\\AllAttendeeDetails.xls");
            };


        }

        protected void changePwBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            conn.Open();
            string getpswsql = "SELECT * FROM PW";
            SqlCommand psdcmd = new SqlCommand(getpswsql, conn);
            
            System.Security.Cryptography.MD5CryptoServiceProvider x = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bs = System.Text.Encoding.UTF8.GetBytes(pswdTextBox.Text);
            bs = x.ComputeHash(bs);
            System.Text.StringBuilder s = new System.Text.StringBuilder();
            foreach (byte b in bs)
            {
                s.Append(b.ToString("x2").ToLower());
            }

            string pswInDB = psdcmd.ExecuteScalar().ToString();

            if (s.ToString() == pswInDB)
            {
                string dltsql = @"DELETE FROM Attendee";
            
                SqlCommand dltcmd = new SqlCommand(dltsql, conn);
                dltcmd.ExecuteNonQuery();
            }
            else
            {

                MessageBox.Show("Incorrect password, please try again", "Incorrect password",
                MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            
            conn.Close();

            Response.Redirect("DataView.aspx");
        }

      
        protected void ExportRole_Click(object sender, EventArgs e)
        {
            String exportText = ExportText.Text;
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);

            try
            {
                conn.Open();
                SqlCommand command = new SqlCommand();
                command.CommandText = @"SELECT * FROM [Attendee] WHERE 
                       (Role LIKE @searchRole 
                    OR Role2 LIKE @searchRole)
                    OR Role3 LIKE @searchRole";
                command.Parameters.AddWithValue("@searchRole", "%" + ExportText.Text + "%");

                using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command))
                {
                    dataAdapter.SelectCommand.Connection = conn;
                    DataTable dt = new DataTable();
                    dataAdapter.Fill(dt);
                    BindingSource bSource = new BindingSource();

                    bSource.DataSource = dt;
                    dataAdapter.Update(dt);

                    string path = Environment.GetFolderPath(Environment.SpecialFolder.Desktop);

                    Spire.Xls.Workbook book = new Spire.Xls.Workbook();
                    Spire.Xls.Worksheet sheet = book.Worksheets[0];
                    sheet.InsertDataTable(dt, true, 1, 1);
                    book.SaveToFile(path + "\\" + exportText + "AttendeeDetails.xls");
                }
            }
            finally
            {
                conn.Close();
            }
        }
    }
}