using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        try
        {
            lblUName.Text = Session["prouser"].ToString();
        }

        catch
        {

            Response.Redirect("~/Default.aspx");
        }
        if (GridView1.Rows.Count != 0)
        {
            Label1.Text = " .. تم العرض";
        }

        else
        {
            Label1.Text = "البريد الوارد الخاص بك فارغ  ";
          
        }

      


    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        
           
             

        Response.Redirect("~/prouser/receive.aspx");

        
    }
}
