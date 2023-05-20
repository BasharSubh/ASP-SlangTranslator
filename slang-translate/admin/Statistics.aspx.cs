using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    //كود بداية الصفحة
    protected void Page_Load(object sender, EventArgs e)
    {
        //يساعد هذا الكود بعملية اظهار نتائج اكثر في الرسم البياني 5+4
        Chart14.ChartAreas["ChartArea1"].AxisX.Interval = 1;
       Chart15.ChartAreas["ChartArea1"].AxisX.Interval = 1;
       Chart22.ChartAreas["ChartArea1"].AxisX.Interval = 1;
       Chart23.ChartAreas["ChartArea1"].AxisX.Interval = 1;
       Chart24.ChartAreas["ChartArea1"].AxisX.Interval = 1;
     



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

    }

    protected void myListDropDown_Change(object sender, EventArgs e)
    {



    }


   
 

}
