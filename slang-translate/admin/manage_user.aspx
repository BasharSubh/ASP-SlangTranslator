<%@ Page Title="" Language="C#" MasterPageFile="~/Master.admin.master" AutoEventWireup="true" CodeFile="manage_user.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
                
        
       
        .style11
        {
            text-align: right;
            width: 876px;
        }
        .style12
        {
            text-align: center;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
            color: #FF00FF;
        }
        
        
       
        .style16
        {
            width: 60%;
            margin-left: 195px;
        }
        
        
       
        .style17
        {
            text-align: center;
        }
        
        
       
        .style18
        {
            margin-left: 0px;
        }
        .style19
        {
            margin-left: 32px;
            margin-right: 0px;
        }
        
        
       
        .style22
        {
            width: 44%;
            margin-left: 238px;
        }
        
        
       
        .style23
        {
            font-family: "Times New Roman", Times, serif;
        }
        
        
       
        .style21
        {
            margin-left: 1px;
        }
                
        
       
        .style24
        {
            font-family: "Times New Roman", Times, serif;
            color: #FF0000;
            font-size: medium;
        }
                
        
       
        .style25
        {
            margin-left: 0px;
            text-align: right;
        }
        .style26
        {
            text-align: center;
            font-size: medium;
        }
        .style27
        {
            margin-left: 32px;
            margin-right: 0px;
            text-align: center;
        }
        .style28
        {
            text-align: right;
        }
                
        
       
        .style29
        {
            color: #000000;
            font-family: "Times New Roman", Times, serif;
        }
                
        
       
        .style30
        {
            font-family: "Times New Roman", Times, serif;
            color: #0000FF;
            font-size: medium;
        }
                
        
       
    </style>
     

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p class="style17">
        <table class="style1">
            <tr>
                <td class="style11">
    <!--   انشاء عنصر النص ل  اسم المستخدم ليتم تسجيل اسم دخول المستخدم داخله -->
        <asp:Label ID="lblUName" runat="server" Text=""></asp:Label>
    
                </td>
                <td class="style12">
    
                    <strong>مرحبا</strong></td>
            </tr>
        </table>
    <table class="style16">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style17">
            <!--   انشاء قائمة لعرض طرق الادارة للمستخدمين للمدير  -->
                <asp:DropDownList ID="DropDownList1" runat="server" Width="277px" OnSelectedIndexChanged="myListDropDown_Change"
                    CssClass="style18" Height="22px" AutoPostBack="True">
                    <asp:ListItem Selected="True" Value="0">.. الرجاء الاختيار</asp:ListItem>
                    <asp:ListItem Value="1">قبول او رفض طلبات الترفيع للعضوية المميزة </asp:ListItem>
                    <asp:ListItem Value="2">ترفيع او سحب عضوية مميزة من مستخدم ما</asp:ListItem>
                    <asp:ListItem Value="3">عرض معلومات شاملة عن مستخدم ما</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
        

    </p>
        <table class="style22">
            <tr>
                <td class="style17">
                    &nbsp;</td>
                <td class="style17" colspan="2">
                    <strong>
                    <!--   انشاء عنصر النص لعرض رسائل وهي مبرمجة في الكود الخلفي -->
                    <asp:Label ID="Label4" runat="server" CssClass="style24"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="style28">
                <!--   انشاء عنصر الزر المسؤول عن تبفيذ عملية البحث عن المستخدمين  -->
                    <asp:Button ID="Button4" runat="server" Text="بحث" Width="78px" 
                        Visible="False" onclick="Button4_Click" />
                </td>
                <td class="style17" colspan="2">
                <!--   انشاء عنصر النص ل لكتابة اسم المستخدم المراد البحث عنه لسحب العضوية او ترفيع-->
                    <asp:TextBox ID="TextBox2" runat="server" Height="28px" Width="200px" 
                        Visible="False"></asp:TextBox>
                        <!--   انشاء عنصر النص ل لكتابة اسم المستخدم المراد البحث عنه لعرض معلومات شاملة عنه-->
                    <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="200px" 
                        Visible="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td class="style26" colspan="2">
                    <strong>
                    <!--  ترفيع او سحب العضوية من المستخدم وارسال رسالة بذلك انشاء عنصر النص ل لكتابة النص -->
                    <asp:Label ID="Label5" runat="server" CssClass="style29" 
                        Text="ترفيع او سحب العضوية من المستخدم وارسال رسالة بذلك" Visible="False"></asp:Label>
                    <br />
        <asp:Label ID="Label2" runat="server" Text="تأكيد او رفض الطلب وارسال رسالة للمستخدم بذلك" BackColor="White" 
                        ForeColor="Black" CssClass="style23" ></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="style25" colspan="2">
                    &nbsp;</td>
                <td class="style27">
                  <!--   انشاء عنصر الزر لسحب العضوية  -->
                    <asp:Button ID="Button5" runat="server" BackColor="Red" BorderColor="Black" 
                        BorderStyle="Solid" CssClass="style18" ForeColor="White" Height="31px" 
                        Text="سحب العضوية" Width="83px" onclick="Button5_Click" Visible="False" />
                        <!--   انشاء عنصر الزر لترفيع المستخدم  -->
                    <asp:Button ID="Button6" runat="server" BackColor="#006666" BorderColor="Black" 
                        BorderStyle="Solid" ForeColor="White" Height="31px" Text="ترفيع المستخدم" 
                        Width="83px" onclick="Button6_Click" Visible="False" />
                          <!--   انشاء عنصر الزر لتأكيد طلب الترفيع  -->
                    <asp:Button ID="Button3" runat="server" BackColor="#006666" BorderColor="Black" 
                        BorderStyle="Solid" ForeColor="White" Height="31px" onclick="Button3_Click1" 
                        Text="تأكيد" Width="55px" />
                         <!--   انشاء عنصر الزر لرفض طلب الترفيع  -->
                    <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="Black" 
                        BorderStyle="Solid" Text="رفض" Width="55px" 
                        Font-Bold="False" ForeColor="White" onclick="Button2_Click" 
                        CssClass="style21" Font-Size="Small" Height="31px" />
                </td>
            </tr>
        </table>
        <div class="style17">
         <!--   انشاء عنصر الجريد فيو 1 الخاصة باظهار نتائج من قاعدة البيانات  -->
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
             onselectedindexchanged="GridView1_SelectedIndexChanged1"
                CssClass="style19" DataKeyNames="id" 
            DataSourceID="SqlDataSource1" ForeColor="#333333" Width="848px" 
                GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="رقم الطلب" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="username" HeaderText="المرسل" 
                    SortExpression="username" />
                <asp:BoundField DataField="permission" HeaderText="الصلاحية" 
                    SortExpression="permission" />
                <asp:BoundField DataField="why_you_want" HeaderText="اسباب الطلب" 
                    SortExpression="why_you_want" />
                <asp:BoundField DataField="date" HeaderText="التاريخ" 
                    SortExpression="date" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Select" Text="اختيار"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
        </div>
         <!--   انشاء عنصر الاتصال ليتم الاتصال بقاعدة البيانات وجلب النتائج ووضعها في العنصر جريد فيو 1  -->
          <!--  هنا تم التعديل على البنية حذف حيث اصبح يقوم بترفيع المستخدم عند الضغط عليها  -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="UPDATE [permission] set [permission] = 'prouser' and [accept] = 'yes' WHERE [id] = @original_id insert into [message] (subject, message, sender, receiver) values ('طلب العضوية المميزة','تم قبول طلبك واصبحت الان من المستخدمين المميزين',@user ,@original_username) " 
        InsertCommand="INSERT INTO [permission] ([id], [username], [permission], [why_you_want], [date]) VALUES (@id, @username, @permission, @why_you_want, @date)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [permission] WHERE ([accept] = @accept) and ([why_you_want] != '0')" 
        UpdateCommand="UPDATE [permission] SET [username] = @username, [permission] = @permission, [why_you_want] = @why_you_want, [date] = @date WHERE [id] = @original_id AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([permission] = @original_permission) OR ([permission] IS NULL AND @original_permission IS NULL)) AND (([why_you_want] = @original_why_you_want) OR ([why_you_want] IS NULL AND @original_why_you_want IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="user"  />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_permission" Type="String" />
                <asp:Parameter Name="original_why_you_want" Type="String" />
                <asp:Parameter Name="original_date" Type="DateTime" />
            </DeleteParameters>
            <InsertParameters>
           
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="permission" Type="String" />
                <asp:Parameter Name="why_you_want" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="waiting" Name="accept" Type="String" />
            </SelectParameters>
            <UpdateParameters>
               
                <asp:Parameter Name="permission" Type="String" />
                <asp:Parameter Name="why_you_want" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_permission" Type="String" />
                <asp:Parameter Name="original_why_you_want" Type="String" />
                <asp:Parameter Name="original_date" Type="DateTime" />
            </UpdateParameters>
    </asp:SqlDataSource>
    <div class="style17">
    <!--   انشاء عنصر الجريد فيو 2 الخاصة باظهار نتائج من قاعدة البيانات  وهي نتائج بحث المستخدم لسحب طلب العضوية او الترفيع-->
        <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
             onselectedindexchanged="GridView2_SelectedIndexChanged1"
                CssClass="style19" DataKeyNames="id" 
            DataSourceID="SqlDataSource2" ForeColor="#333333" Width="848px" 
                GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="رقم الطلب" ReadOnly="True" 
                    SortExpression="id" />
                <asp:BoundField DataField="username" HeaderText="المرسل" 
                    SortExpression="username" />
                <asp:BoundField DataField="permission" HeaderText="الصلاحية" 
                    SortExpression="permission" />
                <asp:BoundField DataField="why_you_want" HeaderText="اسباب طلب العضوية المميزة" 
                    SortExpression="why_you_want" />
                <asp:BoundField DataField="date" HeaderText="تاريخ الارسال" 
                    SortExpression="date" />
                <asp:BoundField DataField="accept" HeaderText="accept" 
                    SortExpression="accept" Visible="False" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Select" Text="اختيار"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
    </div>
    <p>
     <!--   انشاء عنصر الاتصال ليتم الاتصال بقاعدة البيانات وجلب النتائج ووضعها في العنصر جريد فيو 2  -->
          <!--  هنا تم التعديل على البنية حذف حيث اصبح يقوم بسحب العضوية من المستخدم عند الضغط عليها  -->
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConflictDetection="CompareAllValues" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="UPDATE [permission] set [permission] = 'user' WHERE [id] = @original_id insert into [message] (subject, message, sender, receiver) values ('العضوية المميزة','تم سحب العضوية المميزة منك الرجاء راسل الادارة',@user ,@original_username) " 
            InsertCommand="INSERT INTO [permission] ([id], [username], [permission], [why_you_want], [date], [accept]) VALUES (@id, @username, @permission, @why_you_want, @date, @accept)" 
            OldValuesParameterFormatString="original_{0}" 
            SelectCommand="SELECT * FROM [permission] WHERE ([username] LIKE '%' + @username + '%')" 
            UpdateCommand="UPDATE [permission] SET [username] = @username, [permission] = @permission, [why_you_want] = @why_you_want, [date] = @date, [accept] = @accept WHERE [id] = @original_id AND (([username] = @original_username) OR ([username] IS NULL AND @original_username IS NULL)) AND (([permission] = @original_permission) OR ([permission] IS NULL AND @original_permission IS NULL)) AND (([why_you_want] = @original_why_you_want) OR ([why_you_want] IS NULL AND @original_why_you_want IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([accept] = @original_accept) OR ([accept] IS NULL AND @original_accept IS NULL))">
            <DeleteParameters>
             <asp:Parameter Name="user"  />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_permission" Type="String" />
                <asp:Parameter Name="original_why_you_want" Type="String" />
                <asp:Parameter Name="original_date" Type="DateTime" />
                <asp:Parameter Name="original_accept" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="permission" Type="String" />
                <asp:Parameter Name="why_you_want" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="accept" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="username" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="permission" Type="String" />
                <asp:Parameter Name="why_you_want" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="accept" Type="String" />
                <asp:Parameter Name="original_id" Type="Int32" />
                <asp:Parameter Name="original_username" Type="String" />
                <asp:Parameter Name="original_permission" Type="String" />
                <asp:Parameter Name="original_why_you_want" Type="String" />
                <asp:Parameter Name="original_date" Type="DateTime" />
                <asp:Parameter Name="original_accept" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <div class="style17">
        <strong>
          <!--   انشاء عنصر النص لعرض النص المعلومات الشخصية للمتسخدم  -->
        <asp:Label ID="Label6" runat="server" CssClass="style30" 
            Text="المعلومات الشخصية للمستخدم" Visible="False"></asp:Label>
        <br />
         <!--   انشاء عنصر الجريد فيو 3 الخاصة باظهار نتائج من قاعدة البيانات  وهي نتائج للمعلومات الخاصة بالمستخدم ""الشخصية-->
        <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
             onselectedindexchanged="GridView2_SelectedIndexChanged1"
                CssClass="style19" DataKeyNames="Id" 
            DataSourceID="SqlDataSource3" ForeColor="#333333" Width="848px" 
                GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="رقم المستخدم" 
                    SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="FirstName" HeaderText="الاسم" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="الكنية" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="UserName" HeaderText="اسم دخول المستخدم" 
                    SortExpression="UserName" />
                <asp:BoundField DataField="Email" HeaderText="البريد الالكتروني" 
                    SortExpression="Email" />
                <asp:BoundField DataField="Address" HeaderText="العنوان" 
                    SortExpression="Address" />
                <asp:BoundField DataField="Gender" HeaderText="الجنس" 
                    SortExpression="Gender" />
                <asp:BoundField DataField="date" HeaderText="تاريخ التسجيل" 
                    SortExpression="date" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
        </strong>
    </div>
    <p>
      <!--   انشاء عنصر الاتصال ليتم الاتصال بقاعدة البيانات وجلب النتائج  المعلومات الشخصية للمستخدم ووضعها في العنصر جريد فيو 3  -->
        
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [FirstName], [Id], [LastName], [UserName], [Email], [Address], [Gender], [date] FROM [Users] WHERE ([UserName] = @UserName)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="UserName" PropertyName="Text" 
                    Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <div class="style17">
        <strong>
         <!--   انشاء عنصر النص لعرض النص المصطلحات المسجلة بواسطة المستخدم  -->
        <asp:Label ID="Label7" runat="server" CssClass="style30" 
            Text="المصطلحات المسجلة بواسطة المستخدم" Visible="False"></asp:Label>
        <br />
         <!--   انشاء عنصر النص لعرض النص لا توجد اي مصطلحات مسجلة بواسطة المستخدم هذا  -->
        <asp:Label ID="Label8" runat="server" CssClass="style24" 
            Text="لا توجد اي مصطلحات مسجلة بواسطة المستخدم هذا" Visible="False"></asp:Label>
        <br />
         <!--   انشاء عنصر الجريد فيو 4 الخاصة باظهار نتائج من قاعدة البيانات  وهي نتائج للمصطلحات المسجلة بواسطة المستخدم-->
        <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
             onselectedindexchanged="GridView2_SelectedIndexChanged1"
                CssClass="style19" 
            DataSourceID="SqlDataSource4" ForeColor="#333333" Width="848px" 
                GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="word" HeaderText="المصطلح" 
                    SortExpression="word" />
                <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                    SortExpression="explanation" />
                <asp:BoundField DataField="by_username" HeaderText="الكاتب" 
                    SortExpression="by_username" />
                <asp:BoundField DataField="type" HeaderText="النوع" 
                    SortExpression="type" />
                <asp:BoundField DataField="date" HeaderText="التاريخ" 
                    SortExpression="date" />
                <asp:BoundField DataField="place" HeaderText="المكان" 
                    SortExpression="place" />
                <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                    SortExpression="likes" />
                <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                    SortExpression="unlikes" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
        </strong>
    </div>
    <p>
     <!--   انشاء عنصر الاتصال ليتم الاتصال بقاعدة البيانات وجلب النتائج  المصطلحات المسجلة بواسطة المستخدم ووضعها في العنصر جريد فيو 4  -->
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [word], [explanation], [by_username], [type], [date], [place], [likes], [unlikes] FROM [words] WHERE ([by_username] = @by_username)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="by_username" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <div class="style17">
        <strong>
         <!--   انشاء عنصر النص لعرض النص المصطلحات المقبولة بواسطة المستخدم  -->
        <asp:Label ID="Label9" runat="server" CssClass="style30" 
            Text="المصطلحات المقبولة بواسطة المستخدم" Visible="False"></asp:Label>
        <br />
         <!--   انشاء عنصر النص لعرض النص لا توجد اي مصطلحات مقبولة بواسطة المستخدم هذا  -->
        <asp:Label ID="Label10" runat="server" CssClass="style24" 
            Text="لا توجد اي مصطلحات مقبولة بواسطة المستخدم هذا" Visible="False"></asp:Label>
        <br />
          <!--   انشاء عنصر الجريد فيو 5 الخاصة باظهار نتائج من قاعدة البيانات  وهي نتائج للمصطلحات المقبولة بواسطة المستخدم-->
        <asp:GridView ID="GridView5" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
             onselectedindexchanged="GridView2_SelectedIndexChanged1"
                CssClass="style19" 
            DataSourceID="SqlDataSource5" ForeColor="#333333" Width="848px" 
                GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="word" HeaderText="المصطلح" 
                    SortExpression="word" />
                <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                    SortExpression="explanation" />
                <asp:BoundField DataField="type" HeaderText="النوع" 
                    SortExpression="type" />
                <asp:BoundField DataField="place" HeaderText="المكان" 
                    SortExpression="place" />
                <asp:BoundField DataField="date" HeaderText="التاريخ" 
                    SortExpression="date" />
                <asp:BoundField DataField="accepted_by" HeaderText="قبلت بواسطة" 
                    SortExpression="accepted_by" />
                <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                    SortExpression="likes" />
                <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                    SortExpression="unlikes" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
        </strong>
    </div>
    <p>
      <!--   انشاء عنصر الاتصال ليتم الاتصال بقاعدة البيانات وجلب النتائج  المصطلحات المقبولة بواسطة المستخدم ووضعها في العنصر جريد فيو 5  -->
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [word], [explanation], [type], [date], [place], [likes], [unlikes], [accepted_by] FROM [words] WHERE ([accepted_by] = @accepted_by)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="accepted_by" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <div class="style17">
        <strong>
         <!--   انشاء عنصر النص لعرض النص المصطلحات المعدلة بواسطة المستخدم  -->
        <asp:Label ID="Label11" runat="server" CssClass="style30" 
            Text="المصطلحات المعدلة بواسطة المستخدم" Visible="False"></asp:Label>
        <br />
         <!--   انشاء عنصر النص لعرض لا توجد اي مصطلحات معدلة بواسطة المستخدم هذا  -->
        <asp:Label ID="Label12" runat="server" CssClass="style24" 
            Text="لا توجد اي مصطلحات معدلة بواسطة المستخدم هذا" Visible="False"></asp:Label>
        <br />
         <!--   انشاء عنصر الجريد فيو 6 الخاصة باظهار نتائج من قاعدة البيانات  وهي نتائج للمصطلحات المعدلة بواسطة المستخدم-->
        <asp:GridView ID="GridView6" runat="server" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
             onselectedindexchanged="GridView2_SelectedIndexChanged1"
                CssClass="style19" 
            DataSourceID="SqlDataSource6" ForeColor="#333333" Width="848px" 
                GridLines="None" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="word" HeaderText="المصطلح" 
                    SortExpression="word" />
                <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                    SortExpression="explanation" />
                <asp:BoundField DataField="type" HeaderText="النوع" 
                    SortExpression="type" />
                <asp:BoundField DataField="place" HeaderText="المكان" 
                    SortExpression="place" />
                <asp:BoundField DataField="date" HeaderText="التاريخ" 
                    SortExpression="date" />
                <asp:BoundField DataField="lastupdate_by" HeaderText="اخر تحديث بواسطة" 
                    SortExpression="lastupdate_by" />
                <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                    SortExpression="likes" />
                <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                    SortExpression="unlikes" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="Gray" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />

<SortedAscendingCellStyle BackColor="#F8FAFA"></SortedAscendingCellStyle>

<SortedAscendingHeaderStyle BackColor="#246B61"></SortedAscendingHeaderStyle>

<SortedDescendingCellStyle BackColor="#D4DFE1"></SortedDescendingCellStyle>

<SortedDescendingHeaderStyle BackColor="#15524A"></SortedDescendingHeaderStyle>
        </asp:GridView>
        <br />
        </strong>
         <!--   انشاء عنصر الاتصال ليتم الاتصال بقاعدة البيانات وجلب النتائج  المصطلحات المعدلة بواسطة المستخدم ووضعها في العنصر جريد فيو 6  -->
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [word], [explanation], [type], [date], [place], [likes], [unlikes], [lastupdate_by] FROM [words] WHERE ([lastupdate_by] = @lastupdate_by)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="lastupdate_by" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
     <!--  انشاء عناصر النص للقوم كود خلفي بدخال قيم المفتايح الاساسية للجريد فيو داخلهما وهي تساعد في عمليه الاستعدلام والتعديل في قاعدة البينات  -->
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
    </p>

     <div>
    
    </div>
</asp:Content>

