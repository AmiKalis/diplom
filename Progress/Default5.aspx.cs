using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Default5 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string cmdText = "INSERT INTO Mark (IDStudent, IDSubject, Mark) VALUES (@IDStudent, @IDSubject, @Mark)";

        // создаем подключение
        var connstr = ConfigurationManager.ConnectionStrings["ProgressConnectionString"].ConnectionString;
        var conn = new SqlConnection(connstr);
        conn.Open();

        var cmd = new SqlCommand(cmdText, conn);

        cmd.Parameters.Add(new SqlParameter("@IDStudent", DropDownList1.Text));
        cmd.Parameters.Add(new SqlParameter("@IDSubject", DropDownList2.Text));
        cmd.Parameters.Add(new SqlParameter("@Mark", TextBox1.Text));

        cmd.ExecuteNonQuery();
        conn.Close();
    }
}