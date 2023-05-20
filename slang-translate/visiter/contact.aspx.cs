using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{

    //بداية الصفحة
    protected void Page_Load(object sender, EventArgs e)
    {
        //تغيير محاذاة العناصر الى اليمين
        TextBox1.Style["text-align"] = "right";
        TextBox2.Style["text-align"] = "right";
        TextBox3.Style["text-align"] = "right";
    }

    //زر ارسال الرسالة
    protected void Button1_Click(object sender, EventArgs e)
    {
        //حاول
        try
        {//انشاء الاتصال
            SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
            //كود الادخال
            SqlCommand insert = new SqlCommand("insert into [message] (name, subject, message, email, receiver) values (@name,@subject,@message,@email,'admin')", vid);
            //استنادا الى قيم العناصر
            insert.Parameters.AddWithValue("@name", TextBox1.Text);
            insert.Parameters.AddWithValue("@subject", TextBox2.Text);
            insert.Parameters.AddWithValue("@message", TextBox3.Text);
            insert.Parameters.AddWithValue("@email", TextBox4.Text);
            
            //فتح الاتصال وتنفيذ الكود ومن ثم اغلاق التصال
            vid.Open();
            insert.ExecuteNonQuery();
            vid.Close();

            //اذا تم تحميل الصفحة بنجاح
            if (IsPostBack)
            {
                //احذف قيم العناصر المدخلة
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                //عرض النص
                Label1.Text = "تم الارسال بنجاح";
            }

        }
            //اذا حصل خطأ
        catch
        {
            //عرض النص
            Label1.Text = "خطأ في الارسال";
            //حذف قيمة العناصر المدخلة
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
    }
}