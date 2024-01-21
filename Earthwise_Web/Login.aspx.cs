using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class Login : System.Web.UI.Page
    {

        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            int id = sc.Login(email1.Value, password1.Value);

            if (id != 0)
            {
                Session["LoggedInUserID"] = id; //to know who logged in
                Response.Redirect("Homepage.aspx");
            }
         




        }

    }
}