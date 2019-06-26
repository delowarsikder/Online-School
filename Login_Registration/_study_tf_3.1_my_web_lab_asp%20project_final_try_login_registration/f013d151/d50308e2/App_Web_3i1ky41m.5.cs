#pragma checksum "F:\Study\TF_3.1\my\Web_Lab\ASP project\final_try\Login_Registration\Registration.aspx.cs" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "BAD61240D6045113CD22C3A0661226F64A5B0319"

#line 1 "F:\Study\TF_3.1\my\Web_Lab\ASP project\final_try\Login_Registration\Registration.aspx.cs"
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        if (IsPostBack)
        {
            SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            sqlConnection.Open();
            string cheakUser = "Select Count(*) from userData where UserName='" + userNameId.Text + "'";
            SqlCommand sqlCommand_user = new SqlCommand(cheakUser, sqlConnection);
            int temp = Convert.ToInt32(sqlCommand_user.ExecuteScalar().ToString());
            if (temp == 1) {
                Response.Write("User already exit");
            }

            sqlConnection.Close();
        }
    }

    protected void submitResgister_Click1(object sender, EventArgs e)
    {
        try {
                Guid newGuid = Guid.NewGuid();
                SqlConnection sqlConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                sqlConnection.Open();
                string insertQuery = "insert into userData (Id,UserName,Email,Password,Country)values(@id,@uName,@email,@passWord,@country);";
                SqlCommand sqlCommand = new SqlCommand(insertQuery, sqlConnection);

                sqlCommand.Parameters.AddWithValue("@id",newGuid.ToString());
                sqlCommand.Parameters.AddWithValue("@uName", userNameId.Text);
                sqlCommand.Parameters.AddWithValue("@email",emailId.Text);
                sqlCommand.Parameters.AddWithValue("@passWord",passId.Text);
                sqlCommand.Parameters.AddWithValue("@country", selectCountryId.SelectedItem.ToString());
                sqlCommand.ExecuteNonQuery();
                Response.Redirect("LoginPage.aspx");
                Response.Write("Your Registration is successfull");
                sqlConnection.Close();
        }
        catch (Exception ex)
        {
            Response.Write("Error"+ex.ToString()); 
        }
       
    }
    protected void userNameId_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}

#line default
#line hidden
