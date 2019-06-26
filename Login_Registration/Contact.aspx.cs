using System;
using System.Collections.Generic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Contact : System.Web.UI.Page
{
    int id = 0;
    SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Registration.mdf;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (connect.State == ConnectionState.Open)
        {
            connect.Close();
        }
        connect.Open();
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        Guid newGuid = Guid.NewGuid();
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        id = id + 1;
        cmd.CommandText = "insert into feedback values ('" + newGuid.ToString() + "','" + txtName.Text + "','" + txtEmail.Text + "','" + txtSubject.Text + "','" + txtComments.Text + "')";

        try
        {
            cmd.ExecuteNonQuery();
        }
        catch (Exception ex)
        {

            cmd.ExecuteNonQuery();
        }



        txtName.Text = "";
        txtEmail.Text = "";
        txtSubject.Text = "";
        txtComments.Text = "";

        Response.Write("<script language='javascript'>alert('Send feedback successfully!');</script>");

        display();

    }
    public void display()
    {
        SqlCommand cmd = connect.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from feedback";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

    }
}