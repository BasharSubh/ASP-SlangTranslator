<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 89%;
            margin-left: 19px;
        }
        .style10
        {
            color: #FF0000;
        }
        
        
       
    .style11
    {
        font-family: "Times New Roman", Times, serif;
        color: #000000;
        font-size: medium;
    }
    .style12
    {
        text-align: center;
        width: 574px;
    }
        
        
       
        .style13
        {
            text-align: right;
        }
        
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <table class="style4">
        <tr>
            <td class="style13">
             <!--اضافة عنصرالتحقق حيث لايجب ترك الحق الاسم فارغ-->
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox1  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    </td>
            <td class="style12">
             <!--اضافة عنصر نص لكتابة اسم المرسل-->
                <asp:TextBox ID="TextBox1" runat="server" Width="180px" BorderColor="#003399"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>اسم المرسل </strong> </td>
        </tr>
        <tr>
            <td class="style13">
             <!--اضافة عنصرالتحقق حيث لا يجب ترك الحق البريد الاكتروني فارغ-->
          <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= TextBox4  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    <br />
                     <!--اضافة عنصر تحقق حيث لا يجب ادخال بريد الكتروني خاطئ-->
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="الرجاء ادخال ايميل صحيح" 
                    ForeColor="Red" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
            <td class="style12">
             <!--اضافة عنصر نص لكتابة البريد الالكتروني -->
                <asp:TextBox ID="TextBox4" runat="server" BorderColor="Black" Width="221px"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>البريد الالكتروني</strong></td>
        </tr>
        <tr>
            <td class="style13">
             <!--اضافة عنصرالتحقق حيث لا يجب ترك عنوان الرسالة فارغ-->
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox2  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    </td>
            <td class="style12">
             <!--اضافة عنصر نص لكتابة عنوان الرسالة-->
                <asp:TextBox ID="TextBox2" runat="server" Width="315px" BorderColor="#000099"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>عنوان الرسالة</strong></td>
        </tr>
        <tr>
            <td class="style13">
             <!--اضافة عنصر التحقق حيث لا يجب ترك نص الرسالة فارغ-->
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox3  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    </td>
            <td class="style12">
             <!--اضافة عنصر نص لكتابة الرسالة المراد ارسالها الى الادارة-->
                <asp:TextBox ID="TextBox3" style="resize:none" runat="server" Height="186px" TextMode="MultiLine" 
                    Width="558px" BorderColor="Blue"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>الرسالة</strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style12">
             <!--اضافة عنصر نص حيث يتم تغغير النص دخله تبعا لعملية المستخدم اما تم الارسال او فشل الارسال-->
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style11">
                <strong></strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style12">
             <!--اضافة عنصر الزر ليقوم المستخدم بضغطه لارسسال الرسائل حين استوفاء شروط التحقق-->
                <asp:Button ID="Button1" runat="server" Text="ارسال الرسالة" Width="91px" 
                    BackColor="#6699FF" BorderColor="#0000CC" onclick="Button1_Click" />
            </td>
            <td class="style11">
                <strong></strong></td>
        </tr>
    </table>
    <p class="style13">
     <!--اضافة نص صغير للتعريف بالصفحة-->
        حيث بامكان المستخدمين من ارسال رسائل للتواصل مع الادارة
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

