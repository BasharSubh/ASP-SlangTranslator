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
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        //Create ConnectionString and Inser Statement
        string connectionString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        string strUpdate = "UPDATE Users SET FirstName = @FirstName, LastName = @LastName, Password = @Password, Address = @Address, Gender = @Gender WHERE UserName = @UserName And Password = @CurPassword";
        //Create SQL connection
        SqlConnection con = new SqlConnection(connectionString);

        //Create SQL Command And Sql Parameters

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = strUpdate;

        SqlParameter firstName = new SqlParameter("@FirstName", SqlDbType.VarChar, 50);
        firstName.Value = txtFirstName.Text.ToString();
        cmd.Parameters.Add(firstName);

        SqlParameter lastName = new SqlParameter("@LastName", SqlDbType.VarChar, 50);
        lastName.Value = txtLastName.Text.ToString();
        cmd.Parameters.Add(lastName);

        SqlParameter userName = new SqlParameter("@UserName", SqlDbType.VarChar, 50);
        userName.Value = Session["userName"].ToString();
        cmd.Parameters.Add(userName);

        SqlParameter pwd = new SqlParameter("@Password", SqlDbType.VarChar, 50);
        pwd.Value = txtPwd.Text.ToString();
        cmd.Parameters.Add(pwd);

        SqlParameter address = new SqlParameter("@Address", SqlDbType.VarChar, 50);
        address.Value = txtAdress.Text.ToString();
        cmd.Parameters.Add(address);

        SqlParameter gender = new SqlParameter("@Gender", SqlDbType.VarChar, 10);
        gender.Value = rdoGender.SelectedItem.ToString();
        cmd.Parameters.Add(gender);

        SqlParameter curPwd = new SqlParameter("@CurPassword", SqlDbType.VarChar, 50);
        curPwd.Value = txtCurPwd.Text.ToString();
        cmd.Parameters.Add(curPwd);


        try
        {
            con.Open();
            int result = cmd.ExecuteNonQuery();
            if (result > 0)
                lblMsg.Text = "Profile Updated";
            else
                lblMsg.Text = "Please Check You Current Password";


        }
        catch (SqlException ex)
        {
            string errorMessage = "Error in updation";
            errorMessage += ex.Message;
            throw new Exception(errorMessage);

        }
        finally
        {
            con.Close();
        }
    }
}


