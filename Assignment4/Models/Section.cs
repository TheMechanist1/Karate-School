using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment4.Models
{
    public class Section
    {
        public int SectionID { get; set; }
        public string SectionName { get; set; }
        public DateTime SectionDate { get; set; }
        public int Member_User_UserID { get; set; }
        public int Instructor_User_UserID { get; set; }
        public decimal SectionFee { get; set; }
    }
}