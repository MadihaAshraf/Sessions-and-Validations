using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task7
{
    public partial class SinUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Dbcon db = new Dbcon();
        
        protected void btn_signup_Click(object sender, EventArgs e)
        {
            String qry = "Insert into users Values( '" + txtname.Text + "', '" + txtEmail.Text + "', '" + txtpass.Text + "', '" + txtcnic.Text + "', '" + txtphone.Text + "')";

            if (db.UDI(qry))
            {
                Response.Redirect("<script>alert('signup successfully')");
            }
            else
            {
                Response.Redirect("Sign up not successfull");
            }
        }
    }
}