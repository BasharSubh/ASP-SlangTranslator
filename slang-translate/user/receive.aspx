<%@ Page Title="" Language="C#" MasterPageFile="~/Master.User.master" AutoEventWireup="true" CodeFile="receive.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
                
        
       
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
            text-align: center;
        }
        .style18
        {
            font-size: small;
        }
        .style19
        {
            margin-left: 58px;
            margin-right: 0px;
        }
        
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
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
    </p>
    <p>
        <div class="style16">
            <br />
              <!--   انشاء عنصر النص ليقوم بعرض النص علبة الوارد فارغ في حيث لم يتم هناك عناصر داخل الجريد فيو -->
            <asp:Label ID="Label1" runat="server" CssClass="style18" Font-Bold="True" 
                Font-Size="Medium" ForeColor="Red"></asp:Label>
            <br />
            <br />
              <!--   انشاء عنصر الجريد فيو 1 ليتم عرض عناصر قاعدة البيانات داخله -->
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                CssClass="style19" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" Width="805px">
                <AlternatingRowStyle BackColor="White" />
               
                <Columns>
                    <asp:CommandField DeleteText="حذف" SelectText="عرض" ShowDeleteButton="True" 
                        ShowSelectButton="True" />
                    <asp:BoundField DataField="sender" HeaderText="المرسل" 
                        SortExpression="sender" />
                    <asp:BoundField DataField="subject" HeaderText="عنوان الرسالة" 
                        SortExpression="subject" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                        ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="date" HeaderText="التاريخ" SortExpression="date" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
              <!--   انشاء عنصر الجريد فيو 2 ليعرض حقل الرسالة استادا على القيمة المختارة في الجريد فيو 1 -->
            <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
                AutoGenerateColumns="False" CellPadding="4" CssClass="style19" 
                DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" 
                Width="805px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="message" HeaderText="الرسالة" 
                        SortExpression="message" />
                </Columns>
                       <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
    </p>
    <p class="style16">
      <!--   انشاء عنصر الزر ليقوم باعادة تحميل الصفحة عن الضغط عليه لتحديث علبة الوارد -->
        <asp:Button ID="Button1" runat="server" BackColor="#FFFFCC" 
            BorderColor="#663300" Font-Bold="True" onclick="Button1_Click" 
            Text="تحديث علبة الوارد" Width="135px" />
        <br />
    </p>
          <p class="style13">
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [message] WHERE [id] = @id" 
            InsertCommand="INSERT INTO [message] ([sender], [subject]) VALUES (@sender, @subject)" 
            SelectCommand="SELECT [sender], [subject], [date], [id] FROM [message] WHERE ([receiver] = @receiver)" 
            UpdateCommand="UPDATE [message] SET [sender] = @sender, [subject] = @subject WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sender" Type="String" />
                <asp:Parameter Name="subject" Type="String" />
            </InsertParameters>
                 <SelectParameters>
                <asp:ControlParameter ControlID="lblUName" Name="receiver" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="sender" Type="String" />
                <asp:Parameter Name="subject" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
      <!--   انشاء عنصر التحكم التابع للجريد فيو 2 حيث يعيد حقل الرسالة في حال تم اختيار احد السجلات من العنصر جريد فيو 1 -->
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [message] FROM [message] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="id" 
                PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    <p>
    </p>
</asp:Content>

