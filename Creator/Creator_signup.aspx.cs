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
    public partial class Creator_signup : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Btnregistration_Click(object sender, EventArgs e)
        {
           

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shubh\source\repos\idea1\idea1\App_Data\Idea_data.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("insert into Creator values('" + email.Text + "','" + cop.Text + "','" + fname.Text + "','" + lname.Text + "','" + acc.Text + "','" + ifsc.Text + "')", con);

            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            //DataTable dt = new DataTable();
            //sda.Fill(dt);
            con.Open();
            var i = cmd.ExecuteNonQuery();
            con.Close();

            if(i > 0)
            {
                SqlCommand cmd1 = new SqlCommand("select top 1 * from Creator ORDER BY id DESC", con);
                SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                sda1.Fill(dt);
                DataRow[] row = dt.Select();
                Session["Creator"] = row[0]["id"];
                Response.Redirect("Try.aspx");
            }
            fname.Text = "";
            lname.Text = "";
            email.Text = "";
            cop.Text = "";
            acc.Text = "";
            ifsc.Text = "";
            fname.Focus();
        }
    }
}