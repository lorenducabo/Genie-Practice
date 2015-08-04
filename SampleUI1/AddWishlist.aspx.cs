using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class AddWishlist : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(Helper.GetCon());
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddWishlist_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand com = new SqlCommand();
        com.Connection = con;
        com.CommandText = "INSERT INTO Wishlist VALUES (@Name, @Description)";

        com.Parameters.AddWithValue("@Name", txtName.Text);
        com.Parameters.AddWithValue("@Description", txtDesc.Text);
        com.ExecuteNonQuery();

        con.Close();
        Response.Redirect("Wishlist.aspx");
    }
}