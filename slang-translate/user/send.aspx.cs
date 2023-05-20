using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    //بداية الصفحة كود
    protected void Page_Load(object sender, EventArgs e)
    {
        //تغير محاذات العناصر الى اليمين
        TextBox1.Style["text-align"] = "right";
        TextBox2.Style["text-align"] = "right";
        TextBox3.Style["text-align"] = "right";

        //حاول
        try
        {
            //تحقق ان قيمة العنصر اسم المستخدم هي نفس القيمة الجلسة المنشأة له
            lblUName.Text = Session["user"].ToString();
        }

            //والا
        catch
        {
            //ارساله الى الصفحة الرئيسة
            Response.Redirect("~/Default.aspx");
        }


        //قيمة العنصر اسم المرسل هي نفسها قيمة عنصر اسم مسجل الدخول
        Label2.Text = lblUName.Text;


    }


    //زر ارسال الرسالة
    protected void Button1_Click(object sender, EventArgs e)
    {
        //حاول
        try
        {
            //انشاء الاتصال
            SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");

            //ادخل الكود في قاعدة البيانات 
            //ادخل في قاعدة البينات في الجدول message
            SqlCommand insert = new SqlCommand("insert into [message] (subject, message, sender, receiver) values (@subject,@message,@sender,@receiver)", vid);
            //استاندا الى قيمة العناصر
            insert.Parameters.AddWithValue("@subject", TextBox2.Text);
            insert.Parameters.AddWithValue("@message", TextBox3.Text);
            insert.Parameters.AddWithValue("@sender", Label2.Text);
            insert.Parameters.AddWithValue("@receiver", TextBox1.Text);
           

            //فتح الاتصال وتنفيذ كود الادخال وثم اغلاق الاتصال
            vid.Open();
            insert.ExecuteNonQuery();
            vid.Close();

            //اذا تم تحميل الصفحة بنجاح
            if (IsPostBack)
            {
                //غير قيمة العناصر الى فراغ
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
               //عرض النص
                Label1.Text = "تم الارسال بنجاح";
            }

        }
            //ان حصل خطأ
        catch
        {
            //عرض النص
            Label1.Text = "اسم المستخدم المستقبل غير مسجل لدينا";

            
        }
    }
}