using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idea1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
          
        }
        protected void Idea_Click(object sender, EventArgs e)
        {
                Response.Redirect("Ideas.aspx");
           
        }
        protected void Creator_Click(object sender, EventArgs e)
        {
            Response.Redirect("Creator/Creator_login.aspx");

        }
        protected void Investor_Click(object sender, EventArgs e)
        {
            Response.Redirect("Investor/Investor_login.aspx");

        }
    }
}