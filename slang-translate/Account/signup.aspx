<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Account_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 89%;
            text-align: right;
        }
        .style7
        {
            width: 36%;
        }
        .style8
        {
            height: 26px;
            width: 36%;
        }
        .style9
        {
            width: 23%;
        }
        .style10
        {
            height: 26px;
            width: 23%;
        }
        .style11
        {
            height: 26px;
            width: 89%;
            text-align: right;
        }
        .style12
        {
            width: 24%;
        }
        .style13
        {
            height: 26px;
            width: 24%;
        }
        .style15
        {
            text-align: center;
        }
        .Label
        {
            text-align: center;
        }
        .style16
        {
            text-align: center;
            font-size: medium;
            color: #000000;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
    </head>
<body>
       <div>
       <!--    انشاء الجدول الحاول على جميع العناصر -->
    <table border="1" cellpadding="1" cellspacing="1" style="width: 60%" align="center">
            <tr>
                <td colspan="2" class="style16">
                    <strong>تسجيل مستخدم جديد</strong></td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table >
                        <tr>
                            <td class="style6">
                             <!--    انشاء عنصر التحقق حيث لا يجب ترك الحقل الاسم فارغ -->
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                    ErrorMessage="لا يمكن ترك حقل الاسم فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>

                            <td align="left" class="style7">
                            <!--    انشاء عنصر نص لكتابة اسم المستخدم الاول -->
                                <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" class="style12">
                                &nbsp;</td>
                            <td align="left" class="style9">
                                &nbsp;الاسم&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style6">
                              <!--    انشاء عنصر التحقق حيث لا يجب ترك الحقل الكنية فارغ -->
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName"
                                    ErrorMessage="لا يمكن ترك حقل الكنية فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" class="style7">
                             <!--    انشاء عنصر نص لكتابة الكنية -->
                                <asp:TextBox ID="txtLastName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" class="style12">
                                &nbsp;</td>
                            <td align="left" class="style9">
                                الكنية&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="style11">
                             <!--    انشاء عنصر التحقق حيث لا يجب ترك حقل اسم المستخدم فارغ -->
                                <asp:RequiredFieldValidator ID="rfvUserName" runat="server" ControlToValidate="txtUserName"
                                    ErrorMessage="لا يمكن ترك حقل اسم المستخدم فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" class="style8">
                            <!--    انشاء عنصر نص لكتابة اسم المستخدم -->
                                <asp:TextBox ID="txtUserName" runat="server" MaxLength="12" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" class="style13">
                                &nbsp;</td>
                            <td align="left" class="style10">
                                اسم المستخدم</td>
                        </tr>
                        <tr>
                            <td class="style6">
                            <!--    انشاء عنصر التحقق حيث لا يجب ترك حقل كلمة المرور فارغ -->
                                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="لا يمكن ترك حقل كلمة المرور فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" class="style7">
                             <!--    انشاء عنصر نص لكتابة كلمة المرور -->
                                <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" CssClass="TextinputText" 
                                    TextMode="Password"></asp:TextBox></td>
                            <td align="left" class="style12">
                                &nbsp;</td>
                            <td align="left" class="style9">
                                كلمة المرور</td>
                        </tr>
                        <tr>
                            <td class="style11">
        <!--    انشاء عنصر التحقق المقارنة حيث يقوم بالمقارنة بين حقل كلمة السر وحقل اعادة كتابة كلمة السر -->
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtRePwd" ControlToValidate="txtPwd" 
                                    Operator="Equal" ErrorMessage="كلمة السر غير متطابقة" 
                                    SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                            </td>
                            <td align="left" class="style8">
                             <!--    انشاء عنصر نص لاعادة كتابة كلمة المرور -->
                                <asp:TextBox ID="txtRePwd" runat="server" MaxLength="15" 
                                    CssClass="TextinputText" TextMode="Password"></asp:TextBox></td>
                            <td align="left" class="style13">
                                &nbsp;</td>
                            <td align="left" class="style10">
                                اعادة كتابة كلمة المرور</td>
                        </tr>
                        <tr>
                            <td class="style6">
                              <!--    انشاء عنصر التحقق حيث يجب تحديد الجنس من العنصر radiobutton -->
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdoGender"
                                    ErrorMessage="الرجاء تحديد الجنس" SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td class="style7">
                            <!--    انشاء عنصر اختيار متعدد حيث يكون بداخله نوع الجنس ذكر او انثى -->
                                <asp:RadioButtonList ID="rdoGender" runat="server">
                                <asp:ListItem>ذكر</asp:ListItem>
                                <asp:ListItem Value="انثى">انثى</asp:ListItem>
                                </asp:RadioButtonList></td>
                            <td align="left" class="style12">
                                &nbsp;</td>
                            <td align="left" class="style9">
                                الجنس</td>
                        </tr>
                        <tr>
                            <td class="style6">
                              <!--    انشاء عنصر التحقق حيث لا يجب ترك حقل العنوان فارغ -->
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAdress"
                                    ErrorMessage="لا يمكن ترك حقل العنوان فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" class="style7">
                             <!--    انشاء عنصر نص لكتابة عنوان المستخدم -->
                                <asp:TextBox ID="txtAdress" runat="server" TextMode="MultiLine" 
                                    CssClass="TextinputText" Width="121px"></asp:TextBox></td>
                            <td align="left" class="style12">
                                &nbsp;</td>
                            <td align="left" class="style9">
                                العنوان</td>
                        </tr>
                        
                        <tr>
                            <td class="style6">
                             <!--    انشاء عنصر التحقق حيث لا يجب ترك حقل البريد الالكتروني فارغ -->
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmailID"
                                    ErrorMessage="لا يمكن ترك حقل البريد الاكتروني فارغ" 
                                    SetFocusOnError="True" ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" class="style7">
                            <!--    انشاء عنصر نص لكتابة البريد الالكتروني للمستخدم -->
                                <asp:TextBox ID="txtEmailID" runat="server" MaxLength="70" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" class="style12">
                                &nbsp;</td>
                            <td align="left">
                                عنوان الايميل</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table style="width: 100%" class="Table">
                        <tr>
                            <td>
                      <!--    انشاء عنصر نص لعرض رسائل الخطأ في حال ادخال بيانات خاطئة او في حال وجود نفس اسم المستخدم  -->
                                </td>
                            <td>
                            <!--    انشاء عنصر التحقق حيث يحوي رسائل الخطا الواردة من عناصر التحقق السابقة  -->
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" ForeColor="Red" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align=center>
                                <asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label></td>
                        </tr>
                        <tr>
                            <td colspan="2" class="style15">
                            <!--    انشاء عنصر زر ليقوم بتنفيذ عمليه التسجيل الجديدة -->
                                <asp:Button ID="btnSave" runat="server" Text="التسجيل" CssClass="Button" 
                                    onclick="btnSave_Click" style="margin-left: 0px" Width="77px" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
   
</body>
</html>

    <p>
    </p>
    <p>
    </p>
</asp:Content>

