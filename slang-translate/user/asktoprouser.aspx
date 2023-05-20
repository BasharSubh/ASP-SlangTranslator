<%@ Page Title="" Language="C#" MasterPageFile="~/Master.User.master" AutoEventWireup="true" CodeFile="asktoprouser.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 86%;
            margin-left: 61px;
            margin-right: 0px;
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
            width: 698px;
        }
    .style12
    {
            text-align: center;
            width: 556px;
        }
        
        
       
        .style13
        {
            text-align: right;
        }
        
        
       
        .style14
        {
            width: 871px;
            text-align: right;
        }
        .style15
        {
            color: #FF00FF;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        
        
       
        .style16
        {
            text-align: right;
            width: 742px;
        }
        .style17
        {
            width: 742px;
        }
        
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <!--    انشاء جدول لجمع العناصر داخله-->
        <table class="style1">
            <tr>
                <td class="style14">
    <!--   انشاء عنصر النص ل  اسم المستخدم ليتم تسجيل اسم دخول المستخدم داخله -->
        <asp:Label ID="lblUName" runat="server" Text=""></asp:Label>
    
                </td>
                <td class="style15">
                    <strong>مرحبا</strong></td>
            </tr>
        </table>
        <br />
    </p>
    <table class="style4">
        <tr>
            <td class="style16">
                &nbsp;</td>
            <td class="style12">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
            <!--   انشاء عنصر التحقق حيث لا يجب اضافة اكثر من 180 محرف في الحقل لماذا تريد طلب العضوية المميزة -->
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationExpression = "^[\s\S]{0,180}$"
                    ErrorMessage="لا يمكن اضافة اكثر من 180 محرف" ControlToValidate="TextBox3" 
                    CssClass="style10"></asp:RegularExpressionValidator>
                <br />
                <!--   انشاء عنصر التحقق حيث لايجب ترك حقل النص المدخل فارغ -->
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox3  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    <br />
                    </td>
            <td class="style12">
            <!--   انشاء عنصر النص ل  ليقوم المستخدم بكتابة اسباب طلب العضوية داخله -->
                <asp:TextBox ID="TextBox3" style="resize:none" runat="server" Height="92px" TextMode="MultiLine" 
                    Width="334px" BorderColor="Blue" MaxLength="5"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>أسباب طلب العضوية المميزة</strong></td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style12">
            <!--   انشاء عنصر النص لعرض رسائة الخطأ او رسالة تم ارسال الطلب بنجاح ويخبر المستخدم بالنتظار ايميل تلقائي من المدير بهذا الخصوص -->
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style11">
                <strong></strong></td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style12">
            <!--   انشاء عنصر الزر ليقوم المستخدم بالضغط عليه لاتمام عمليه الطلب الجديد -->
                <asp:Button ID="Button1" runat="server" Text="ارسال الطلب" Width="91px" 
                    BackColor="#6699FF" BorderColor="#0000CC" onclick="Button1_Click" />
            </td>
            <td class="style11">
                <strong></strong></td>
        </tr>
    </table>
    <p class="style13">
    <!--   عرض نبذة عن الصفحة -->
        حيث بامكان المستخدم من ارسال طلب عضوية مميزة للادارة ليستطيع ادارة المصطلحات 
        والكلمات بشكل فرعي
    </p>
    <p class="style13">
        لا يمكنك كتابة اكثر من 180محرف</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
</asp:Content>

