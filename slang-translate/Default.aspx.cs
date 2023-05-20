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
using System.Linq;

public partial class _Default : System.Web.UI.Page
{


    //بداية الصفحة
    protected void Page_Load(object sender, EventArgs e)
    {
        //انهاء الجلسة حيث يرسل المستخدمين الذين يسجلون خروج على هذه الصفحة
        Session.Abandon();

       
        
        //تغغير محاذاة النص الى اليمين داخل التكست بوكس
        TextBox1.Style["text-align"] = "right";
        Label5.Style["text-align"] = "right";

        //اخفاء الرابط التشعبي للترجمة حيث المستخدم عند اختيار وكلمة والضغط على صنع الرابط يظهروا
        HyperLink1.Visible = false;
        HyperLink2.Visible = false;



        

    }

   
    //عرض نتيجة البحث 
    public void DisplaySearchResults2(string strSearch2)
    {

        //انشاء الاتصال مع قاعدة البيانات 
        //تحديد نوع كود قاعدة البيانات كأجرائية 
        //حيث قمنا بوضع اجرائية بحث في قاعدة البيانات تقوم بعرض النتائج حيث نوع الكلمة كلمة عامية
        SqlCommand cmd = new SqlCommand("spSearchByString2", new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True"));
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SearchString2", strSearch2);
        //فتح الاتصال
        cmd.Connection.Open();
        //ربط النتائج مع العنصر gridview1
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();

        //انهاء الاتصال
        cmd.Connection.Close();
        cmd.Connection.Dispose();

    }


    //عرض نتيجة البحث 
    public void DisplaySearchResults3(string strSearch3)
    {

        //انشاء الاتصال مع قاعدة البيانات 
        //تحديد نوع كود قاعدة البيانات كأجرائية 
        //حيث قمنا بوضع اجرائية بحث في قاعدة البيانات تقوم بعرض النتائج حيث نوع الكلمة اختصار
        SqlCommand cmd = new SqlCommand("spSearchByString3", new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True"));
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@SearchString3", strSearch3);
        //فتح الاتصال
        cmd.Connection.Open();
        //ربط النتائج مع العنصر gridview1
        GridView1.DataSource = cmd.ExecuteReader();
        GridView1.DataBind();
        //انهاء الاتصال
        cmd.Connection.Close();
        cmd.Connection.Dispose();

    }


  

    //الضغط على الزر
    protected void Button1_Click(object sender, EventArgs e)
    {
        //تغغير لون النصر الى الاحمر
        lblStatus.ForeColor = System.Drawing.Color.Red;
        
        //البدأ بشرط اذا كان النص المدخل فراع
        if (TextBox1.Text == "" | TextBox1.Text == null)
        {
            //نفذ التعليمة
            lblStatus.Text = "  الرجاء ادخال كلمة ما للبحث في مربع الادخال ";

        }

         //والا اذا كان
        else if
            //خيار الترجمة العامية مفعل
              (RadioButton1.Checked == true )
        {
            //اعرض النتيجة كود رقم 2
            DisplaySearchResults2(TextBox1.Text);

            //اذا النتيجة جلبت حقول ضمن الgridview
            if (GridView1.Rows.Count != 0)
            {
                //عرض تم البحث
                lblStatus.Text = "تم البحث";
               
            }

                //الا
            else

            {
                //عرض
                lblStatus.Text = "لم يتم العثور على نتيجة هل تريد المساهمة بأضافة هذا المصطلح ";
                HyperLink1.Visible = true;
            }

        }


            //والا اذا
        else if
            //خيار الترجمة الاختصار مفعل
            (RadioButton2.Checked == true)
        {
            //اعرض النتيجة كود رقم 3
            DisplaySearchResults3(TextBox1.Text);

            //اذا النتيجة جلبت حقول ضمن الgridview
            if (GridView1.Rows.Count != 0)
            {
                lblStatus.Text = "تم البحث";
            }

                //والا
            else
            {
                lblStatus.Text = "لم يتم العثور على نتيجة هل تريد المساهمة بأضافة هذا الاختصار ";
                HyperLink1.Visible = true;
            }

        }


        
        


       
     
        
    }


    //يتفعل عند ااختيار عنصر ضمن الgridview
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
       //اجلب القيمة 1.2.3.4من الجريد فيو
        //وضعها في اعنصر لابل
        //هذا يفيد كثير في تفعير كود الاعجاب او الترجمة
      


        Label3.Text = GridView1.SelectedRow.Cells[4].Text;
        Label5.Text = GridView1.SelectedRow.Cells[3].Text;

        lblStatus.Text = "تم الاختيار";

    }

   
   
     

    
        protected void Button11_Click1(object sender, EventArgs e)
        {

            //اذا كانت الجريد فيو ليست فارغة
            if (GridView1.SelectedIndex != null && GridView1.SelectedRow != null)
            {

                //انشاءالاتصال
                SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
                //تنفيذ الكود في قاعدة البيانات 
                //اضافة واحد الى الحقل اعجبني
                SqlCommand like = new SqlCommand("update [words] set likes = likes + 1  where word =(@like)", vid);
                //استنادا على قيمة العنصر label3
                like.Parameters.AddWithValue("@like", Label3.Text);
                //فتح الاتصال وتنفيذ التعليمة وثم اغلاق الاتصال
                vid.Open();
                like.ExecuteNonQuery();
                vid.Close();



                //تغغير النص في العنصر
                lblStatus.Text = "تم التصويت";
            }

            else
            {
                lblStatus.Text = "ارجاء اختيار المصطلح اولا";
               
            }
        }
        protected void Button12_Click1(object sender, EventArgs e)
        {

            //اذا كانت الجريد فيو ليست فارغة
            if (GridView1.SelectedIndex != null && GridView1.SelectedRow != null)
            {
                //انشاءالاتصال
                SqlConnection vid2 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");
                //تنفيذ الكود في قاعدة البيانات 
                //اضافة واحد الى الحقل لم يعجبني
                SqlCommand unlike = new SqlCommand("update [words] set unlikes = unlikes + 1  where word =(@unlike)", vid2);
                //استنادا على قيمة العنصر TextBox1
                unlike.Parameters.AddWithValue("@unlike", Label3.Text);
                //فتح الاتصال وتنفيذ التعليمة وثم اغلاق الاتصال
                vid2.Open();
                unlike.ExecuteNonQuery();
                vid2.Close();



                //تغغير النص في العنصر
                lblStatus.Text = "تم التصويت";
            }

            else
            {
                lblStatus.Text = "ارجاء اختيار المصطلح اولا";
                
            }
        }

        protected void Button13_Click1(object sender, EventArgs e)
        {
            if (GridView1.SelectedIndex != null && GridView1.SelectedRow != null)
            {
                //تعريف متحول
                string a;
                //اسناد القيمةالتالية مع قيمة العنصر label5
                a = ("https://translate.google.com/#ar/en/" + Label5.Text.ToString());

                //اسناد قيمة المتحول الى العنصر الارتباط
                HyperLink2.NavigateUrl = a;
                //اظهار الارتباط للضغط عليه
                HyperLink2.Visible = true;

                lblStatus.Text = "اضغط على الرابط في الاسفل";
            }
            else
            {
                lblStatus.Text = "الرجاء اختيار المصطلح اولا";
               
            }


        }
}
/*
 * This tutorial is provided in part by Server Intellect Hosting Solutions, visit http://serverintellect.com/ for more information
 * For more database tutorials, visit http://v4.dbtutorials.com/
*/