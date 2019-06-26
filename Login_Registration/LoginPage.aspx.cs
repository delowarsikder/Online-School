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

        string uN, uP;
        HttpCookie cookie = Request.Cookies["UserDetails"];

        if (!IsPostBack)
        {

            if (cookie != null)
            {
                uN = cookie["Uname"];
                uP = cookie["Upassword"];
                if (uN!=null && uP!=null)
                {
                   
                    Response.Redirect("HomePage.aspx");
                }
                else
                {
                    Response.Redirect("LoginPage.aspx");
                }
            }
        } 

    }

    protected void set_cokie_CheckedChanged(object sender, EventArgs e)
    {


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
            SqlDataAdapter sda = new SqlDataAdapter("select * from userData where UserName='" + loginUsername.Text + "'and loginPassword='" + loginPassword.Text + "'", sqlConnection);//for cookie
            if (temp == 1)
            {
               // sqlConnection.Open();
                string cheakPassword = "Select Password from userData where UserName='" + loginUsername.Text + "'";
                SqlCommand sqlCommand_password = new SqlCommand(cheakPassword, sqlConnection);
                string password = sqlCommand_password.ExecuteScalar().ToString().Replace(" ","");
                if (password == loginPassword.Text)
                {

                    if (set_cokie.Checked)
                    {
                        HttpCookie cookie = new HttpCookie("UserDetails");
                        cookie["Uname"] = loginUsername.Text;
                        cookie["Upassword"] = loginPassword.Text;
                        Response.Cookies.Add(cookie);
                        cookie.Expires = DateTime.Now.AddDays(1);
                        cookie.Path = Request.ApplicationPath;
                    }
                    else {
                        HttpCookie cookie = new HttpCookie("UserDetails");
                        cookie["Uname"] = null;
                        cookie["Upassword"] = null;
                    }
                    Session["New"] = loginUsername.Text;
                    Response.Write("<script>alert('Successfully Login');</script>");

                    Response.Redirect("HomePage.aspx");
                    //Response.Redirect("Users.aspx");//for go to another page
                }
                else
                {
                    Response.Write("<script>alert('oops! Password is not correct');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Invalid User <br> Please Register FIrst');</script>");
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