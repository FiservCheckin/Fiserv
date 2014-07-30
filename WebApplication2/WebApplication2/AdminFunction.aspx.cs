using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using Excel = Microsoft.Office.Interop.Excel; 
using System.Data.SqlClient;
using Spire.Xls;
using System.Configuration;

namespace WebApplication2
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                DataTable t = new DataTable();
                dataAdapter.Fill(t);
                Workbook book = new Workbook();
                Worksheet sheet = book.Worksheets[0];
                sheet.InsertDataTable(t, true, 1, 1);
                book.SaveToFile("\\Desktop\\ToExcel.xls");
            };
            
        }
       
    }
}