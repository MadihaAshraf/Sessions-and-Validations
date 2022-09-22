using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task7
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Dbcon db = new Dbcon();
       

        protected void SignInbtn_Click(object sender, EventArgs e)
        {
            {
                String qry = "Select * from users where name = '" + txtuname.Text + "' and password = '" + txtpswdd.Text + "'";
                DataTable dt = db.Search(qry);

                if (dt.Rows.Count > 0)
                {
                    int AccessLevel = Int16.Parse(dt.Rows[0]["access_level"].ToString());
                    Session["id"] = dt.Rows[0].ToString();
                    Session["AccessLevel"] = AccessLevel;

                    switch (AccessLevel)
                    {
                        case 1:
                            //it will redirect to employee panel
                            Response.Redirect("~/Employee.aspx");
                            break;
                        case 2:
                            Response.Redirect("~/Customer.aspx");
                            break;
                        case 3:
                            Response.Redirect("~/AdminPanel.aspx");
                            break;
                    }

                }
                else
                {
                    message1.Text="ERROR Credential didnot match";
                }





            }
        }
    }
}