using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{

    SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True");
    string name;
    
    protected void Page_Load(object sender, EventArgs e)
    {
   
        if (connect.State == ConnectionState.Open)
        {
            connect.Close();
        }
        connect.Open();
        name = Session["New"].ToString();

        //try
        //{
            
        //}
        //catch {
        //    Response.Redirect("LoginPage.aspx");
        //}
        
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        //cmd.CommandText = "select * from userData";
        String T = "select Type from userData where UserName='" + name + "'";
       // Response.Write(T);
       // int MyInt = Convert.ToInt32(T.CompareTo("Teacher").ToString());
        if (T=="Teacher")
        {
            cmd.CommandText = "select * from userData";
        }
        else
        {
            cmd.CommandText = "select * from userData where UserName='" + name + "'";
        }

        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        userProfile.DataSource = dt;
        userProfile.DataBind();


        if (Session["New"] != null)
        {
            // L_welcome.Text += Session["New"].ToString();
        }
        else
        {
            Response.Redirect("LoginPage.aspx");
        }

    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("LoginPage.aspx");

    }

    public object Teacher { get; set; }
}