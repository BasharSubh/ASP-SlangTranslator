using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Default2 : System.Web.UI.Page
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

        //اخفاء عناصر المسؤولة عن سحب العضوية المميزة او ترفيع او رفض طلب العضوية المميزة او تاكيد
        Label2.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;
        Label5.Visible = false;
        Button6.Visible = false;
        Button5.Visible = false;

        //تحديث جميع عناصر الاظهار البيانات من قاعدة البيانات
        this.GridView1.DataBind();
        this.GridView2.DataBind();
        this.GridView3.DataBind();
        this.GridView4.DataBind();
        this.GridView5.DataBind();
        this.GridView6.DataBind();

    }
 
    //زر عدم قبول طلب العضوية المميزة
    protected void Button2_Click(object sender, EventArgs e)
    {
        //تاسيس الاتصال بقاعدة البيانات
       SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        //كود التحديث في قاعدة البينات لاتعديل على الحقل قبول
        SqlCommand up = new SqlCommand("UPDATE [permission] set [accept] = 'no' WHERE [id] = @originalid insert into [message] (subject, message, sender, receiver) values ('طلب العضوية المميزة','تم رفض طلبك لاسباب تتعلق بقلة المساهمة في الموقع ',@user ,@originalusername)", vid);
        //استنادا الى القيم 
        up.Parameters.AddWithValue("@originalusername", Label1.Text);
        up.Parameters.AddWithValue("@user", lblUName.Text);
        up.Parameters.AddWithValue("@originalid", Label3.Text);
        //فتح الاتصال وتنفيذ الكود وثم اغلاق الاتصال
        vid.Open();
        up.ExecuteNonQuery();
        vid.Close();


       //تحديث الجريد فيو الخاصة بعرض طلبات الترفيع من قاعدة البيانات
        this.GridView1.DataBind();
    }

    //زر تأكيد ترفيع المستخدم
    protected void  Button3_Click1(object sender, EventArgs e)
{
    //تاسيس الاتصال بقاعدة البيانات
         SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
         //كود التحديث في قاعدة البينات لاتعديل على الحقل قبول
        SqlCommand up = new SqlCommand("UPDATE [permission] set [permission] = 'prouser' , [accept] = 'yes' WHERE [id] = @originalid insert into [message] (subject, message, sender, receiver) values ('طلب العضوية المميزة','تم قبول طلبك واصبحت الان من المستخدمين المميزين',@user ,@originalusername)", vid);
        //استنادا الى القيم 
        up.Parameters.AddWithValue("@originalusername", Label1.Text);
        up.Parameters.AddWithValue("@user", lblUName.Text);
        up.Parameters.AddWithValue("@originalid", Label3.Text);
        //فتح الاتصال وتنفيذ الكود وثم اغلاق الاتصال
        vid.Open();
        up.ExecuteNonQuery();
        vid.Close();


        //تحديث الجريد فيو الخاصة بعرض طلبات الترفيع من قاعدة البيانات
        this.GridView1.DataBind();

}

    //عنصر القائمة للاختيار بين خيارات ادارة المستخدمين
    protected void myListDropDown_Change(object sender, EventArgs e)
    {
        //تحديث الجريد فيو الخاصة بعرض طلبات الترفيع من قاعدة البيانات
        GridView1.DataBind();

        //اذا كانت القيمة المختارة هي الرجاء الاختيار
        if (DropDownList1.SelectedValue == "0")
        {
            //اعد تحميل الصفحة
            Response.Redirect("~/admin/manage_user.aspx");
        }

        //اذا كانت القيمة المختارة هي قبول او رفض طلبات الترفيع للعضوية المميزة 
        if (DropDownList1.SelectedValue == "1")
        {
            //اخفاء العناصر المسؤولة عن سحب الترفيع او ترفيع
            TextBox1.Visible = false;
            Button4.Visible = false;
            GridView2.Visible = false;

            //تحديث الجريد فيو الخاصة بعرض طلبات الترفيع من قاعدة البيانات
            GridView1.Visible = true;
            //اذا كان ليس هناك نتائج في العنصر جريد فيو 1
            if (GridView1.Rows.Count == 0)
            {
                //عرض النص
                Label4.Text = "لا توجد اي طلبات عضوية مميزة حتى هذه اللحظة";

            }

            //اخفاء عناصر الصفحة الغير معنية بالعملية السابقة للمستخدم
            GridView2.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;
            GridView6.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            TextBox2.Visible = false;
        }

             //اذا كانت القيمة المختارة هي ترفيع او سحب عضوية مميزة من مستخدم ما 
        else if (DropDownList1.SelectedValue == "2")
        {
            //اظهار العناصر المسؤولة عن  تاكيد سحب الترفيع او ترفيع
            TextBox1.Visible = true;
            Button4.Visible = true;
            GridView2.Visible = true;
            //افراغ النص
            Label4.Text = "";
            //اخفاء عناصر الصفحة الغير معنية بالعملية السابقة للمستخدم
            GridView1.Visible = false;
            GridView3.Visible = false;
            GridView4.Visible = false;
            GridView5.Visible = false;
            GridView6.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            TextBox2.Visible = false;
        }

               //اذا كانت القيمة المختارة هي عرض معلومات شاملة عن مستخدم ماا 
        else if (DropDownList1.SelectedValue == "3")
        {
            
           //اظهار العناصر الجريد فيو و النص ليتم ادخل اسم مستخدم ما لعرض بيانات عنه
            TextBox2.Visible = true;
            Button4.Visible = true;
            GridView3.Visible = true;
            GridView4.Visible = true;
            GridView5.Visible = true;
            GridView6.Visible = true;

            //اافراغ النص
            Label4.Text = "";
            //اخفاء عناصر الصفحة الغير معنية بالعملية السابقة للمستخدم 
            TextBox1.Visible = false;
            GridView1.Visible = false;
            GridView2.Visible = false;
        }
    }

    //في حال اختيار قيمة ما من عنصر الجريد فيو 2 المسؤال عن عرض طلبات الترفيع من قاعدة البيانات
    protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //اسحب القيمة الاولى والثانية من الجريد فيو وادخالهما الى عناصر النص 
        //هذا يفيد في عمليه التعديل على قاعدة البيانات
        Label3.Text = GridView2.SelectedRow.Cells[0].Text;
        Label1.Text = GridView2.SelectedRow.Cells[1].Text;

        //اظهار العناصر المسؤولة عن قبول الطلبات او رفض
        Label5.Visible = true;
        Button6.Visible = true;
        Button5.Visible = true;
        //اخفاء عناصر المسؤولة عن سحب الترفيع او ترفيع
        Label2.Visible = false;
        Button2.Visible = false;
        Button3.Visible = false;

    }

    //في حال اختيار قيمة ما من عنصر الجريد فيو 1 المسؤال عن معلومات المستخدمين لترفيعهم او او سحب الترفيع
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        //اسحب القيمة الاولى والثانية من الجريد فيو وادخالهما الى عناصر النص 
        //هذا يفيد في عمليه التعديل على قاعدة البيانات
        Label3.Text = GridView1.SelectedRow.Cells[0].Text;
        Label1.Text = GridView1.SelectedRow.Cells[1].Text;

        //اخفاء العناصر المسؤولة عن قبول الطلبات او رفض
        Label5.Visible = false;
        Button6.Visible = false;
        Button5.Visible = false;
        //اظهار عناصر المسؤولة عن سحب الترفيع او ترفيع
        Label2.Visible = true;
        Button2.Visible = true;
        Button3.Visible = true;

    }

    //زر ترفيع مستخدم ما
    protected void Button6_Click(object sender, EventArgs e)
    {
        //تاسيس الاتصال بقاعدة البيانات
        SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        //كود التحديث في قاعدة البينات لاتعديل على الحقل الصلاحية للمستخدم
        //كود ارسال رسالة للمستخدم يخبره فيه ان تم قبول طلب العضوية المميزة
        SqlCommand up = new SqlCommand("UPDATE [permission] set [permission] = 'prouser' WHERE [id] = @originalid insert into [message] (subject, message, sender, receiver) values (' العضوية المميزة','تم ترفيعك الى عضوية مميزة , شكرا لك تابع هذه الروح في المساهمة في الموقع',@user ,@originalusername)", vid);
        //استنادا الى القيم التالية
        up.Parameters.AddWithValue("@originalusername", Label1.Text);
        up.Parameters.AddWithValue("@user", lblUName.Text);
        up.Parameters.AddWithValue("@originalid", Label3.Text);
        //فتح الاتصال وتنفيذ الكود وثم اغلاق الاتصال
        vid.Open();
        up.ExecuteNonQuery();
        vid.Close();
        //تحديث العنصر جريد فيو 2
                   this.GridView2.DataBind();
    }

    //زر سحب العضوية المميزة من مستخدم ما
    protected void Button5_Click(object sender, EventArgs e)
    { //تاسيس الاتصال بقاعدة البيانات
        SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
        //كود التحديث في قاعدة البينات لاتعديل على الحقل الصلاحية للمستخدم
        //كود ارسال رسالة للمستخدم يخبره فيه ان لم يتم قبول طلب العضوية المميزة
        SqlCommand up = new SqlCommand("UPDATE [permission] set [permission] = 'user' WHERE [id] = @originalid insert into [message] (subject, message, sender, receiver) values (' العضوية المميزة','تم سحب العضوية المميزة منك , الرجاء راسل الادارة',@user ,@originalusername)", vid);
        //استنادا الى القيم التالية
        up.Parameters.AddWithValue("@originalusername", Label1.Text);
        up.Parameters.AddWithValue("@user", lblUName.Text);
        up.Parameters.AddWithValue("@originalid", Label3.Text);
        //فتح الاتصال وتنفيذ الكود وثم اغلاق الاتصال
        vid.Open();
        up.ExecuteNonQuery();
        vid.Close();
        //تحديث العنصر جريد فيو 2
        this.GridView2.DataBind();

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        this.GridView2.DataBind();
        this.GridView3.DataBind();
        this.GridView4.DataBind();
        this.GridView5.DataBind();
        this.GridView6.DataBind();

        if (GridView2.Rows.Count == 0 && DropDownList1.SelectedValue == "2")
        {


            Label4.Text = "لم يتم العثور على اسم المستخدم هذا";
        }
        else
        {


            Label4.Text = "";

        }


            if (DropDownList1.SelectedValue == "3")
            {
                this.GridView2.DataBind();
                this.GridView3.DataBind();
                this.GridView4.DataBind();
                this.GridView5.DataBind();
                this.GridView6.DataBind();

                if (GridView3.Rows.Count != 0 && Label4.Text == "")
                {
                    Label6.Visible = true;
                    Label7.Visible = true;
                    Label9.Visible = true;
                    Label11.Visible = true;
                    this.GridView2.DataBind();
                    this.GridView3.DataBind();
                    this.GridView4.DataBind();
                    this.GridView5.DataBind();
                    this.GridView6.DataBind();

                    if (GridView4.Rows.Count == 0)
                    {

                        this.GridView2.DataBind();
                        this.GridView3.DataBind();
                        this.GridView4.DataBind();
                        this.GridView5.DataBind();
                        this.GridView6.DataBind();
                        Label8.Visible = true;


                    }

                    else
                    {
                        this.GridView2.DataBind();
                        this.GridView3.DataBind();
                        this.GridView4.DataBind();
                        this.GridView5.DataBind();
                        this.GridView6.DataBind();
                        Label8.Visible = false;

                    }
                    if (GridView5.Rows.Count == 0)
                    {
                        this.GridView2.DataBind();
                        this.GridView3.DataBind();
                        this.GridView4.DataBind();
                        this.GridView5.DataBind();
                        this.GridView6.DataBind();
                        Label10.Visible = true;
                    }
                    else
                    {
                        this.GridView2.DataBind();
                        this.GridView3.DataBind();
                        this.GridView4.DataBind();
                        this.GridView5.DataBind();
                        this.GridView6.DataBind();
                        Label10.Visible = false;

                    }


                    if (GridView6.Rows.Count == 0)
                    {
                        this.GridView2.DataBind();
                        this.GridView3.DataBind();
                        this.GridView4.DataBind();
                        this.GridView5.DataBind();
                        this.GridView6.DataBind();
                        Label12.Visible = true;
                    }
                    else
                    {
                        this.GridView2.DataBind();
                        this.GridView3.DataBind();
                        this.GridView4.DataBind();
                        this.GridView5.DataBind();
                        this.GridView6.DataBind();
                        Label12.Visible = false;

                    }

                }


                else
                {

                    this.GridView2.DataBind();
                    this.GridView3.DataBind();
                    this.GridView4.DataBind();
                    this.GridView5.DataBind();
                    this.GridView6.DataBind();


                    Label4.Text = "اسم المستخدم هذا غير موجود";
                    Label6.Visible = false;
                    Label7.Visible = false;
                    Label8.Visible = false;
                    Label9.Visible = false;
                    Label10.Visible = false;
                    Label11.Visible = false;
                    Label12.Visible = false;
                }


        }



    }

    
}