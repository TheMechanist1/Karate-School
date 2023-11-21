using System;
using System.Collections.Generic;
using System.Data.Linq;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment4.webpages
{

    public partial class Add : System.Web.UI.Page
    {
        KarateDataContext dataContext;
        int StandardRate = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            dataContext = new KarateDataContext("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Mechanist\\Downloads\\KarateSchool(1).mdf;Integrated Security=True;Connect Timeout=30;Encrypt=True");
        }
    }
}