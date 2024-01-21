using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        Earthwise_ServiceClient sc = new Earthwise_ServiceClient();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Signup_Click(object sender, EventArgs e)
        {
            if (password.Value == confirmPassword.Value)
            {
                bool result = sc.Signup(name.Value, surname.Value, email.Value, password.Value, userType.Value);

                if (result == true)
                {
                    Response.Redirect("Login.aspx");
                }
            }
        }
    }
}