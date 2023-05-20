using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    //كود بداية الصفحة
    protected void Page_Load(object sender, EventArgs e)
    {
        //تغغير محاذاة العنصر
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

      


    }


    //زر طلب العضوية المميزة
    protected void Button1_Click(object sender, EventArgs e)
    {
       

        //انشاء الاتصال
            SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");

        //الكود اختيار الحق استنادا على الحقل username 
        //للمستخدم المسجل 
        //التي ستكون مهمة جدا بتحديد اذا المستخدم ارسل طلب سابق او لم يرسل
            SqlCommand select = new SqlCommand("  select [why_you_want] from  [permission] where [UserName] = @username ", vid);

        //الكود تحديد بقاعدة البياات استادا الى اسم المستخدم المسجل دخول
            SqlCommand update = new SqlCommand("  UPDATE  [permission] SET [why_you_want] = @want where [UserName] = @username  ", vid);

        //استنادا الى قيمة العناصر التالية
            update.Parameters.AddWithValue("@username", lblUName.Text);
            select.Parameters.AddWithValue("@username", lblUName.Text);
            update.Parameters.AddWithValue("@want", TextBox3.Text);

        //وضع قيمة المتحول Select 
            // داخل قيمة متحول اخر نوع SqlDataAdapter
            SqlDataAdapter da = new SqlDataAdapter(select);
            DataTable dt = new DataTable();
        //تعبئة قيمة المتحول بالكود النتاتج من تعليمة ال sql المنفذة
            da.Fill(dt);






            //اذا كان الحقل why_you_want في قاعدة البينات
        //يساوي الصفر
        //علما ان قيمته الافتراضية يساوي الصفر
            if (dt.Rows[0]["why_you_want"].ToString() == "0")
            {



                //فتح الاتصال وانفيذ الكود ذو الاسم update
                vid.Open();
                update.ExecuteNonQuery();
                //عرض النص والغلاق الاتصال
                Label1.Text = "تم الارسال  الطلب بنجاح ستصلك رسالة رد بخصوص هذا الطلب";
                vid.Close();

                TextBox3.Text = "";
               
            }

                //والا
            else
            {
                
                //عرض النص
                Label1.Text = "لقد ارسلت طلب مسبقا الرجاء الانتظار ريثما يتم الموافقة عليه , ستصلك رسالة الى بريدك الوارد بهذا الخصوص ";

                TextBox3.Text = "";
            }
            
        
    }
   
}