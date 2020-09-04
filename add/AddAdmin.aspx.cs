using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_AddAdmin : System.Web.UI.Page
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
        
    
    }
    void clear()
    {
        txtUsername.Text = "";
        txtPassword.Text = "";
    }
    void add()
    {
        DataAccess.AddAdmin(txtUsername.Text,txtPassword.Text);
        string script = ("alert(\"אדמין נוסף\");");
        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
    }
}