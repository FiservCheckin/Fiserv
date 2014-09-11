﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using ExcelLibrary.SpreadSheet;
using ExcelLibrary.CompoundDocumentFormat;
using ExcelLibrary.BinaryDrawingFormat;
using ExcelLibrary.BinaryFileFormat;
using Excel = Microsoft.Office.Interop.Excel; 
using System.Data.SqlClient;
using System.Windows.Forms;
//using Spire.Xls;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlDataSource1.SelectCommand = @"
                    SELECT a.*, dm.DegreeName, dm.MajorName
                    FROM [Attendee] a
                        OUTER APPLY (SELECT d.DegreeName, m.MajorName FROM Degrees d INNER JOIN Majors m ON d.DegreeId = m.DegreeId WHERE a.MajorId = m.MajorId) dm";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Export_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            conn.Open();
            SqlCommand command = new SqlCommand();
            command.CommandText = "select * from Attendee";
            using (SqlDataAdapter dataAdapter = new SqlDataAdapter(command.CommandText, conn))
            {
                DataTable dt = new DataTable();
                dataAdapter.Fill(dt);
                BindingSource bSource = new BindingSource();

                bSource.DataSource = dt;
                dataAdapter.Update(dt);

                DataSet ds = new DataSet("New_Dataset");
                ds.Locale = System.Threading.Thread.CurrentThread.CurrentCulture;
                dataAdapter.Fill(dt);
                ds.Tables.Add(dt);
                ExcelLibrary.DataSetHelper.CreateWorkbook("ToExcel.xls", ds);
                

                //Workbook book = new Workbook();
                //Worksheet sheet = book.Worksheets[0];
                //sheet.InsertDataTable(t, true, 1, 1);
                //book.SaveToFile("ToExcel.xls");         
            };
            
        }
        protected void changePwBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }

        protected void deleteBtn_Click(object sender, EventArgs e)
        {

            ClientScriptManager CSM = Page.ClientScript;
            
            if (!ReturnValue())
            {
                string strconfirm = "<script>if(!window.confirm('Are you sure?')){window.location.href='Default.aspx'}</script>";
                CSM.RegisterClientScriptBlock(this.GetType(), "Confirm", strconfirm, false);
            }
            
            
            
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["FiservConnectionString"].ConnectionString);
            conn.Open();

            string sql = @"DELETE FROM Attendee";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
            conn.Close();

            Response.Redirect("DataView.aspx");

         
        
        }
       
    }
}