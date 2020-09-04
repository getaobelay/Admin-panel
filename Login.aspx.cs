using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Loginbtn_Click(object sender, EventArgs e)
    {
        string myConnection = WebConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
        string Query = "Select * From AdminUser where username = @Username and password = @Password";
        SqlConnection conn = new SqlConnection(myConnection);
        SqlCommand cmd = new SqlCommand(Query, conn);
        cmd.Parameters.AddWithValue("Username", txtUserName.Text);
        cmd.Parameters.AddWithValue("Password", txtPass.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
        if (dt.Rows.Count > 0)
        {
            Session["Login"] = txtUserName.Text;
            Response.Redirect("Default.aspx");
            Session.RemoveAll();
        }
        else
        {
            ltlMsg.Text = "שם משתמש או סיסמא לא נכונים";
        }
    }
}