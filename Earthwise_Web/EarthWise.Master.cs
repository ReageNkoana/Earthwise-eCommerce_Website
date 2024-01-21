using Earthwise_Web.ServiceReference1;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Earthwise_Web
{
    public partial class EarthWise : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

          

            if (Session["LoggedInUserID"] != null)
            {
                int userId = Convert.ToInt32(Session["LoggedInUserID"]);

                // Make a service call to check if the user is a manager
                bool isManager = CheckIfUserIsManager(userId);



                

                if (isManager)
                {
                    navNorm.Visible = false;
                    // Nav1.Visible = false;
                    managerNav.Visible = true;
                    customerNav.Visible = false;
                }
                else
                {
                    navNorm.Visible = false;
                   // Nav1.Visible = false;

                    managerNav.Visible = false;
                    customerNav.Visible = true;
                }


           
            }
            else
            {
                // Handle the case when the user is not logged in
                navNorm.Visible = true;
               // Nav1.Visible = true;

                managerNav.Visible = false;
                customerNav.Visible = false;
            }


        

        }

        private bool CheckIfUserIsManager(int userId)
        {
            using (var service = new Earthwise_ServiceClient())
            {
                return service.isManager(userId);
            }
        }
    }
}