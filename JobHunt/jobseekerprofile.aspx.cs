using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobHunt
{
    public partial class jobseekerprofile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void post_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/postajob.aspx");
        }

        protected void want_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/wantjob.aspx");
        }
    }
}