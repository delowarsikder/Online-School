using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void registration_bt_id_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void login_bt_id_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginPage.aspx");
    }
}