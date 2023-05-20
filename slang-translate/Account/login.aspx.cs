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

public partial class Account_login : System.Web.UI.Page
{

    //كود بداية الصفحة فارغ
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //زر تسجيل الدخول
    protected void btnLogIn_Click(object sender, EventArgs e)
    {

        //تأسيس الاتصال بقاعدة البيانات
        SqlConnection vid = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database.mdf;Integrated Security=True;User Instance=True");

        string strCon = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //انشاء المتحول حيث بداخله كود الاختيار من قاعدة البينات حيث يقوم البحث استادا الى قيم العناصر التالية
        //txtUserName.Text, txtPwd.Text وهي المعلومات المدخلة من قبل المستخدم
        string strSelect = "SELECT COUNT (*) FROM Users WHERE UserName = @Username AND Password = @Password";
        //تسميه هذا الاتصال ب con
        SqlConnection con = new SqlConnection(strCon);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        //اسناد قيمة المتحول السابق الى عمليه sqlcommand
        cmd.CommandText = strSelect;

        //اضافة متحول حيث يحوي كود ادخال في قاعدة البينات للجدول الصلاحية استنادا الى قيم المعناصر المدخلة من قبل المستخدم
        SqlCommand insert = new SqlCommand("  INSERT INTO [permission] (id,username) SELECT Id,username FROM [Users] where UserName = @username ", vid);
        //اضافة متحول حيث يحوي كود اختيار من الجدول الصلاحية حيث اسم المستخدم هو اسم مستخدم مسجل الدخول
        //يفيذ هذه فيما بعد لكي يقوم كود اخر بالبحث في السجل حيث نوع صلاحية كل مستخدم
        SqlCommand like = new SqlCommand("SELECT permission FROM permission WHERE UserName = @Username", vid);
        //استنادا الى قيم العناصر التالية
        like.Parameters.AddWithValue("@Username", txtUserName.Text);
        insert.Parameters.AddWithValue("@Username", txtUserName.Text);
        //تعريف قيمة العامود اسم المستخدم على انه varchar 50 
        //واستاد القيمة الى عنصر التحكم txtUserName.Text
        //لكي يقوم بالبحث في قاعدة البيانات حسب المتحول strselect
        SqlParameter username = new SqlParameter("@Username", SqlDbType.VarChar, 50);
        username.Value = txtUserName.Text.Trim().ToString();
        cmd.Parameters.Add(username);
        //تعريف قيمة العامود كلمة السر على انه varchar 50 
        //واستاد القيمة الى عنصر التحكم txtPwd.Text
        //لكي يقوم بالبحث في قاعدة البيانات حسب المتحول strselect
        SqlParameter password = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        password.Value = txtPwd.Text.Trim().ToString();
        cmd.Parameters.Add(password);
        //الان فتح الاتصال vid
        vid.Open();

        //اختبار تنفيذ المتحول insert
        //الذي هو يقوم باضافة سجلات الجدول الصلاحية استادا الى اسم المستخدم وكلمة السر الصحيحن
        try
        {
              insert.ExecuteNonQuery();
        }
            //ان حصل خطأ
        catch
            //لا تقم بشيء
        { }

        //تعريف متحول جديد وقيمته هي قيمة المتحول like 
        //الذي هو يعيد قيمة الحقل الصلاحية من الجدول الصلاحية حيث اسم المستخدم هو الاسم المدخل عن طريق المستخدم
        SqlDataAdapter da = new SqlDataAdapter(like);
        DataTable dt = new DataTable();
        da.Fill(dt);
        //فتح الاتصال con
        con.Open();
        //تعريف متحول جديد نوع رقمي تكون قيمته هي قيمة العناصر المعادة من قاعدة البينات 
        //وذلك حسب المتحول strSelect
        int result = (Int32)cmd.ExecuteScalar();
        //اغلاق الاتصال con
        con.Close();

       
        //الان بعدما عرفناالمتحول الررقمي الذي قيمته يجب ان تكون اكبر من 1 اذا كان اسم المستخدم وكلمة السر صحيحين
        if (result >= 1)
        {

            //ابحث في الحقل الصلاحية permission حيث الاسم admin
            //وذلك استنادا الى المتحول المعرفة سابقا da
            if (dt.Rows[0]["permission"].ToString() == "admin")
            {
                //ان تحقق الشرط قم باانشاء جلسة اسمها admin
                Session["admin"] = txtUserName.Text.ToString().Trim();
                //ارسل المستخدم الى صفحات المدير
                Response.Redirect("~/admin/Default.aspx");

            }
                //والا البحث 
            //ابحث في الحقل الصلاحية permission حيث الاسم user
            else if (dt.Rows[0]["permission"].ToString() == "user")
            {
                //ان تحقق الشرط قم باانشاء جلسة اسمها user
                Session["user"] = txtUserName.Text.ToString().Trim();
                //ارسل المستخدم الى صفحات المستخدم العادي
                Response.Redirect("~/user/Default.aspx");
            }

                   //والا البحث 
            //ابحث في الحقل الصلاحية permission حيث الاسم prouser
            else if (dt.Rows[0]["permission"].ToString() == "prouser")
            {
                //ان تحقق الشرط قم باانشاء جلسة اسمها prouser
                Session["prouser"] = txtUserName.Text.ToString().Trim();
                //ارسل المستخدم الى صفحات المستخدم المميز
                Response.Redirect("~/prouser/Default.aspx");
            }

        }
            //ان لم يتحقق شرط المتحول الذي يجب ان يكون اكبر من الصفر 
            //يكون هناك خطأ في اسم المستخدم او كلمة المرور 
            //او ليس هناك اسم متسخدم بهذا الاسم
        else

            //عرض الرسالة
            lblMsg.Text = "خطأ في اسم المستخدم او كلمة المرور";

    }
}
