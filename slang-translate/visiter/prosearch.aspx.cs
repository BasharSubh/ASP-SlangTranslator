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

public partial class prosearch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {


       



    }

       //زر الاختيار
    protected void Button1_Click(object sender, EventArgs e)
    {
        //اذا كانت القيمة المختارة في النعصر هي 1 بحث حسب الحرف
        if (DropDownList1.SelectedValue == "1")
        {
            //اخفاء العناصر
            DropDownList2.Visible = false;
            GridView3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList2.Visible = false;
            Calendar1.Visible = false;
            GridView4.Visible = false;
            GridView2.Visible = false;

            //اظهار العناصر
            //حيث تم برمجة العنصر gridview1 
            //ليعطي نتائج حسب الحقل الكلمة استاندا الى اول حرف مدخل عن طريق العنصر DropDownList3
            GridView1.Visible = true;
            DropDownList3.Visible = true;
            Button2.Visible = true;
            Label2.Text = "";


        }
        //اذا كانت القيمة المختارة في النعصر هي 2 بحث حسب المكان
        else if (DropDownList1.SelectedValue == "2")
        { 
            //اخفاء العناصر

            DropDownList3.Visible = false;
            GridView1.Visible = false;
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            GridView3.Visible = false;
            Calendar1.Visible = false;
            GridView4.Visible = false;

            //اظهار العناصر
            //حيث تم برمجة العنصر gridview2 
            //ليعطي نتائج حسب الحقل الكلمة استاندا الى مكان الكلمة عن طريق العنصر DropDownList4
            GridView2.Visible = true;
            DropDownList4.Visible = true;
            Button2.Visible = true;
            Label2.Text = "";


        }
        //اذا كانت القيمة المختارة في النعصر هي 3 بحث حسب نوع المصطلح
        else if (DropDownList1.SelectedValue == "3")
        {
            //اخفاء العناصر
            DropDownList4.Visible = false;
            DropDownList3.Visible = false;
            GridView1.Visible = false;
            DropDownList3.Visible = false;
            GridView2.Visible = false;
            Calendar1.Visible = false;
            GridView4.Visible = false;
            DropDownList4.Visible = false;

            //اظهار العناصر
            //اظهار العناصر
            //حيث تم برمجة العنصر gridview3 
            //ليعطي نتائج حسب الحقل الكلمة استاندا الى نوع الكلمة عن طريق العنصر DropDownList2
            DropDownList2.Visible = true;
            GridView3.Visible = true;
            Button2.Visible = true;
            Label2.Text = "";

        }
        //اذا كانت القيمة المختارة في النعصر هي 4 بحث حسب التريخ
        else if (DropDownList1.SelectedValue == "4")
        {
            //اخفاء العناصر
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            GridView3.Visible = false;
            GridView1.Visible = false;
            DropDownList4.Visible = false;
            DropDownList2.Visible = false;
            GridView2.Visible = false;
            Button2.Visible = false;

            //اظهار العناصر
            //اظهار العناصر
            //حيث تم برمجة العنصر gridview1 
            //ليعطي نتائج حسب الحقل الكلمة استاندا الى قيمة التاريخ المختارة عن طريق العنصر Calendar1
            Calendar1.Visible = true;
            GridView4.Visible = true;
            //تغغير النص في العنصر
            Label2.Text = "اختر تاريخ من الاعلى";

        }


     
    }
  
    protected void Button2_Click1(object sender, EventArgs e)
    {


       
           

    }
}