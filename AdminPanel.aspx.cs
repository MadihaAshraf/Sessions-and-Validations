using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task7
{
    public partial class AdminPanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            
          
            if (Session["id"]!=null)
            {
                int AccessLevel = Int16.Parse(Session["AccessLevel"].ToString());

                switch (AccessLevel)
                {
                    case 1:
                        //it will redirect to admin panel
                        Response.Redirect("~/Employee.aspx");
                        break;
                    case 2:
                        Response.Redirect("~/Customer.aspx");
                        break;
                }

            }
            else
            {
                Response.Redirect("~/SignIn.aspx");
            }
        }
        
    }
}