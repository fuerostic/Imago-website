using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Imago_Website
{
    public partial class Imago : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!string.IsNullOrEmpty(Session["username"] as string) )
            {
                loginNav.Visible = false;
                logoutDropdown.Visible = true;
                username_placeholder.InnerHtml = Session["username"].ToString();
                //username_placeholder.InnerHtml = Request.Cookies["username"].Value.ToString();
                //System.Diagnostics.Debug.WriteLine("In page load "+ Session["username"]);

            }
            else
            {
                loginNav.Visible = true;
                logoutDropdown.Visible = false;
                System.Diagnostics.Debug.WriteLine("In page load" + Session["username"]);
            }
        }


        protected void LogoutBtn_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            ////Session.Abandon();
            ////Session.Clear();
            //Session.Remove("username");
            //Response.Cookies["username"].Expires = DateTime.Now.AddDays(-1);
            //Response.Cookies["mail"].Expires = DateTime.Now.AddDays(-1);
            System.Diagnostics.Debug.WriteLine("After logout " + Session["username"]);
            Response.Redirect("Home.aspx");
        }
    }
}