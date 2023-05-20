using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Account_signup : System.Web.UI.Page
{
    //كود بداية الصفحة فارغ
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSave_Click(object sender, EventArgs e)
    {
        //انشاء الاتصال بقاعدة البيانات
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        //تعريف المتحول حيث يوجد فيه كود الادخال الى قاعدة البيانات
        string insertSql = "INSERT INTO Users (FirstName,LastName,UserName,Password,Email,Address,Gender) values (@FirstName,@LastName,@UserName,@Password,@Email,@Address,@Gender)";
        //تعريف الاتصال بقاعدة البيانات 
        SqlConnection con = new SqlConnection(connectionString);

        //Create SQL Command And Sql Parameters
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = insertSql;

        //تعريف المتحول الاسم واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtFirstName.Text
        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = txtFirstName.Text.ToString();
        cmd.Parameters.Add(firstName);
        //تعريف المتحول الكنية واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtLastName.Text
        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = txtLastName.Text.ToString();
        cmd.Parameters.Add(lastName);
        //تعريف المتحول اسم المستخدم واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtUserName.Text
        SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
        userName.Value = txtUserName.Text.ToString();
        cmd.Parameters.Add(userName);
        //تعريف المتحول كلمة المرور واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtPwd.Text
        SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        pwd.Value = txtPwd.Text.ToString();
        cmd.Parameters.Add(pwd);
        //تعريف المتحول البريد الاكتروني واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtEmailID.Text
        SqlParameter email = new SqlParameter("@Email", SqlDbType.VarChar, 50);
        email.Value = txtEmailID.Text.ToString();
        cmd.Parameters.Add(email);
        //تعريف المتحول العنوان واستاد قيمة varchar50 
        //استنادا الى قيمة العنصر txtAdress.Text
        SqlParameter address = new SqlParameter("@Address", SqlDbType.VarChar, 50);
        address.Value = txtAdress.Text.ToString();
        cmd.Parameters.Add(address);
        //تعريف المتحول الجنس واستاد قيمة varchar50 
        //استنادا الى القيمة  المختارة من العنصر rdoGender
        //وهو عنصر radiobutton
        SqlParameter gender = new SqlParameter("@Gender", SqlDbType.VarChar, 10);
        gender.Value = rdoGender.SelectedItem.ToString();
        cmd.Parameters.Add(gender);

        //حاول
        try
        {
            //فتح الاتصال
            con.Open();
            //تنفيذ كود الادخال 
            cmd.ExecuteNonQuery();
            //عرض النص
            lblMsg.Text = "تم التسجيل بنجاح تسطيع الان تسجل الدخول <a href='Login.aspx'>تسجيل الدخول</a>";
            ClearControls(this);
        }
            //ان حصل خطأ
        catch (SqlException ex)
        {
            //عرض النص
            string errorMessage = "خطأ في التسجيل";
            errorMessage += ex.Message;
            lblMsg.Text = "اسم المستخدم موجود مسبقا, هل نسيت كلمة المرور <a href='ForgotPassword.aspx'>اضغط هنا</a>";
           

        }
            //اخيرا تنفيذ على ايه حال
        finally
        {
            //اغلاق الاتصال
            con.Close();
        }
    }

    private void ClearControls(Control ctrl)
    {
        foreach (Control tb in ctrl.Controls)
            if (tb is TextBox)
            {
                ((TextBox)tb).Text = "";
            }
            else
            {
                if (tb.Controls.Count > 0)
                {
                    ClearControls(tb);
                }
            }
    }
}