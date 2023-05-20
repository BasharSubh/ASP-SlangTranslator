using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
{
    //بداية الصفحة
    protected void Page_Load(object sender, EventArgs e)
    {
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



        //تغغير محاذا النص الى الايمين
        TextBox1.Style["text-align"] = "right";
        TextBox2.Style["text-align"] = "right";

        //اذا اعادت الصفحة التحميل من دون اخطاء
        if (Page.IsPostBack == true)

        {
            //عرض النص
            Label1.Text = "تم التسجيل بنجاح";

        }
    }
    //زر اضافة المصطلح
    protected void Button1_Click(object sender, EventArgs e)
    {

        //كود التحقق يساوي العنصر textbox3
        captcha1.ValidateCaptcha(TextBox3.Text.Trim());
        //اذا كان الكود المدخل مع العنصر متوافقين
        if (captcha1.UserValidated)
        {
            //حاول
            try
            {
                //انشاء الاتصال
                SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
                //الكود في قاعدة البيانات
                //حيث ادخل مصطلح جيديد حيث النوع والشرح وو
                //هنا يتم تسجيل امصطلح جديد دون الحاجة الى قبول من الادارة
                SqlCommand insert = new SqlCommand("insert into [words] (word, explanation, type, place, by_username, accept) values (@word,@explanation,@type,@place,@username, 'yes')", vid);
                //استادا الى القيم في العناصر
                insert.Parameters.AddWithValue("@word", TextBox1.Text);
                insert.Parameters.AddWithValue("@explanation", TextBox2.Text);
                insert.Parameters.AddWithValue("@type", DropDownList3.SelectedValue);
                insert.Parameters.AddWithValue("@place", DropDownList2.SelectedValue);
                insert.Parameters.AddWithValue("@username", lblUName.Text);
                //فتح الاتصال وتنفيذ التعليمة ثم اغلاق الاتصال
                vid.Open();
                insert.ExecuteNonQuery();
                vid.Close();

                //اذا تم اعادة التحميل بنجاح
                if (IsPostBack)
                {
                    //احذف القيم في العناصر التالية
                    TextBox1.Text = "";
                    TextBox2.Text = "";
                    TextBox3.Text = "";
                }

            }

            //اذا حدث خطا
            catch
            {
                //غير النص الى
                Label1.Text = "اسم المصطلح موجود مسبقا";
                //احذف القيم في العناصر التالية
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
            }




        }
        //والا لم يكن الكود التحقق المدخل صحيح
        else
        {
            //غير لون العنصر 
            Label1.ForeColor = System.Drawing.Color.Red;
            //عرض النص
            Label1.Text = "الكود المدخل غير صحيح الرجاء اعادة المحاولة";
            //حذف القيمة المدخلة في مربع ادخال كود التحقق
            TextBox3.Text = "";

        }
        
        
        
        
        
        
        
        
        
       

    }
}