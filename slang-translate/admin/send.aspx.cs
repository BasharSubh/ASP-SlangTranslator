using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Style["text-align"] = "right";
        TextBox2.Style["text-align"] = "right";
        TextBox3.Style["text-align"] = "right";

        try
        {
            lblUName.Text = Session["admin"].ToString();
        }

        catch
        {

            Response.Redirect("~/Default.aspx");
        }

        Label2.Text = lblUName.Text;


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

            SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");

            
            SqlCommand insert = new SqlCommand("insert into [message] (subject, message, sender, receiver) values (@subject,@message,@sender,@receiver)", vid);

            insert.Parameters.AddWithValue("@subject", TextBox2.Text);
            insert.Parameters.AddWithValue("@message", TextBox3.Text);
            insert.Parameters.AddWithValue("@sender", Label2.Text);
            insert.Parameters.AddWithValue("@receiver", TextBox1.Text);
           


            vid.Open();
            insert.ExecuteNonQuery();
            vid.Close();

            if (IsPostBack)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
               
                Label1.Text = "تم الارسال بنجاح";
            }

        }
        catch
        {
            Label1.Text = "اسم المستخدم المستقبل غير مسجل لدينا";

            
        }
    }
}