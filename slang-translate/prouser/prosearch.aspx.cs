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

        try
        {
            lblUName.Text = Session["prouser"].ToString();
        }

        catch
        {

            Response.Redirect("~/Default.aspx");
        }




    }

       
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "1")
        {

            DropDownList2.Visible = false;
            GridView3.Visible = false;
            DropDownList4.Visible = false;
            DropDownList2.Visible = false;
            Calendar1.Visible = false;
            GridView4.Visible = false;
            GridView2.Visible = false;


            GridView1.Visible = true;
            DropDownList3.Visible = true;
            Button2.Visible = true;
            Label2.Text = "";


        }

        else if (DropDownList1.SelectedValue == "2")
        {
            DropDownList3.Visible = false;
            GridView1.Visible = false;
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            GridView3.Visible = false;
            Calendar1.Visible = false;
            GridView4.Visible = false;


            GridView2.Visible = true;
            DropDownList4.Visible = true;
            Button2.Visible = true;
            Label2.Text = "";


        }

        else if (DropDownList1.SelectedValue == "3")
        {

            DropDownList4.Visible = false;
            DropDownList3.Visible = false;
            GridView1.Visible = false;
            DropDownList3.Visible = false;
            GridView2.Visible = false;
            Calendar1.Visible = false;
            GridView4.Visible = false;
            DropDownList4.Visible = false;


            DropDownList2.Visible = true;
            GridView3.Visible = true;
            Button2.Visible = true;
            Label2.Text = "";

        }
        else if (DropDownList1.SelectedValue == "4")
        {
            DropDownList3.Visible = false;
            DropDownList2.Visible = false;
            GridView3.Visible = false;
            GridView1.Visible = false;
            DropDownList4.Visible = false;
            DropDownList2.Visible = false;
            GridView2.Visible = false;
            Button2.Visible = false;


            Calendar1.Visible = true;
            GridView4.Visible = true;
            Label2.Text = "اختر تاريخ من الاعلى";

        }

     
    }
  
    protected void Button2_Click1(object sender, EventArgs e)
    {


       
           

    }
}