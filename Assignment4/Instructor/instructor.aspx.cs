using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment4.webpages
{
    public partial class instructor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }

        private void BindGridView()
        {
            int currentInstructorID = Convert.ToInt32(Session["UserID"]);
            using (KarateDataContext context = new KarateDataContext())
            {
                var query = from section in context.Sections
                            join member in context.Members on section.Member_ID equals member.Member_UserID
                            where section.Instructor_ID == currentInstructorID
                            select new
                            {
                                SectionName = section.SectionName,
                                MemberFirstName = member.MemberFirstName,
                                MemberLastName = member.MemberLastName
                            };

                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}