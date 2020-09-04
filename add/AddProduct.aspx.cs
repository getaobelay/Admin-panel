using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddProduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        string fileName = DataAccess.GenerateName();
        fu_image.SaveAs(Request.PhysicalApplicationPath + "./images/" + fileName);
        Response.Write(DataAccess.GenerateName());
        DataAccess.AddProduct(txtPNAMe.Text, Convert.ToDouble(txtPrice.Text), txtDesc.Text, fileName, int.Parse(txtQuantity.Text));
        string script = "alert(\"פריט זה נוסף בהצלחה\");";
        ScriptManager.RegisterStartupScript(this, GetType(),"ServerControlScript", script, true);
        txtDesc.Text = "";
        txtPNAMe.Text = "";
        txtPrice.Text = "";
        txtQuantity.Text = "";
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtDesc.Text = "";
        txtPNAMe.Text = "";
        txtPrice.Text = "";
        txtQuantity.Text = "";
    }
}