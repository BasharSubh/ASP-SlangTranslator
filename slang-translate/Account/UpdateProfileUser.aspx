<%@ Page Title="" Language="C#" MasterPageFile="~/Master.User.master" AutoEventWireup="true" CodeFile="UpdateProfileUser.aspx.cs" Inherits="Account_UpdateProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            text-align: right;
            height: 26px;
            width: 67%;
        }
        .style5
        {
            text-align: right;
            width: 67%;
        }
        .style6
        {
            text-align: right;
        }
        .style7
        {
            text-align: center;
        }
        .style8
        {
            color: #000000;
        }
        .style9
        {
            text-align: center;
        }
        .style10
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
    
    
    <div>
    <!--   انشاء جدول لاحتيواء العناصر   -->
    <table border="1" cellpadding="1" cellspacing="1" style="width: 60%" align="center" class="Table">
            <tr>
                <td colspan="2" class="style10">
                    <asp:Label ID="lblUName" runat="server" Text=" "></asp:Label> 
                    <span class="style9"><strong>تعديل الحساب</strong></span></td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td class="style5">
                             <!--   انشاء عنصر التحقق حيث لا يجب ترك الحقل الاسم الاول فارغ   -->
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                    ErrorMessage="لا يمكن ترك الاسم الاول فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                              <!--   انشاء عنصر النص ليقوم المستخدم بتعديل الاسم الاول الخاص به   -->
                                <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%" class="style8">
                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                الاسم&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                </strong> </td>
                        </tr>
                        <tr>
                            <td class="style5">
                             <!--   انشاء عنصر التحقق حيث لا يجب ترك الحقل الكنية فارغ   -->
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName"
                                    ErrorMessage="لا يمكن ترك الحقل الكنية فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                            <!--   انشاء عنصر النص ليقوم المستخدم بتعديل الكنية الخاصة به   -->
                                <asp:TextBox ID="txtLastName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%" class="style8">
                                <strong>الكنية</strong></td>
                        </tr>
                        
                        <tr>
                            <td class="style5">
                            <!--   انشاء عنصر التحقق حيث لا يجب ترك الحقل كلمة المرور الجديدة فارغة   -->
                                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="من فضلك ادخل كلمة مرور جديدة" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                             <!--   انشاء عنصر النص ليقوم المستخدم بكتابة كلمة المرور الجديدة الخاصة به   -->
                                <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" CssClass="TextinputText" 
                                    TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%" class="style8">
                                <strong>كلمة المرور الجديدة</strong></td>
                        </tr>
                        <tr>
                            <td class="style4">
                            <!--   انشاء عنصر التحقق ليقوم بالمقارنة بين حقل كلمة المرور الجديدة مع حقل اعادة كتابة كلمة المرور الجديدة   -->
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtRePwd" ControlToValidate="txtPwd" 
                                    Operator="Equal" ErrorMessage="كلمة السر غير متطابقة" 
                                    SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                            </td>
                            <td align="left" width="50%" style="height: 26px">
                              <!--   انشاء عنصر النص ليقوم المستخدم بإعادة كتابة كلمة المرور الجديدة الخاصة به   -->
                                <asp:TextBox ID="txtRePwd" runat="server" MaxLength="15" 
                                    CssClass="TextinputText" TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%" style="height: 26px" class="style8">
                                <strong>اعادة كتابة كلمة المرور الجديدة</strong></td>
                        </tr>
                        <tr>
                            <td class="style5">
                              <!--   انشاء عنصر التحقق حيث لا يجب ترك الحقل الجنس فارغ   -->
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdoGender"
                                    ErrorMessage="الرجاء اعادة تحديد الجنس" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td width="50%" class="style6">
                              <!--   انشاء عنصر الاختيار ليعرض بين انواع الجنس ذكر او انثى   -->
                                <asp:RadioButtonList ID="rdoGender" runat="server">
                                <asp:ListItem>ذكر</asp:ListItem>
                                <asp:ListItem>انثى</asp:ListItem>
                                </asp:RadioButtonList></td>
                            <td align="left" width="20%" class="style8">
                                <strong>الجنس</strong></td>
                        </tr>
                        <tr>
                            <td class="style5">
                              <!--   انشاء عنصر التحقق حيث لا يجب ترك الحقل العنوان فارغة   -->
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAdress"
                                    ErrorMessage="لا يمكن ترك الحقل العنوان فارغ" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                            <!--   انشاء عنصر النص ليقوم المستخدم بإعادة كتابة العنوان الخاص به   -->
                                <asp:TextBox ID="txtAdress" runat="server" TextMode="MultiLine" 
                                    CssClass="TextinputText" Width="157px"></asp:TextBox></td>
                            <td align="left" width="20%" class="style8">
                                <strong>العنوان</strong></td>
                        </tr>
                        
                        <tr>
                            <td class="style5">
                             <!--   انشاء عنصر التحقق حيث لا يجب ترك كلمة السر الحالية فارغة   -->
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCurPwd"
                                    ErrorMessage="الرجاء ادخل كلمة السر الحالية" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                             <!--   انشاء عنصر النص ليقوم المستخدم بكتابة كلمة السر الحالية الخاصة به   -->
                                <asp:TextBox ID="txtCurPwd" runat="server" MaxLength="70" TextMode="Password" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%" class="style8">
                                <strong>كلمة السر الحالية</strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table style="width: 100%" class="Table">
                        <tr>
                            <td>
                              <!--   انشاء عنصر النص لاظهار رسائل الاشعارت تم التعديل بنجاح او فشل التعديل    -->
                                <asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label></td>
                            <td>
                             <!--   انشاء عنصر تلحيص التحقق ليقوم بعرض رسائل الخطأ من ا=عناصر التحقق السابقة فيه -->
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="style7">
                             <!--   انشاء عنصر زر ليقوم المستخم بالضغط عليه لتعديل البيانات   -->
                                <asp:Button ID="btnUpdate" runat="server" Text="تعديل الحساب" CssClass="Button" 
                                    onclick="btnUpdate_Click"/></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</p>
    <p>
    </p>
</asp:Content>

