using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;

public static class DataAccess
{
    private static string myConnection;

    static DataAccess()
    {
        myConnection = WebConfigurationManager.ConnectionStrings["myConn"].ConnectionString;
    }
    
    public static DataTable LoadProducts(string Query)
    {
        List<Products> list = new List<Products>();
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(myConnection);
        conn.Open();
        SqlCommand cmd = new SqlCommand(Query, conn);
        dt.Load(cmd.ExecuteReader());
        conn.Close();
        return dt;
    }
    public static DataTable searchQuery(string searchtxt)
    {
        string Query = "Select * From Products WHERE PNAME LIKE" + "'%" + searchtxt + "%'";
        DataTable dt = new DataTable();
        SqlConnection conn = new SqlConnection(myConnection);
        conn.Open();
        SqlCommand cmd = new SqlCommand(Query, conn);
        dt.Load(cmd.ExecuteReader());
        conn.Close();
        return dt;
    }
    public static DataTable CreateUserQuey(string username, string password, string email, string fname, string lname)
    {

        string Query = "insert into Users(Username,Password,Email,fname,lname) values('" + username + "','" + password + "','" + email + "','" + fname + "','" + lname + "');";
        SqlConnection sqlConnection1 = new SqlConnection(myConnection);
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand(Query, sqlConnection1);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = Query;
        cmd.Connection = sqlConnection1;
        sqlConnection1.Open();
        cmd.ExecuteNonQuery();
        sqlConnection1.Close();
        return dt;
    }
    public static DataTable AddAdmin(string username, string password)
    {

        string Query = "insert into AdminUser(username,password) values('" + username + "','" + password + "');";
        SqlConnection sqlConnection1 = new SqlConnection(myConnection);
        DataTable dt = new DataTable();
        SqlCommand cmd = new SqlCommand(Query, sqlConnection1);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = Query;
        cmd.Connection = sqlConnection1;
        sqlConnection1.Open();
        cmd.ExecuteNonQuery();
        sqlConnection1.Close();
        return dt;
    }
    public static DataTable AddProduct(string Pname, double Price,string Desc,string Pic,int Quantity)
    {

        string Query = "insert into T_Product(PNAME,Picture,Price,[DESC],Quantity) values('" + Pname + "','" + Pic + "','" + Price + "','" + Desc + "','" + Quantity+ "'); ";
        SqlConnection sqlConnection1 = new SqlConnection(myConnection);
        DataTable dt = new DataTable(); 
        SqlCommand cmd = new SqlCommand(Query, sqlConnection1);
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = Query;
        cmd.Connection = sqlConnection1;
        sqlConnection1.Open();
        cmd.ExecuteNonQuery();
        sqlConnection1.Close();
        return dt;
    }
    

    public static string GenerateName()
    {
        Random r = new Random();
        string[] consonants = { "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "l", "n", "p", "q", "r", "s", "sh", "zh", "t", "v", "w", "x" ,"1","2","3","4"};
        string[] vowels = { "a", "e", "i", "o", "u", "ae", "y" };
        string Name = "";
        Name += consonants[r.Next(consonants.Length)].ToUpper();
        Name += vowels[r.Next(vowels.Length)];
        int b = 2; //b tells how many times a new letter has been added. It's 2 right now because the first two letters are already in the name.
        while (b < 8)
        {
            Name += consonants[r.Next(consonants.Length)];
            b++;
            Name += vowels[r.Next(vowels.Length)];
            b++;
        }

        return Name+".jpg";


    }
}


