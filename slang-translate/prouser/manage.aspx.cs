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
    protected void Page_Load(object sender, EventArgs e)
    {


        //حاول
        try
        {
            //تحقق ان قيمة العنصر اسم المستخدم هي نفس القيمة الجلسة المنشأة له
            lblUName.Text = Session["prouser"].ToString();
        }

            //والا
        catch
        {
            //ارساله الى الصفحة الرئيسة
            Response.Redirect("~/Default.aspx");
        }

        //اخفاء العناصر 
        Label1.Visible = false;
        Label2.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;

        //تعريف قيمة المتحول username 
        //داخل كود ال SqlDataSource1
        //الى عنصر اسم مسجل الدخول
        SqlDataSource1.DeleteParameters["username"].DefaultValue = lblUName.Text;
        //تعريف قيمة المتحول username 
        //داخل كود ال SqlDataSource2
        //الى عنصر اسم مسجل الدخول
        SqlDataSource2.UpdateParameters["username"].DefaultValue = lblUName.Text;
        
        //تغغير محاداه النص
        TextBox1.Style["text-align"] = "right";

     


    }


    //عند حدوث الاختيار ضمن العنصر GridView1
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       //اسناد قيمة الحقل رقم 2 الى العنصر label1
        Label1.Text = GV.SelectedRow.Cells[2].Text;
        
        
       
        //اظهار العناصر المسولة عن حذف الكلمة
        Label2.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;

    }

    //زر حذف الكلمة المختارة
    protected void Button2_Click(object sender, EventArgs e)
    {
        //انشاء الاتصال
        SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        //تسجيل الكود في قاعدة البيانات لتنفيذه
        SqlCommand del = new SqlCommand("DELETE  from [words] where word =(@word)", vid);
        //استنادا على قيمة المتحول
        del.Parameters.AddWithValue("@word", Label1.Text);
        //فتح الاتصال وتنفيذ الكود وثم اغلاق الاتصال
        vid.Open();
        del.ExecuteNonQuery();
        vid.Close();

        //تحديث البيانات في العنصر GV
        //وهو نوع gridview
        this.GV.DataBind();


    }


   
    //زر الاختيار
    protected void Button1_Click(object sender, EventArgs e)
    {
        //اذا كان العنصر GV
        //لا يحوي اي قيمة
        if (GV.Rows.Count == 0)
        {
            //اظهر النصر
            //الذي يقول ... لا توجد اي مصطلحات بحاجة الى قبول 
            Label5.Visible = true;

        }
        //اذا كان قيمة العنصر DropDownList1 
        //هي قبول مصطلحات
        if (DropDownList1.SelectedValue=="1")
        {
            //اظهار العنصر
            //بحيث اذا تم اختيار قيمة ما يظهر العناصر المسؤالة عن حذف وتأكيد الحذف
            GV.Visible = true;
            //اخفاء العناصر
            GridView1.Visible = false;
            Button4.Visible = false;
            Label4.Visible = false;
            TextBox1.Visible = false;

        }

            //اذا كانت قيمة العنصر DropDownList1
            //هي تعديل مصطلحات
        else if (DropDownList1.SelectedValue == "2")

        {
            //اخفاء العناصر
            GV.Visible = false;
            Label5.Visible = false;

            //اظهار العناصر
            //التي تم برمجة العنصر gridview 
            //ليقوم بتعديل المصطلحات عند الضغط
            GridView1.Visible = true;
            Button4.Visible = true;
            Label4.Visible = true;
            TextBox1.Visible = true;
            
        }

    }
    //زر عدم تأكيد الحذف
    protected void Button3_Click1(object sender, EventArgs e)
    {
        //لاشي فقط مجرد اعادة تحميل ليقوم صفحة كود البداية باخفاء العناصر المسؤول عن الحذف
    }
    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}