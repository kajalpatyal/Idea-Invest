using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idea1
{
    public partial class Ideas : System.Web.UI.Page
    {
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shubh\source\repos\idea1\idea1\App_Data\Idea_data.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            RepeterData();
        }
        protected void btnSubmit_click(object sender, EventArgs e)
        {
            


        }
        public void RepeterData()
        {

            string sql = @"Select * from Idea where Status='Approved' Order By  CreatedOn desc";
            con.Open();
            cmd = new SqlCommand(sql, con);
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            RepterDetails.DataSource = ds;
            RepterDetails.DataBind();
        }
    }
}