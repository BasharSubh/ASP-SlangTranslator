using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;

public partial class forgetpasswod : System.Web.UI.Page
{
    //كود بداية الصفحة فارغ
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnPass_Click(object sender, EventArgs e)
    {
        //انشاء الاتصال واضافة كود قاعدة البيانات
        string strConnection = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string strSelect = "SELECT UserName,Password FROM Users WHERE Email = @Email";

        SqlConnection connection = new SqlConnection(strConnection);
        SqlCommand command = new SqlCommand();
        command.Connection = connection;
        command.CommandType = CommandType.Text;
        command.CommandText = strSelect;
        //استنادا الى قيم العنصر txtEmail.Text
        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        email.Value = txtEmail.Text.Trim().ToString();
        command.Parameters.Add(email);

        //انشاء عنصر dataset ليقوم بحفظ النتائج من قاعدة البيانات
        DataSet dsPwd = new DataSet();
        SqlDataAdapter dAdapter = new SqlDataAdapter(command);
        connection.Open();
        //انشاء عنصر dataadapter ليقوم بملئ البيانات داخل ال dataset
        dAdapter.Fill(dsPwd);
        connection.Close();

        //اذا كان هناك نتائج في العنصر dspwd 
        //بمعنى اخر اذا كان البريد الاكتروني موجود 
        if (dsPwd.Tables[0].Rows.Count > 0)
        {
            //انشاء المتحول logininfo على انه من نوع رسالة
            MailMessage loginInfo = new MailMessage();
            //البريد المرسل اليه هو البريد المدخل في العنصر txtEmail.Text من طرف المستخدم
            loginInfo.To.Add(txtEmail.Text.ToString());
            //الرسالة قادمة من البريد الالكتروني الخاص بي
            loginInfo.From = new MailAddress("bashar.subh@gmail.com");
            //لها العنوان معلومات نسيان الحساب لموقع المترجم العامي
            loginInfo.Subject = "معلومات نسيان الحساب لموقع المترجم العامي";

            //الان محتوى الرسالة 
            //تحوى الرسالة على اسم المستخدم وكلمة المرور المرجعة من العنصر dspwd التي تقوم اداة dataadapter بملئه
            //وهو نتيجة كود قاعدة البيانات اختيار اسم المستخدم وكلمة المرور حيث البريد الالكتروني يساوي البريد المدخل من طرف المستخدم
            loginInfo.Body = "Username: " + dsPwd.Tables[0].Rows[0]["UserName"] + "<br /><br />Password: " + dsPwd.Tables[0].Rows[0]["Password"] + "<br /><br />";
            loginInfo.IsBodyHtml = true;
            //الان تعريف خدمة البريد البسيط للنقل حيث هو بريد جوجل
            SmtpClient smtp = new SmtpClient();
            //smtp جوجل
            smtp.Host = "smtp.gmail.com";
            //البورت
            smtp.Port = 587;
            smtp.EnableSsl = true;
            //الان معلومات تسجيل الدخول الى smtp
            //البريد الالكتروني الخاص بي مع كلمة السر الخاصة بي
            smtp.Credentials = new System.Net.NetworkCredential("bashar.subh@gmail.com", "REWQ$#@!rewq4321");
            smtp.Send(loginInfo);
            
            //عرض الرسالة التي تفيد باتمام العملية
             lblMessage.Text = "تم ارسالة معلومات الحساب الى بريدك , يمكنك تشغيل الدخول من هنا  <a href='Login.aspx'>تسجيل الدخول </a>";
        }
            //ان لم يحصل على نتيجة
        else
        {
            //عرض النص
            lblMessage.Text = "البريد الاكتروني غير مسجل ";
        }

    }
}