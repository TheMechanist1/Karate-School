using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment4.webpages
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMembersGridView();
                BindInstructorsGridView();
            }
        }


        private void BindMembersGridView()
        {
            using (KarateDataContext context = new KarateDataContext())
            {
                var membersQuery = from member in context.Members
                                   select new
                                   {
                                       FirstName = member.MemberFirstName,
                                       LastName = member.MemberLastName,
                                       PhoneNumber = member.MemberPhoneNumber,
                                       DateJoined = member.MemberDateJoined
                                   };

                MembersGridView.DataSource = membersQuery.ToList();
                MembersGridView.DataBind();
            }
        }

        private void BindInstructorsGridView()
        {
            using (KarateDataContext context = new KarateDataContext())
            {
                var instructorsQuery = from instructor in context.Instructors
                                       select new
                                       {
                                           FirstName = instructor.InstructorFirstName,
                                           LastName = instructor.InstructorLastName
                                       };

                InstructorsGridView.DataSource = instructorsQuery.ToList();
                InstructorsGridView.DataBind();
            }
        }
    }
}