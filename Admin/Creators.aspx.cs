﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idea1.Admin
{
    public partial class Creators : System.Web.UI.Page
    {
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

            string sql = @"Select * from Creator";
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
