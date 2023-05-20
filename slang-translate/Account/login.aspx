<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Account_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: center;
        }
        .lbl
        {
            color: #000000;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
&nbsp;</p>
    <p>

    
<div class='style4'>
             <!-- اضافة العنصر نص داخله النص اسم المستخدم ليعرف المستخدم اين يضع اسم مستخدم دخوله -->
<asp:Label ID="Name" runat="server" Text="اسم المتسخدم" CssClass="lbl"/>
<br/>
             <!-- اضافة العنصر نص ليقوم المستخدم بادخال اسم المستخدم الخاص بدخوله فيه -->
<asp:TextBox ID="txtUserName" runat="server" Height="22px"/>
 <!-- اضافة العنصر التحقق حيث لا يجب ترك الحقل اسم المستخدم فارغ -->
<asp:RequiredFieldValidator ID="RV1" runat="server" 
                            ControlToValidate="txtUserName" 
                            ErrorMessage="من فضلك ادخل اسم المستخدم" 
                            SetFocusOnError="True" ForeColor="Red">*
</asp:RequiredFieldValidator><br />
</div>

<div class='style4'>
  <!-- اضافة العنصر نص داخله النص كلمة المرور ليعرف المستخدم اين يضع كلمة مروره -->
<asp:Label ID="lblPwd" runat="server" Text="كلمة المرور" CssClass="lbl"/>
<br/>
<asp:TextBox ID="txtPwd" runat="server" TextMode="Password" 
                         CssClass="pwd" Height="22px"/>
                          <!-- اضافة العنصر التحقق حيث لا يجب ترك الحقل كلمة المرور فارغ -->
<asp:RequiredFieldValidator ID="RV2" runat="server" 
                            ControlToValidate="txtPwd" 
                            ErrorMessage="من فضلك ادخل كلمة المرور" 
                            SetFocusOnError="True" ForeColor="Red">*
</asp:RequiredFieldValidator><br />
</div>

<div class='style4'>
 <!-- اضافة العنصر زر ليقوم باتمام عمليه تسجيل الدخول -->
<asp:Button ID="btnLogIn" runat="server" Text="تسجيل الدخول" 
                          onclick="btnLogIn_Click" BackColor="#3366FF" 
        BorderColor="Blue" Width="69px"/>
</div>
                       
<div class='style4'>
 <!-- اضافة العنصر رابط تشعبي ليتيح للمستخدم الضغط عليه في حال نسي كلمة المرور -->
<asp:HyperLink ID="HyperLink1" runat="server" 
NavigateUrl="~/Account/ForgotPassword.aspx">نسيت كلمة المرور ؟</asp:HyperLink>
<br/>
</div>
<!-- اضافة العنصر رابط تشعبي ليتيح للمستخدم الضغط عليه في حال كان لا يملك حساب دخول ويريد تسجيل جديد -->
<div class='style4'>هل انت مستخدم جديد :&nbsp; 
<asp:HyperLink ID="HyperLink2" runat="server" 
NavigateUrl="~/Account/signup.aspx">التسجيل</asp:HyperLink></div>                       
    <div class="style4">
<asp:ValidationSummary ID="ValidationSummary1" 
                       runat="server" CssClass="error" ForeColor="Red" />
    </div>
<br /><br />
<center>
<!-- اضافة العنصر نص ليقوم بعرض رسائل الخطأ تبعا للخطأ الحاصل وهو مبرمج ضمن الكود الخلفي -->
<asp:Label ID="lblMsg" runat="server" Text="" 
        style="color: #FF0000; font-weight: 700"/>

</center>


&nbsp;</p>
    <p>
    </p>
</asp:Content>

