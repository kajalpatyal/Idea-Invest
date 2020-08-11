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
    public partial class Investor_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shubh\source\repos\idea1\idea1\App_Data\Idea_data.mdf;Integrated Security=True");
            SqlCommand cmd = new SqlCommand("select id from Investor where Email=@username and Pwd=@word", con);
            cmd.Parameters.AddWithValue("@username", email.Text);
            cmd.Parameters.AddWithValue("word", password.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();

            if (dt.Rows.Count > 0)
            {
                DataRow[] row = dt.Select();
                Session["Investor"] =row[0]["id"];
                
                Response.Redirect("View.aspx");
            }
            else
            {
                email.Text = "Your username and word is incorrect";
                password.ForeColor = System.Drawing.Color.Red;

            }


        }
    }
}
