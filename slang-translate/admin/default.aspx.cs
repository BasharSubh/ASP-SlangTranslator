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

    //كود صفحة البداية
    protected void Page_Load(object sender, EventArgs e)
    {

        //حاول
        try
        {
            //تحقق ان قيمة العنصر اسم المستخدم هي نفس القيمة الجلسة المنشأة له
            lblUName.Text = Session["admin"].ToString();
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

        //تعريف متحولات الحذف المضافة لالعنصر SqlDataSource1 للاتصال بقاعدة البيانات
        SqlDataSource1.DeleteParameters["username"].DefaultValue = lblUName.Text;
        //تعريف متحولات التعديل المضافة لالعنصر SqlDataSource2 للاتصال بقاعدة البيانات
        SqlDataSource2.UpdateParameters["username"].DefaultValue = lblUName.Text;

       

        //تغير محاذاة العناصر النص الى اليمين
        TextBox1.Style["text-align"] = "right";
        TextBox2.Style["text-align"] = "right";
        TextBox3.Style["text-align"] = "right";


    }
   
    
    //كود العنصر جريد فيو واحد الخاص بجلب البيانات من قاعدة المعطيات
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       //اخد قيمة تاني حقل في العنصر جريد فيو 1 الى عنصر النص لابل 1
        //هذه القيمة هي المفتاح الاساسي حيث يتم تنفيذ استعلامات حذف وتعديل من خلالها 
        Label1.Text = GV.SelectedRow.Cells[2].Text;
        
        
       
        //اظهار عناصر تأكيد الحذف عند الضغط على اختيار لاي قيمة في النعصر
        Label2.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;

    }

    //كود العنصر جريد فيو 2 الخاص بجلب البيانات من قاعدة المعطيات
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //اخد قيمة تاني حقل في العنصر جريد فيو 2 الى عنصر النص لابل 1
        //هذه القيمة هي المفتاح الاساسي حيث يتم تنفيذ استعلامات حذف وتعديل من خلالها 
        Label1.Text = GridView1.SelectedRow.Cells[2].Text;



        //اظهار عناصر قبول المصطلحات او حذف
        Label2.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;

    }

    //زر الحذف
    protected void Button2_Click(object sender, EventArgs e)
    {
        //انشاء الاتصال
        SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        //تاسيس كود الحذف في قاعدة البيانات
        SqlCommand del = new SqlCommand("DELETE  from [words] where word =(@word)", vid);
        //استنادا على القيمة الموجوة في العنصر Label1.Text
        //الذي تكلمنا عنه سابقا حيث هو مفتاح اساسي لعملية الحذف
        del.Parameters.AddWithValue("@word", Label1.Text);

        //فتح الاتصال وتنفيذ كود الحذف واغلاق الاتصال
        vid.Open();
        del.ExecuteNonQuery();
        vid.Close();

        //تحديث العناصر جريد فيو الخاصين بجلب البيانات من قاعدة البيانات
        this.GV.DataBind();
        this.GridView1.DataBind();


    }


   
    //زر عدم تاكيد الحذف
    protected void Button3_Click1(object sender, EventArgs e)
    {
        
        //لاشيء حيث عند الضغط عليه تتم اعادة تحميل الصفحة حيث يتم اخفاء عناصر الحذف 
        

    }

    //زر البحث
    protected void Button4_Click(object sender, EventArgs e)
    {
        //تحديث الجريد فيو 1
        this.GridView1.DataBind();
        //اذا كان العنصر لا يحوي اي نتائج 
        if (GridView1.Rows.Count == 0)
        {

            //اعرض الرسالة
            Label5.Text = " ... لا توجد اي نتائج للبحث ";

        }
            //والا
        else
        {
            //افرغ قيمة العنصر من النص
            Label5.Text = "";
        }

    }
    
    //عنصر القائمة يتفعل حين تغير بين القيم اي الاختيار
    protected void myListDropDown_Change(object sender, EventArgs e)
    {

        //افرغ العنصر رسائل الخطأ من قيمته حين تغيير في قيمة العنصر القائمة
        Label6.Text = "";
        //حدث العناصر حيث يتم جلب قيم جديدة
        GV.DataBind();
        GridView1.DataBind();

        //اذا كان العنصر جريد فيو GV خالي من القيمة و الاختيار قبول مصطلحات مفعل ضمن القائمة
        if (GV.Rows.Count == 0 && DropDownList1.SelectedValue == "1")
        {
            //عرض الرسالة
            Label5.Text = "... لا توجد اي مصطلحات بحاجة الى قبول ";

        }

        //اذا كان الاختيار قبول مصطلحات مفعل ضمن القائمة
        if (DropDownList1.SelectedValue == "1")
        {
            //اظهر العناصر المسؤولة عن اظهار النتائج
            GV.Visible = true;

            //اخفاء جميع العناصر في الصفحة حيث لافائدة من ظهورهم اثناء الاختيار قبول مصطلحات
            GridView1.Visible = false;
            Button4.Visible = false;
            Label4.Visible = false;
            TextBox1.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label6.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            Button5.Visible = false;
            GridView3.Visible = false;
        }

            //اذا كان الاختيار تعديل وحذف مصطلحات مفعل ضمن القائمة
        else if (DropDownList1.SelectedValue == "2")
        {
            //افرغ العنصر من النص وهو العنصر لعرض رسائل خطا
            Label5.Text = "";

            

           //عرض الجريد فيو المسؤولة عن اظهار النتائج
            GridView1.Visible = true;
            //عرض الازرار ومربع النص المسؤول عن عمليه البحث عن المصطلح للتعديل او الحذف
            Button4.Visible = true;
            Label4.Visible = true;
            TextBox1.Visible = true;


            //اخفاء العناصر الصفحة التي لا داعي لاظهارها هنا وهي عناصر اضافة كلمة
            GV.Visible = false;
            TextBox2.Visible = false;
            TextBox3.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label6.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            Button5.Visible = false;
            GridView3.Visible = false;
        }
        //اذا كان الاختيار اضافة مصطلحات  مفعل ضمن القائمة
        else if (DropDownList1.SelectedValue == "3")
        {
            TextBox1.Text = "";
            //افراغ النص في العنصر
            Label5.Text = "";
            //اخفاء العناصر التي لا داعي لظهورها هنا وهي عناصر التعديل والحذف والبحث
            GridView1.Visible = false;
            Button4.Visible = false;
            Label4.Visible = false;
            TextBox1.Visible = false;
            GV.Visible = false;
            GridView3.Visible = false;
            //اظهار العناصر المسؤولة عن اضافة مصطلح جديد وهي الاسم والشرح والزر اضافة بالاضافة الى قائمة عدد 2 حيث يتم ربطها بقاعدة البيانات لجلب نتائج من الجدول المكان والجدول النوع
            TextBox2.Visible = true;
            TextBox3.Visible = true;
            Label8.Visible = true;
            Label9.Visible = true;
            Label10.Visible = true;
            Label11.Visible = true;
            Label6.Visible = true;
            DropDownList4.Visible = true;
            DropDownList5.Visible = true;
            Button5.Visible = true;
        }

         
        else if (DropDownList1.SelectedValue == "4")
        {

            Label5.Text = "";
            TextBox1.Text = "";
            GridView1.Visible = false;
          

            TextBox2.Visible = false;
            TextBox3.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label6.Visible = false;
            DropDownList4.Visible = false;
            DropDownList5.Visible = false;
            Button5.Visible = false;
            GV.Visible = false;

         

            GridView3.Visible = true;
            Label4.Visible = true;
            TextBox1.Visible = true;
            Button4.Visible = true;
        }
          

            //ان كان الخيار الرجاء الاختيار مفعل
        else if (DropDownList1.SelectedValue == "0")
        {
            //اعد تحميل الصفحة
            Response.Redirect("~/admin/Default.aspx");
        }
    }


    //زر اضافة مصطلح جديد
    protected void Button5_Click(object sender, EventArgs e)
    {
        //اذا كان العنصر المصطلح او العنصر الشرح فارغيين
        if ((TextBox3.Text == "") ||  (TextBox2.Text == ""))
        {
            //اظهر رسالة خطأ
            Label6.Text = "جميع الحقول مطلوبة ";

        }
            

        
            //والا
        else
        {
            //حاول
            try
            {
                //انشاء الاتصال
                SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
                //اضافة كود الاضافة الخاص بقاعدة البنايات
                SqlCommand insert = new SqlCommand("insert into [words] (word, explanation, type, place, by_username, accept) values (@word,@explanation,@type,@place,@username,'yes')", vid);
                //استنادا الى قيم العناصر التالية
                insert.Parameters.AddWithValue("@word", TextBox3.Text);
                insert.Parameters.AddWithValue("@explanation", TextBox2.Text);
                insert.Parameters.AddWithValue("@type", DropDownList4.SelectedValue);
                insert.Parameters.AddWithValue("@place", DropDownList5.SelectedValue);
                insert.Parameters.AddWithValue("@username", lblUName.Text);
                //فتح الاتصال وتنفيذ التعليمة واغلاق الاتصال
                vid.Open();
                insert.ExecuteNonQuery();
                vid.Close();

                //اذا تم اعادة التحميل للزر بنجاح
                if (IsPostBack)
                {
                    //افرغ حقول المصطلح والشرح
                    TextBox3.Text = "";
                    TextBox2.Text = "";
                    //اظهار النص
                    Label6.Text = "تم الحفظ";

                }

            }
                //ان حصل خطأ
            catch
            {
                //اظهر النص
                Label6.Text = "اسم المصطلح موجود مسبقا";
                //افرغ حقول المصطلح والشرح
                TextBox3.Text = "";
                TextBox2.Text = "";
            }
        }


       
    }
  
        
}