using System;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    SqlConnection connection2 = new SqlConnection(ConfigurationManager.ConnectionStrings["condata"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Databaseler();
        Delete();
    }      
    public void Delete()
    {
        string Id = Request.QueryString["d_id"];
        string Is = Request.QueryString["d_is"];
        if (Is == "sil")
        {
            string deletequery = "DELETE FROM DB WHERE ID = @id";
            SqlCommand command = new SqlCommand(deletequery, connection);
            command.Parameters.AddWithValue("@id", Id);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("~/Database.aspx");
        }      
    }
    public void Databaseler()
    {
        string query = "SELECT * FROM DB";
        SqlCommand command = new SqlCommand(query, connection);
        connection.Open();
        SqlDataReader read = command.ExecuteReader();
        DBList.DataSource = read;
        DBList.DataBind();
        connection.Close();
    }

    protected void NewDB_Click(object sender, EventArgs e)
    {
        string createquery = "CREATE DATABASE "+DBName.Text;
        SqlCommand command = new SqlCommand(createquery, connection2);
        connection2.Open();      
        command.ExecuteNonQuery();
        connection2.Close();
        ConnectionStringSettings connectionstring = new ConnectionStringSettings("con"+DBName.Text, "Data Source=" + "DESKTOP-9VR9BKI" + ";" + "Initial Catalog=" + DBName.Text + ";" + "Integrated Security=" + "True" + ";");
    }

    protected void DeleteDB_Click(object sender, EventArgs e)
    {
        string createquery = "DROP DATABASE "+DBName.Text;
        SqlCommand command = new SqlCommand(createquery, connection2);
        connection2.Open();
        command.ExecuteNonQuery();
        connection2.Close();
    }
}