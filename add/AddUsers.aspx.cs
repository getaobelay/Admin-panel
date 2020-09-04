using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddUsers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {

        add();

    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        clear();
    }
    void clear()
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
        txtLname.Text = "";
        txtFname.Text = "";
        txtEmail.Text = "";
    }
    void add()
    {
        DataAccess.CreateUserQuey(txtUsername.Text, txtPassword.Text, txtEmail.Text, txtFname.Text, txtLname.Text);
        string script = ("alert(\"משתמש נוסף בהצלחה\");");
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
    }
}