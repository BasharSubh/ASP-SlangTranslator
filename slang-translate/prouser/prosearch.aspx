<%@ Page Title="" Language="C#" MasterPageFile="~/Master.proUser.master" AutoEventWireup="true" CodeFile="prosearch.aspx.cs" Inherits="prosearch" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 60%;
            margin-left: 194px;
        }
        .style5
        {
            height: 22px;
            width: 134px;
        }
        .style6
        {
            text-align: center;
        }
        .style8
        {
            margin-left: 0px;
        }
        .style9
        {
            width: 10px;
        }
        .style10
        {
            height: 22px;
            width: 10px;
        }
        .style11
        {
            height: 22px;
            text-align: center;
            width: 357px;
        }
        .style12
        {
            margin-left: 54px;
        }
        .style13
        {
            color: #000000;
        }
        .style14
        {
            text-align: center;
            width: 357px;
        }
        .style15
        {
            width: 134px;
        }
        .style16
        {
            text-align: center;
            width: 134px;
        }
        .style17
        {
            text-align: right;
            width: 877px;
        }
        .style18
        {
            width: 16px;
            color: #FF00FF;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        .style19
        {
            width: 97%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style19">
        <tr>
            <td class="style17">
    
        <asp:Label ID="lblUName" runat="server" Text=""></asp:Label>
    
                </td>
            <td class="style18">
                <strong>مرحبا</strong></td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <table class="style4">
        <tr>
            <td class="style9">
                <asp:Button ID="Button1" runat="server" CssClass="style8" Text="موافق" 
                    Width="96px" onclick="Button1_Click" BackColor="#339966" 
                    BorderColor="#006600" Font-Bold="False" ForeColor="White" />
            </td>
            <td class="style14">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>... الرجاء الاختيار</asp:ListItem>
                    <asp:ListItem Value="1">بحث حسب الحرف</asp:ListItem>
                    <asp:ListItem Value="2">بحث حسب المكان</asp:ListItem>
                    <asp:ListItem Value="3">بحث حسب نوع المصطلح</asp:ListItem>
                    <asp:ListItem Value="4">بحث حسب التاريخ</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style15">
                <strong>
                <asp:Label ID="Label1" runat="server" Text="اختر نوع البحث " CssClass="style13"></asp:Label>
                </strong> 
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style16">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="word_type" 
                    DataValueField="word_type" Visible="False" Height="25px">
                    <asp:ListItem>معنى</asp:ListItem>
                    <asp:ListItem>اختصار</asp:ListItem>
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [word_type] FROM [types]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="place_name" 
                    DataValueField="place_name" Visible="False" Height="25px">
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [place_name] FROM [places]"></asp:SqlDataSource>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="style8" 
                    Height="25px" Visible="False">
                    <asp:ListItem Selected="True">الرجاء الاختيار</asp:ListItem>
                    <asp:ListItem>ا</asp:ListItem>
                    <asp:ListItem>ب</asp:ListItem>
                    <asp:ListItem>ت</asp:ListItem>
                    <asp:ListItem>ث</asp:ListItem>
                    <asp:ListItem>ج</asp:ListItem>
                    <asp:ListItem>ح</asp:ListItem>
                    <asp:ListItem>خ</asp:ListItem>
                    <asp:ListItem>د</asp:ListItem>
                    <asp:ListItem>ذ</asp:ListItem>
                    <asp:ListItem>ر</asp:ListItem>
                    <asp:ListItem>ز</asp:ListItem>
                    <asp:ListItem>س</asp:ListItem>
                    <asp:ListItem>ش</asp:ListItem>
                    <asp:ListItem>ص</asp:ListItem>
                    <asp:ListItem>ض</asp:ListItem>
                    <asp:ListItem>ط</asp:ListItem>
                    <asp:ListItem>ظ</asp:ListItem>
                    <asp:ListItem>ع</asp:ListItem>
                    <asp:ListItem>غ</asp:ListItem>
                    <asp:ListItem>ف</asp:ListItem>
                    <asp:ListItem>ق</asp:ListItem>
                    <asp:ListItem>ك</asp:ListItem>
                    <asp:ListItem>ل</asp:ListItem>
                    <asp:ListItem>ل</asp:ListItem>
                    <asp:ListItem>م</asp:ListItem>
                    <asp:ListItem>ن</asp:ListItem>
                    <asp:ListItem>ه</asp:ListItem>
                    <asp:ListItem>و</asp:ListItem>
                    <asp:ListItem>ي</asp:ListItem>
                </asp:DropDownList>
                <br />
                <asp:Button ID="Button2" runat="server" BackColor="#3399FF" BorderColor="Blue" 
                    Text="بحث" Visible="False" Width="170px" onclick="Button2_Click1" />
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
                    BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                    ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Visible="False" 
                    Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                        VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                        Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td class="style5">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="style14">
                <asp:Label ID="Label2" runat="server" ForeColor="Red"></asp:Label>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
    </table>
        <div class="style6">
        </div>
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Justify" AutoGenerateColumns="False" 
        CellPadding="4" CssClass="style12" 
        DataSourceID="SqlDataSource3" ForeColor="#333333" 
        GridLines="None" Width="838px" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                SortExpression="unlikes" />
            <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                SortExpression="likes" />
            <asp:BoundField DataField="place" HeaderText="المكان" SortExpression="place" />
            <asp:BoundField DataField="type" HeaderText="النوع" SortExpression="type" />
            <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                SortExpression="explanation" />
            <asp:BoundField DataField="word" HeaderText="المصطلح" 
                SortExpression="word" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [word], [explanation], [type], [place], [likes], [unlikes] FROM [words] WHERE ([word] LIKE  @word + '%' and [accept]='yes')">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList3" Name="word" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Justify" AutoGenerateColumns="False" 
        CellPadding="4" CssClass="style12" 
        DataSourceID="SqlDataSource4" ForeColor="#333333" 
        GridLines="None" Width="838px" AllowPaging="True" AllowSorting="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="word" HeaderText="المصطلح" 
                SortExpression="word" />
            <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                SortExpression="explanation" />
            <asp:BoundField DataField="type" HeaderText="النوع" SortExpression="type" />
            <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                SortExpression="likes" />
            <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                SortExpression="unlikes" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [word], [explanation], [type], [likes], [unlikes] FROM [words] WHERE ([place] = @place and [accept]='yes')">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList4" Name="place" 
                PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
    <asp:GridView ID="GridView3" runat="server" HorizontalAlign="Justify" AutoGenerateColumns="False" 
        CellPadding="4" CssClass="style12" 
        DataSourceID="SqlDataSource5" ForeColor="#333333" 
        GridLines="None" Width="838px" AllowPaging="True" AllowSorting="True" 
            Visible="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                SortExpression="unlikes" />
            <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                SortExpression="likes" />
            <asp:BoundField DataField="place" HeaderText="المكان" SortExpression="place" />
            <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                SortExpression="explanation" />
            <asp:BoundField DataField="word" HeaderText="المصطلح" 
                SortExpression="word" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [word], [explanation], [place], [likes], [unlikes] FROM [words] WHERE ([type] = @type and [accept]='yes')">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList2" Name="type" 
                    PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
</p>
    <p>
    <asp:GridView ID="GridView4" runat="server" HorizontalAlign="Justify" AutoGenerateColumns="False" 
        CellPadding="4" CssClass="style12" 
        DataSourceID="SqlDataSource6" ForeColor="#333333" 
        GridLines="None" Width="838px" AllowPaging="True" AllowSorting="True" 
            Visible="False">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                SortExpression="unlikes" />
            <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                SortExpression="likes" />
            <asp:BoundField DataField="date" HeaderText="تاريخ الاضافة" 
                SortExpression="date" />
            <asp:BoundField DataField="type" HeaderText="النوع" SortExpression="type" />
            <asp:BoundField DataField="place" HeaderText="المكان" 
                SortExpression="place" />
            <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                SortExpression="explanation" />
            <asp:BoundField DataField="word" HeaderText="المصطلح" SortExpression="word" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [word], [explanation], [type], [place], [date], [unlikes], [likes] FROM [words] WHERE ([date] = @date and [accept]='yes')">
            <SelectParameters>
                <asp:ControlParameter ControlID="Calendar1" Name="date" 
                    PropertyName="SelectedDate" Type="DateTime" />
            </SelectParameters>
        </asp:SqlDataSource>
    <br />
</p>
</asp:Content>

