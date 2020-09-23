using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace JobHunt
{
    public partial class CompanyProfile : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["RUser"] == null)
            {
                Response.Redirect("~/Recruiter_login.aspx");
            }
            Label2.Text = Session["RUser"].ToString();
        }

        protected void post_a_job_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/postajob.aspx");
        }

        protected void applicants(object sender, EventArgs e)
        {
            Response.Redirect("~/applicantlist.aspx");
        }
    }
}