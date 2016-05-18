using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default4 : System.Web.UI.Page
{
    // накопление информации для элементов управления
    private DataSet ds = new DataSet();

    private SqlDataAdapter da;
    private void CreateDataAdapter(SqlConnection conn)
    {
        da = new SqlDataAdapter("SELECT NameSubject", conn);
        new SqlCommandBuilder(da);
    }

    private void UpdateDateSet()
    {
        // создаем подключение
        string connstr = ConfigurationManager.ConnectionStrings["ProgressConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlDataAdapter da = new SqlDataAdapter(
            "SELECT NameSubject From Subject", conn);
        //вызов команды для заполнения данных
        da.Fill(ds, "ProgressConnectionString");
        //закрываем подключение
        conn.Close();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        UpdateDateSet();
        this.GridView1.DataSource = ds;
        this.GridView1.DataMember = "ProgressConnectionString";
        this.GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string cmdText = "INSERT INTO Subject (NameSubject) VALUES (@NameSubject)";

        // создаем подключение
        string connstr = ConfigurationManager.ConnectionStrings["ProgressConnectionString"].ConnectionString;
        SqlConnection conn = new SqlConnection(connstr);
        conn.Open();

        SqlCommand cmd = new SqlCommand(cmdText, conn);

        cmd.Parameters.Add(new SqlParameter("@NameSubject", this.TextBox1.Text));
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}