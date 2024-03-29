﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Assignment4.webpages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        //Connect to the database
        KarateDataContext dbcon;
        string conn = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Mechanist\\Downloads\\KarateSchool(1).mdf;Integrated Security=True;Connect Timeout=30";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Initialize connection string 
            dbcon = new KarateDataContext(conn);

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string nUserName = Login2.UserName;
            string nPassword = Login2.Password;


            HttpContext.Current.Session["nUserName"] = nUserName;
            HttpContext.Current.Session["uPass"] = nPassword;


            try {
                // Search for the current User, validate UserName and Password
                NetUser myUser = (from x in dbcon.NetUsers
                                  where x.UserName == HttpContext.Current.Session["nUserName"].ToString()
                                        && x.UserPassword == HttpContext.Current.Session["uPass"].ToString()
                                  select x).First();

                if (myUser != null)
                {
                    //Add UserID and User type to the Session
                    HttpContext.Current.Session["userID"] = myUser.UserID;
                    HttpContext.Current.Session["userType"] = myUser.UserType;

                }
                if (myUser != null && HttpContext.Current.Session["userType"].ToString().Trim() == "Member")
                {

                    FormsAuthentication.RedirectFromLoginPage(HttpContext.Current.Session["nUserName"].ToString(), true);

                    Response.Redirect("~/Member/member.aspx");
                }
                else if (myUser != null && HttpContext.Current.Session["userType"].ToString().Trim() == "Instructor")
                {

                    FormsAuthentication.RedirectFromLoginPage(HttpContext.Current.Session["nUserName"].ToString(), true);

                    Response.Redirect("~/Instructor/instructor.aspx");
                }
                else if (myUser != null && HttpContext.Current.Session["userType"].ToString().Trim() == "Administrator")
                {

                    FormsAuthentication.RedirectFromLoginPage(HttpContext.Current.Session["nUserName"].ToString(), true);

                    Response.Redirect("~/Admin/admin.aspx");
                }
                else
                    Response.Redirect("Home.aspx", true);

                } catch (Exception ex) 
                {
                    Login2.FailureText = "Failed to Authenticate" + ex.Message;
                }
            }
    }

}