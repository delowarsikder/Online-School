#pragma checksum "F:\Study\TF_3.1\my\Web_Lab\ASP project\final_try\Login_Registration\LoginPage.aspx.cs" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "4E3B0F17BD4AE689B784ECFE2C20C7696D437894"

#line 1 "F:\Study\TF_3.1\my\Web_Lab\ASP project\final_try\Login_Registration\LoginPage.aspx.cs"
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

    }


    protected void Button_login_Click(object sender, EventArgs e)
    {
        try {

            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            sqlConnection.Open();
            string cheakUser = "Select Count(*) from userData where UserName='" + loginUsername.Text + "'";
            SqlCommand sqlCommand_user = new SqlCommand(cheakUser, sqlConnection);
            int temp = Convert.ToInt32(sqlCommand_user.ExecuteScalar().ToString());
      //        Response.Write("temp value"+temp);
            if (temp == 1)
            {
               // sqlConnection.Open();
                string cheakPassword = "Select Password from userData where UserName='" + loginUsername.Text + "'";
                SqlCommand sqlCommand_password = new SqlCommand(cheakPassword, sqlConnection);
                string password = sqlCommand_password.ExecuteScalar().ToString().Replace(" ","");
                if (password == loginPassword.Text)
                {
                    Session["New"] = loginUsername.Text;
                    Response.Write("Password is correct");

                    Response.Redirect("HomePage.html");
                    //Response.Redirect("Users.aspx");//for go to another page
                }
                else
                {
                    Response.Write("Password is not correct");
                }

            }
            else
            {
                Response.Write("Invalid User name");
            }


            sqlConnection.Close();

        }
        catch (Exception ex)
        {
            Response.Write("Error" + ex.ToString());
        }
    }

   
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged1(object sender, EventArgs e)
    {

    }
    protected void loginUsername_TextChanged(object sender, EventArgs e)
    {

    }


}

#line default
#line hidden
