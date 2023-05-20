<%@ Page Title="" Language="C#" MasterPageFile="~/Master.User.master" AutoEventWireup="true" CodeFile="add.aspx.cs" Inherits="Default2" %>

<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 71%;
            height: 182px;
            margin-left: 100px;
        }
        .style6
        {
            margin-left: 0px;
            margin-right: 0px;
        }
        .style7
        {
            text-align: center;
            font-family: "Times New Roman", Times, serif;
            color: #000000;
            font-size: medium;
        }
        .style8
        {
            text-align: center;
        }
        .style9
        {
            text-align: right;
        }
        .style10
        {
            color: #FF0000;
        }
        
        
       
    .style11
    {
        margin-left: 37px;
    }
    .style12
    {
        text-align: justify;
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
        

        <table class="style4">
            <tr>
                <td class="style8">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
              ErrorMessage="RequiredFieldValidator" ControlToValidate= textbox1  
                        CssClass="style10" >
              لا يجب ترك الحقل فارغ
             
              </asp:RequiredFieldValidator>
                    </td>
                <td class="style8">
                    مثال : كيفك </td>
                <td class="style8">
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="271px" 
                        MaxLength="25"></asp:TextBox>
                </td>
                <td class="style7">
                    <strong>المصطلح العامي</strong></td>
            </tr>
            <tr>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"  CssClass="style10" ControlToValidate= textbox2 >
                     لا يجب ترك الحقل فارغ
                    </asp:RequiredFieldValidator>
                    </td>
                <td class="style8">
                    مثال : كيف حالك</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="271px" 
                        MaxLength="50"></asp:TextBox>
                </td>
                <td class="style7">
                    <strong>شرح المصطلح بالفصحه </strong>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style6" 
                        Height="21px" Width="150px" DataSourceID="SqlDataSource2" 
                        DataTextField="word_type" DataValueField="word_type" >
                        <asp:ListItem Value="1">معنى </asp:ListItem>
                        <asp:ListItem Value="2">اختصار</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [word_type] FROM [types]"></asp:SqlDataSource>
                </td>
                <td class="style7">
                    <strong>نوع المصطلح</strong></td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="style6" 
                        Height="21px" Width="150px" DataSourceID="SqlDataSource1" 
                        DataTextField="place_name" DataValueField="place_name">
                        <asp:ListItem Value="1">سوريا</asp:ListItem>
                        <asp:ListItem Value="2">مصر</asp:ListItem>
                        <asp:ListItem Value="3">لبنان</asp:ListItem>
                        <asp:ListItem Value="4">الاردن</asp:ListItem>
                        <asp:ListItem Value="5">العراق</asp:ListItem>
                        <asp:ListItem Value="6">فلسطين</asp:ListItem>
                        <asp:ListItem Value="7">دول الخليج</asp:ListItem>
                        <asp:ListItem Value="8">تونس</asp:ListItem>
                        <asp:ListItem Value="9">السعودية</asp:ListItem>
                        <asp:ListItem Value="10">اليمن</asp:ListItem>
                        <asp:ListItem Value="11">ليبيا</asp:ListItem>
                        <asp:ListItem Value="12">الجزائر</asp:ListItem>
                        <asp:ListItem Value="13">المغرب</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [place_name] FROM [places]"></asp:SqlDataSource>
                </td>
                <td class="style7">
                    <strong>مكان المصطلح</strong></td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    <div class="style1">
    
        <div class="style2">
        
        <rsv:CaptchaControl ID="captcha1" runat ="server" CaptchaLength="5" 
                CaptchaHeight ="60" CaptchaWidth="200" CaptchaLineNoise="None" 
                CaptchaMinTimeout="5" CaptchaMaxTimeout="240" ForeColor="#00FFCC" 
                BackColor="White" CaptchaChars="ABCDEFGHIJKLNPQRTUVXYZ12346789" 
                FontColor="Red" /> 

           
        </div>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ErrorMessage="RequiredFieldValidator"  CssClass="style10" 
                        ControlToValidate= TextBox3 >الرجاء ادخال الرمز</asp:RequiredFieldValidator>
                    </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="style11" Height="26px" 
                        Width="196px"></asp:TextBox>
                </td>
                <td class="style7">
                    <strong>أدخل الرمز في الصورة</strong></td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Label ID="Label1" runat="server" CssClass="style10"></asp:Label>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    &nbsp;</td>
                <td class="style8">
                    <asp:Button ID="Button1" runat="server" BackColor="#6699FF" 
                        BorderColor="#0000CC" Font-Bold="True" Text="المساهمة" Width="118px" 
                        onclick="Button1_Click" />
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
        </table>
        

    </p>
    <p>
          &nbsp;<p class="style9">
              المساهمة في تحسين القاموس بالادخال اكبر عدد ممكن من المصطلحات العامية مع وضح 
              الترجمة لها 
    </p>
    <p class="style9">
              الرجاء المساهمة ولو بكلمة واحدة لهذا المشروع</p>
    <p class="style9">
        الرجاء التأكد من التهجية والكتابة الصحيحة للمصطلح , عدم كتابة مصطلحات تزيد عن 50 
        حرف او تنقص عن حرفان </p>
          </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

