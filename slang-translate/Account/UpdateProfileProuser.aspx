<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Prouser.master" AutoEventWireup="true" CodeFile="UpdateProfileProuser.aspx.cs" Inherits="Account_UpdateProfile" %>

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
            text-align: center;
        }
        .style9
        {
            color: #000000;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    
    
    <div>
    <table border="1" cellpadding="1" cellspacing="1" style="width: 60%" align="center" class="Table">
            <tr>
                <td colspan="2" class="style8">
                    <asp:Label ID="lblUName" runat="server" Text=" "></asp:Label> 
                    <span class="style9"><strong>تعديل الحساب</strong></span></td>
            </tr>
            <tr>
                <td colspan="2" valign="top">
                    <table style="width: 100%">
                        <tr>
                            <td class="style5">
                                <asp:RequiredFieldValidator ID="rfvFirstName" runat="server" ControlToValidate="txtFirstName"
                                    ErrorMessage="First Name can't be left blank" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtFirstName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                الاسم&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtLastName"
                                    ErrorMessage="Last Name can't be left blank" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtLastName" runat="server" MaxLength="50" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%">
                                الكنية</td>
                        </tr>
                        
                        <tr>
                            <td class="style5">
                                <asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd"
                                    ErrorMessage="Password can't be left blank" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtPwd" runat="server" MaxLength="15" CssClass="TextinputText" 
                                    TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%">
                                كلمة المرور الجديدة</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                    ControlToCompare="txtRePwd" ControlToValidate="txtPwd" 
                                    Operator="Equal" ErrorMessage="كلمة السر غير متطابقة" 
                                    SetFocusOnError="True" ForeColor="Red"></asp:CompareValidator>
                            </td>
                            <td align="left" width="50%" style="height: 26px">
                                <asp:TextBox ID="txtRePwd" runat="server" MaxLength="15" 
                                    CssClass="TextinputText" TextMode="Password"></asp:TextBox></td>
                            <td align="left" width="20%" style="height: 26px">
                                اعادة كتابة كلمة المرور الجديدة</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rdoGender"
                                    ErrorMessage="Gender can't be left blank" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td width="50%" class="style6">
                                <asp:RadioButtonList ID="rdoGender" runat="server">
                                <asp:ListItem>ذكر</asp:ListItem>
                                <asp:ListItem>انثى</asp:ListItem>
                                </asp:RadioButtonList></td>
                            <td align="left" width="20%">
                                الجنس</td>
                        </tr>
                        <tr>
                            <td class="style5">
                                <asp:RequiredFieldValidator ID="rfvAddress" runat="server" ControlToValidate="txtAdress"
                                    ErrorMessage="Address can't be left blank" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtAdress" runat="server" TextMode="MultiLine" 
                                    CssClass="TextinputText" Width="157px"></asp:TextBox></td>
                            <td align="left" width="20%">
                                العنوان</td>
                        </tr>
                        
                        <tr>
                            <td class="style5">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCurPwd"
                                    ErrorMessage="Current Password can't be left blank" SetFocusOnError="True" 
                                    ForeColor="Red">*</asp:RequiredFieldValidator></td>
                            <td align="left" width="50%">
                                <asp:TextBox ID="txtCurPwd" runat="server" MaxLength="70" TextMode="Password" CssClass="TextinputText"></asp:TextBox></td>
                            <td align="left" width="20%">
                                كلمة السر الحالية</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <table style="width: 100%" class="Table">
                        <tr>
                            <td>
                                <asp:Label ID="lblMsg" runat="server" CssClass="Label" Font-Bold="True" 
                                    ForeColor="Red"></asp:Label></td>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="style7">
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

