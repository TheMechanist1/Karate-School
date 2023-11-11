using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment4.Models
{
    public class Member
    {
        public int User_UserId { get; set; }
        public string MemberFirstName { get; set; }
        public string MemberLastName { get; set; }
        public DateTime MemberDateJoined { get; set; }
        public string MemberPhoneNumber { get; set; }
        public string MemberEmail { get; set; }
    }
}