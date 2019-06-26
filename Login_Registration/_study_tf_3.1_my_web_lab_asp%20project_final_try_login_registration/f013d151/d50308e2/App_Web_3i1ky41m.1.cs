#pragma checksum "F:\Study\TF_3.1\my\Web_Lab\ASP project\final_try\Login_Registration\Users.aspx.cs" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "590265353C381DB0807A6E290DC1D2EAA9D4678B"

#line 1 "F:\Study\TF_3.1\my\Web_Lab\ASP project\final_try\Login_Registration\Users.aspx.cs"
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["New"] != null)
        {
            L_welcome.Text += Session["New"].ToString();
        }
        else {
            Response.Redirect("LoginPage.aspx");
        }

    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("LoginPage.aspx");
       // Response.Redirect("http://www.teletalk.com.bd/");
    }
}

#line default
#line hidden
