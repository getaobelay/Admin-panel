using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

public partial class UpdateOrder : System.Web.UI.Page
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
        if(sqlCon.State == ConnectionState.Closed)
        {
            sqlCon.Open();
        }
        SqlCommand sqlCmd = new SqlCommand(@"Update Orders SET OrderID = @OrderID,Quantity = @Qy, ProductID = @PID, Total = @Tot, WHERE OrderID = @OrderID", sqlCon);
        sqlCmd.Parameters.AddWithValue("@Orderid", hf.Value==""?0:Convert.ToInt32(hf.Value));
        sqlCmd.Parameters.AddWithValue("@Qy", txtQy.Text.Trim());
        sqlCmd.Parameters.AddWithValue("@PID", txtPID.Text.Trim());        
        if (hf.Value == "")
        {
        }
        else
        {
        }

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
        SqlDataAdapter sqlDa = new SqlDataAdapter("Select * From Orders", sqlCon);
        DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        sqlCon.Close();
        gvOrder.DataSource = dtbl;
        gvOrder.DataBind();

    }

    protected void btnCLear_Click(object sender, EventArgs e)
    {
        clear();
    }

    protected void btnDel_Click(object sender, EventArgs e)
    {
        if (sqlCon.State == ConnectionState.Closed)
            sqlCon.Open();
        SqlCommand sqlCmd = new SqlCommand("DELETE FROM Orders WHERE OrderID = @OID", sqlCon);
        sqlCmd.Parameters.AddWithValue("@OID", Convert.ToInt32(hf.Value));
        sqlCmd.ExecuteNonQuery();
        sqlCon.Close();
        clear();
        FillGridView();
        ltlSuccess.Text = "רשומה זו נמחקה";
    }
    public void clear()
    {
        hf.Value = "";
        txtCID.Text = "";
        txtOID.Text = "";
        ltlError.Text = ltlSuccess.Text = "";
        txtQy.Text = "";
        txtTotal.Text = "";
        txtPID.Text = "";
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
        SqlDataAdapter sqlDa = new SqlDataAdapter("Select * From Orders WHERE OrderID = @OrID", sqlCon);
        sqlDa.SelectCommand.Parameters.AddWithValue("@OrID", id);
        DataTable dtbl = new DataTable();
        sqlDa.Fill(dtbl);
        sqlCon.Close();
        hf.Value = id.ToString();
        txtCID.Text = dtbl.Rows[0]["CustomerID"].ToString();
        txtOID.Text = dtbl.Rows[0]["OrderID"].ToString();
        txtPID.Text = dtbl.Rows[0]["ProductID"].ToString();
        txtQy.Text = dtbl.Rows[0]["Quantity"].ToString();
        txtTotal.Text = (Convert.ToInt32(dtbl.Rows[0]["Quantity"]) * 3).ToString();
        btnUpdate.Text = "עדכן";
        btnDel.Enabled = true;
    }
}