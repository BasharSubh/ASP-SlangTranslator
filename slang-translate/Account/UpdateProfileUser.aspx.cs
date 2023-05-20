using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Account_UpdateProfile : System.Web.UI.Page
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
    }

    //زر التعديل
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //انشاء الاتصال مع قاعدة البينات وانشاء نعليمة التعديل
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string strUpdate = "UPDATE Users SET FirstName = @FirstName, LastName = @LastName, Password = @Password, Address = @Address, Gender = @Gender WHERE UserName = @UserName And Password = @CurPassword";
        //تحديد الاتصال المستخدم
        SqlConnection con = new SqlConnection(connectionString);

        //Create SQL Command And Sql Parameters

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strUpdate;

        //تعريف المتحول الاسم واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtFirstName.Text
        //حيث يتم التعديل على الحساب حسب القيمة المدخلة
        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = txtFirstName.Text.ToString();
        cmd.Parameters.Add(firstName);
        //تعريف المتحول الكنية واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtLastName.Text
        //حيث يتم التعديل على الحساب حسب القيمة المدخلة
        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = txtLastName.Text.ToString();
        cmd.Parameters.Add(lastName);
        //تعريف المتحول اسم المستخدم واستاد قيمة varchar50 
        //استنادا الى اسم الجلسة المسجل بها
        //حيث اسم قيمة الجلسة هي نفس اسم اسم المتسخدم المسجل
        SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
        userName.Value = Session["user"].ToString();
        cmd.Parameters.Add(userName);
        //تعريف المتحول كلمة السر الجديدة واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtLastName.Text
        //حيث يتم التعديل على الحساب حسب القيمة المدخلة
        SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        pwd.Value = txtPwd.Text.ToString();
        cmd.Parameters.Add(pwd);
        //تعريف المتحول عنوان السكن واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtAdress.Text
        //حيث يتم التعديل على الحساب حسب القيمة المدخلة
        SqlParameter address = new SqlParameter("@Address", SqlDbType.VarChar, 50);
        address.Value = txtAdress.Text.ToString();
        cmd.Parameters.Add(address);
        //تعريف المتحول عنوان الجنس واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtAdress.Text
        //حيث يتم التعديل على الحساب حسب القيمة المدخلة
        SqlParameter gender = new SqlParameter("@Gender", SqlDbType.VarChar, 10);
        gender.Value = rdoGender.SelectedItem.ToString();
        cmd.Parameters.Add(gender);
        //تعريف المتحول كلمة السر الحالية واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtCurPwd.Text
        //حيث يتم التعديل على الحساب حسب القيمة المدخلة
        SqlParameter curPwd = new SqlParameter("@CurPassword", SqlDbType.VarChar, 50);
        curPwd.Value = txtCurPwd.Text.ToString();
        cmd.Parameters.Add(curPwd);

        //حاول
        try
        {
            //فتح الاتصال
            con.Open();
            //وضع نتيحة تعليمة التعديل داخل متحول نوع رقمي
            int result = cmd.ExecuteNonQuery();
            //اذا جلب المتحول عدد اكبر من الصفر وافتراضيا رقم 1 
            if (result > 0)
                //اظهر الرسالة في العنصر النص
                lblMsg.Text = "تم التعديل بنجاح";
            else
                //والا اظهر النص 
                lblMsg.Text = "من فضلك تحقق من صحة كلمة السر الحالية";


        }
            //اذا حصل خطأ في قاعدة البينات
        catch (SqlException ex)
        {
            //اظهر النص
            string errorMessage = "خطأ في التحديث";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);

        }
            //اخيرا
        finally
        {
            //اغلاق الاتصال بقاعدة البيانات
            con.Close();
        }
    }
}


