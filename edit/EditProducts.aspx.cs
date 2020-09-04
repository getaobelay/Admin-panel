
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class EditProducts : System.Web.UI.Page
{
    SqlConnection sqlCon = new SqlConnection(WebConfigurationManager.ConnectionStrings["myConn"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            btnDel.Enabled = false;
            FillGridView();
        }
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (sqlCon.State == ConnectionState.Closed)
        {
            sqlCon.Open();
        }
        SqlCommand sqlCmd = new SqlCommand(@"Update T_Product SET Quantity = @Qy, PNAME = @PRODNAME, Price = @PRI,DESC = @ProDESC, WHERE PID = @ProdID", sqlCon);
        sqlCmd.Parameters.AddWithValue("@ProdID", hf.Value == "" ? 0 : Convert.ToInt32(hf.Value));
        sqlCmd.Parameters.AddWithValue("@Qy", txtQuantity.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@PRODNAMe", txtPnames.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@ProDESC", txtDesc.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@PRI", txtPrice.Text.Trim());
        sqlCon.Close();
        string id = hf.Value;
        clear();
        if (id == "")
            ltlSuccess.Text = "נשמר בהצלחה";
        else
            ltlError.Text = "לא נשמר נסה עוד הפעם";
        FillGridView();

    }

    void FillGridView()
    {
        if (sqlCon.State == ConnectionState.Closed)
            sqlCon.Open();
        SqlDataAdapter sqlDa = new SqlDataAdapter("Select * From T_Product", sqlCon);
        DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        sqlCon.Close();
        gvProduct.DataSource = dtbl;
        gvProduct.DataBind();

    }

    protected void btnCLear_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        if (sqlCon.State == ConnectionState.Closed)
            sqlCon.Open();
        SqlCommand sqlCmd = new SqlCommand("DELETE FROM T_Product WHERE PID = @PID", sqlCon);
        sqlCmd.Parameters.AddWithValue("@PID", Convert.ToInt32(hf.Value));
        sqlCmd.ExecuteNonQuery();
        sqlCon.Close();
        clear();
        FillGridView();
        ltlSuccess.Text = "רשומה זו נמחקה";
    }
    public void clear()
    {
        hf.Value = "";
        txtDesc.Text = "";
        txtPnames.Text = "";
        ltlError.Text = ltlSuccess.Text = "";
        txtPrice.Text = "";
        txtQuantity.Text = "";
        btnUpdate.Text = "עדכן";
        btnDel.Enabled = false;

    }

    protected void updLink(object sender, EventArgs e)
    {
        if (sqlCon.State == ConnectionState.Closed)
        {
            sqlCon.Open();
        }

        int id = Convert.ToInt32((sender as LinkButton).CommandArgument.ToString());
        SqlDataAdapter sqlDa = new SqlDataAdapter("Select * From T_Product ers WHERE PID = @PID", sqlCon);
        sqlDa.SelectCommand.Parameters.AddWithValue("@PID", id);
        DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        sqlCon.Close();
        hf.Value = id.ToString();
        txtQuantity.Text = dtbl.Rows[0]["Quantity"].ToString();
        txtPrice.Text = dtbl.Rows[0]["Price"].ToString();
        txtPnames.Text = dtbl.Rows[0]["PNAME"].ToString();
        txtDesc.Text = dtbl.Rows[0]["DESC"].ToString();
        btnUpdate.Text = "עדכן";
        btnDel.Enabled = true;
    }
}