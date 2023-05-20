<%@ Page Title="" Language="C#" MasterPageFile="~/Master.admin.master" AutoEventWireup="true" CodeFile="send.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 91%;
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
            width: 138px;
        }
    .style12
    {
            text-align: center;
            width: 547px;
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
            width: 153px;
        }
        .style17
        {
            width: 153px;
        }
        
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style14">
    
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
                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black"></asp:Label>
            </td>
            <td class="style11">
                <strong>اسم مستخدم المرسل</strong></td>
        </tr>
        <tr>
            <td class="style16">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox1  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    </td>
            <td class="style12">
                <asp:TextBox ID="TextBox1" runat="server" Width="129px" BorderColor="#003399"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>اسم مستخدم المستقبل</strong></td>
        </tr>
        <tr>
            <td class="style16">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox2  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    </td>
            <td class="style12">
                <asp:TextBox ID="TextBox2" runat="server" Width="315px" BorderColor="#000099"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>عنوان الرسالة</strong></td>
        </tr>
        <tr>
            <td class="style16">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox3  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    </td>
            <td class="style12">
                <asp:TextBox ID="TextBox3" style="resize:none" runat="server" Height="186px" TextMode="MultiLine" 
                    Width="553px" BorderColor="Blue"></asp:TextBox>
            </td>
            <td class="style11">
                <strong>الرسالة</strong></td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style12">
                <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style11">
                <strong></strong></td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td class="style12">
                <asp:Button ID="Button1" runat="server" Text="ارسال الرسالة" Width="91px" 
                    BackColor="#6699FF" BorderColor="#0000CC" onclick="Button1_Click" />
            </td>
            <td class="style11">
                <strong></strong></td>
        </tr>
    </table>
    <p class="style13">
        حيث بامكان المستخدمين من ارسال رسائل للتواصل مع الادارة
        او المستخدمين الاخرين
    </p>
    <p class="style13">
        admin&nbsp; بالامكانك التواصل مع الادارة عبر اسم مستخدم المستقبل</p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

