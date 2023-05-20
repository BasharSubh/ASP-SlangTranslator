using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
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

        //اذا تم جلب عناصر داخل العنصر gridview
        if (GridView1.Rows.Count != 0)
        {
            //عرض النص
            Label1.Text = " .. تم العرض";
        }

            //والا
        else
        {
            //عرض النص
            Label1.Text = "البريد الوارد الخاص بك فارغ  ";
          
        }

      


    }


    //زر تحديث علبة الوارد
    protected void Button1_Click(object sender, EventArgs e)
    {
        
           
             
        //اعادة تحميل الصفحة ليتم تنفيذ كود بدا الصفحة
        Response.Redirect("~/user/receive.aspx");

        
    }
}
