using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment4.webpages
{
    public partial class member : System.Web.UI.Page
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
            int currentMemberID = Convert.ToInt32(HttpContext.Current.Session["userID"]);
            using (KarateDataContext context = new KarateDataContext())
            {
                var query = from section in context.Sections
                            join instructor in context.Instructors on section.Instructor_ID equals instructor.InstructorID
                            where section.Member_ID == currentMemberID
                            select new
                            {
                                SectionName = section.SectionName,
                                InstructorFirstName = instructor.InstructorFirstName,
                                InstructorLastName = instructor.InstructorLastName
                            };

                GridView1.DataSource = query.ToList();
                GridView1.DataBind();
            }
        }
    }
}