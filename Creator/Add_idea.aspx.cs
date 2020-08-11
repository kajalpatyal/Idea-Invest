using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idea1.Creator
{
    public partial class Add_idea : System.Web.UI.Page
    {
         protected void Page_Load(object sender, EventArgs e)
            {

                var id1 = Convert.ToString(HttpContext.Current.Session["Creator"]);
                if (id1 == "")
                {
                    Response.Redirect("/Creator/Creator_login.aspx");
                }
                else
                {

                }

            }
            protected void AddIdea_Click(object sender, EventArgs e)
            {
                

                        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\shubh\source\repos\idea1\idea1\App_Data\Idea_data.mdf;Integrated Security=True");
                        SqlCommand cmd = new SqlCommand("insert into Idea values('" + Convert.ToString(HttpContext.Current.Session["Creator"]) + "','" + Top.Text + "','" + pno.Text + "','" + desc.Text + "','" + rs.Text + "','" + "Pending" + "','','" + DateTime.Now + "')", con);

                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    //DataTable dt = new DataTable();
                    //sda.Fill(dt);
                  
                    con.Open();
                    cmd.ExecuteNonQuery();
                        con.Close();

                      /*  if (i > 0)
                        {
                            SqlCommand cmd1 = new SqlCommand("select top 1 * from Idea ORDER BY id DESC", con);
                            SqlDataAdapter sda1 = new SqlDataAdapter(cmd1);
                            DataTable dt = new DataTable();
                            sda1.Fill(dt);
                            DataRow[] row = dt.Select();

                        }*/
                        Top.Text = "";
                        pno.Text = "";
                        desc.Text = "";
                        rs.Text = "";
                        Top.Focus();
                    

                
            }

        
    }
}