using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Style["text-align"] = "right";
        TextBox2.Style["text-align"] = "right";

        if (Page.IsPostBack == true)

        {

            Label1.Text = "تم التسجيل بنجاح";

        }


        try
        {
            lblUName.Text = Session["prouser"].ToString();
        }

        catch
        {

            Response.Redirect("~/Default.aspx");
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");

            SqlCommand insert = new SqlCommand("insert into [words] (word, explanation, type, place, by_username, accept) values (@word,@explanation,@type,@place,@username, 'yes')", vid);

            insert.Parameters.AddWithValue("@word", TextBox1.Text);
            insert.Parameters.AddWithValue("@explanation", TextBox2.Text);
            insert.Parameters.AddWithValue("@type", DropDownList3.SelectedValue);
            insert.Parameters.AddWithValue("@place", DropDownList2.SelectedValue);
            insert.Parameters.AddWithValue("@username", lblUName.Text);

            vid.Open();
            insert.ExecuteNonQuery();
            vid.Close();

            if (IsPostBack)
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
            }

        }
        catch
        {
            Label1.Text = "اسم المصطلح موجود مسبقا";

            TextBox1.Text = "";
            TextBox2.Text = "";
        }
       

    }
}