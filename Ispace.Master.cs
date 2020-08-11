using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idea1
{
    public partial class Ispace : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void lblogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("../Default.aspx");
        }
    }
}