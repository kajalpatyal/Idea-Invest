using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace idea1.Admin
{
    public partial class Approve_ideas : System.Web.UI.Page
    {
        string status;
        SqlCommand cmd;
        SqlDataAdapter da;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shubh\source\repos\idea1\idea1\App_Data\Idea_data.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            var id1 = Convert.ToString(HttpContext.Current.Session["Admin"]);
            if (id1 == "")
            {
                Response.Redirect("Admin_login.aspx");
            }
            else
            {

            }
            if (!IsPostBack)
            {
                RepeterData();
            }
        }
        protected void btnSubmit_click(object sender, EventArgs e)
        {
            RepeterData();


        }
        public void RepeterData()
        {

            string sql = @"Select Id,Topic from Idea where Status='Pending' Order By  CreatedOn desc";
            con.Open();
            cmd = new SqlCommand(sql, con);
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            RepterDetails.DataSource = ds;
            RepterDetails.DataBind();
        }

        
       

        protected void r_Click(object sender, EventArgs e)
        {
            string sql = @"";
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            con.Open();
            cmd = new SqlCommand(sql, con);
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            RepterDetails.DataSource = ds;
            RepterDetails.DataBind();
        }

        protected void RepterDetails_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName =="btnaccept")
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shubh\source\repos\idea1\idea1\App_Data\Idea_data.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Update Idea set Status='Approved' where Topic='" + Convert.ToInt32(e.CommandArgument) + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                RepeterData();
            }
            else if (e.CommandName == "btnreject")
            {

                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shubh\source\repos\idea1\idea1\App_Data\Idea_data.mdf;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("Update Idea set Status='Rejected' where Id='" + Convert.ToInt32(e.CommandArgument) + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                RepeterData();
            }
        }
    }
}