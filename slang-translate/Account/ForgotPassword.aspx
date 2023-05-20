<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="forgetpasswod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    
 
    <div>
    <fieldset>
    <!--  اضافة عنوان تفسيري يحوي النص نسيت كلمة المرور -->
<legend dir=rtl >نسيت كلمة المرور</legend> 
<div class='container'>
 <!--  اضافة عنصر نص يحوي النص البريد الالكتروني ليدل المستخدم على مكان اضافة بريده -->
<asp:Label ID="lblEmail" runat="server" Text="البريد الالكتروني " CssClass="lbl"/>
 <!--  اضافة عنصر نص ليقوم المستخدم بادخال البريد الالكتروني فيه -->
<asp:TextBox ID="txtEmail" runat="server" Height="22px"/>
 <!--  اضافة عنصر تحقق حيث لا يجب ترك الحقل البريد الاكتروني فارغ -->
<asp:RequiredFieldValidator ID="RV1" runat="server" 
                            ControlToValidate="txtEmail" 
                            ErrorMessage="من فضلك ادخل بريدك الالكتروني" 
                            SetFocusOnError="True">*
</asp:RequiredFieldValidator>
 <!--  اضافة عنصر زر لارسال بينات الحساب الى الايميل  -->
<asp:Button ID="btnPass" runat="server" Text="ارسال" onclick="btnPass_Click" 
        Width="56px"/>
</div>
 <!--  اضافة عنصر التحقق حيث يقوم بجمع رسائل الخطا الواردة من عناصر التحقق السابقة فيه -->
<asp:ValidationSummary ID="ValidationSummary1" 
                       runat="server" CssClass="error"/>
<div class='container'><asp:Label ID="lblMessage" runat="server" Text="" CssClass="lbl"/></div>
</fieldset>
    </div>
    
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>



