<%@ Page Title="" Language="C#" MasterPageFile="~/Master.admin.master" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
                
        
       
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
            width: 60%;
            margin-left: 195px;
        }
        
        
       
        .style17
        {
            text-align: center;
        }
        
        
       
        .style18
        {
            text-align: right;
            width: 436px;
        }
        .style19
        {
            text-align: left;
            width: 219px;
        }
        .style20
        {
            margin-left: 26px;
        }
        
        
       
        .style21
        {
            margin-left: 1px;
        }
        .style22
        {
            width: 13%;
            margin-left: 412px;
        }
        
        
       
        .style23
        {
            font-family: "Times New Roman", Times, serif;
        }
        
        
       
        .style24
        {
            margin-left: 27px;
            text-align: center;
        }
        
        
       
        .style25
        {
            width: 56%;
            margin-left: 243px;
        }
        .style27
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            color: #000000;
        }
        
        
       
        .style28
        {
            width: 365px;
            text-align: right;
        }
        .style29
        {
            width: 235px;
            text-align: right;
        }
        
        
       
        .style30
        {
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
        }
        
        
       
        .style4
        {
            width: 47%;
            height: 182px;
            margin-left: 280px;
        }
        .style10
        {
            color: #FF0000;
        }
        
        
       
        .style7
        {
            text-align: left;
            font-family: "Times New Roman", Times, serif;
            color: #000000;
            font-size: medium;
            width: 210px;
        }
        .style6
        {
            margin-left: 0px;
            margin-right: 0px;
        }
        .style33
        {
            text-align: center;
            width: 268px;
        }
        
        
       
        .style34
        {
            margin-left: 0px;
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
    <table class="style16">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td class="style17">
              <!--   انشاء عنصر القائمة التي تحوي على خيارات ادارة الكلمات اضافة او قبول او حذف وتعديل -->
                <asp:DropDownList ID="DropDownList1" runat="server" Width="276px" OnSelectedIndexChanged="myListDropDown_Change"
                    AutoPostBack="True" CssClass="style34" Height="22px">
                    <asp:ListItem Selected="True" Value="0">.. الرجاء الاختيار</asp:ListItem>
                    <asp:ListItem Value="3">اضافة مصطلحات</asp:ListItem>
                    <asp:ListItem Value="1">قبول مصطلحات</asp:ListItem>
                    <asp:ListItem Value="2">تعديل  و حذف مصطلحات</asp:ListItem>
                    <asp:ListItem Value="4">معلومات كاملة حول المصطلحات</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    <p class="style17">
        <strong>
          <!--  انشاء عنصر النص ل عرض رسائل الخطا الواردة وهو مبروح بالكود الخلفي -->
        <asp:Label ID="Label5" runat="server" CssClass="style30" ForeColor="Red"></asp:Label>
        </strong></p>
    <table class="style25">
        <tr>
            <td>
              <!--   انشاء عنصر الزر للبحث عن المصطلح  -->
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="بحث" 
                    Width="92px" Visible="False" />
            </td>
            <td class="style29">
              <!--   انشاء عنصر النص ليتيح للمستخدم كتابة المصطلح للحبث عنه  -->
                <asp:TextBox ID="TextBox1" runat="server" Width="188px" Visible="False"></asp:TextBox>
            </td>
            <td class="style28">
                <strong>
                <asp:Label ID="Label4" runat="server" CssClass="style27" 
                    Text="ادخل اسم المصطلح" Visible="False"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
        <table class="style22">
            <tr>
                <td class="style17" colspan="2">
                    <strong>
                    <!--   انشاء عنصر النص لعرض النص تاكيد الحذف  -->
        <asp:Label ID="Label2" runat="server" Text="تاكيد الحذف" BackColor="White" 
                        ForeColor="Black" CssClass="style23" ></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="style18">
                  <!--   انشاء عنصر الزر حيث يلغي عمليه الحذف  -->
                    <asp:Button ID="Button3" runat="server" BackColor="#006666" BorderColor="Black" 
                        BorderStyle="Solid" ForeColor="White" Height="31px" onclick="Button3_Click1" 
                        Text="لا" Width="55px" />
                </td>
                <td class="style19">
                <!--   انشاء عنصر الزر حيث يقوم بتأكيد عمليه الحذف  -->
                    <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="Black" 
                        BorderStyle="Solid" Text="نعم" Width="55px" 
                        Font-Bold="False" ForeColor="White" onclick="Button2_Click" 
                        CssClass="style21" Font-Size="Small" Height="31px" />
                </td>
            </tr>
        </table>
    <div class="style17">
    <!--   انشاء عنصر جريد فيو GV لعرض نتائج من قاعدة البيانات وهي المصطلحات التي بحاجة الى قبول-->
        <asp:GridView ID="GV" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataKeyNames="word_id" DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged1"
            ForeColor="#333333" GridLines="None" AllowSorting="True" AllowPaging="True" 
                CssClass="style20" Width="872px" Visible="False">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
            
                <asp:CommandField SelectText="حذف" ShowSelectButton="True" />
                <asp:BoundField DataField="word_id" HeaderText="رقم معرف المصطلح" InsertVisible="False" 
                    ReadOnly="True" SortExpression="word_id" />
                <asp:BoundField DataField="word" HeaderText="المصطلح" SortExpression="word" />
                <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                    SortExpression="explanation" />
                <asp:BoundField DataField="type" HeaderText="النوع" 
                    SortExpression="type" />
                <asp:BoundField DataField="date" HeaderText="تاريخ الاضافة" 
                    SortExpression="date" />
                <asp:BoundField DataField="place" HeaderText="المكان" SortExpression="place" />
                <asp:BoundField DataField="accept" HeaderText="حالة المصطلح" 
                    SortExpression="accept" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="Delete" Text="قبول"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <!--   انشاء عنصر االاتصال بقاعدة البينات حيث يتم البحث عن المصطلحات التي بحاجة الى قبول  -->
        <!--   تم تغغير في البنية حيث زر الحذف اصبح تعديل على قاعدة البيانات لقبول المصطلح -->
        <!--   الزر اختيار يقوم بالحذف حسب كود خلفي موجود في لصفحة  -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="update [words] set [accept] = 'yes', [accepted_by] =@username  WHERE [word_id] = @word_id" 
            InsertCommand="INSERT INTO [words] ([word], [explanation], [type], [date], [place], [accept]) VALUES (@word, @explanation, @type, @date, @place, @accept)" 
            SelectCommand="SELECT [word_id], [word], [explanation], [type], [date], [place], [accept] FROM [words] WHERE ([accept] = @accept)" 
            
            UpdateCommand="UPDATE [words] SET [word] = @word, [explanation] = @explanation, [type] = @type, [date] = @date, [place] = @place, [accept] = @accept WHERE [word_id] = @word_id">
            <DeleteParameters>
                <asp:Parameter Name="word_id" Type="Int32" />
                <asp:Parameter Name="username"  />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="word" Type="String" />
                <asp:Parameter Name="explanation" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="accept" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="waiting" Name="accept" Type="String" />
                
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="word" Type="String" />
                <asp:Parameter Name="explanation" Type="String" />
                <asp:Parameter Name="type" Type="String" />
                <asp:Parameter Name="date" Type="DateTime" />
                <asp:Parameter Name="place" Type="String" />
                <asp:Parameter Name="accept" Type="String" />
                <asp:Parameter Name="word_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    &nbsp;<div class="style17">
    <!--   انشاء عنصر جريد فيو 1 لعرض نتائج من قاعدة البيانات وهي المصطلحات التي تم البحث عنها من خلال الممستخدم استنادا الى القيمة المدخلة في عنصر النص textbox1-->
    <!--  هذه الجريد فيو خاصة بالتعديل على المصطلحات-->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    onselectedindexchanged="GridView2_SelectedIndexChanged1"
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" CssClass="style24" DataKeyNames="word_id" 
        DataSourceID="SqlDataSource2" GridLines="Horizontal" Width="871px" 
            Visible="False" AllowPaging="True">
        <Columns>
            <asp:CommandField ShowEditButton="True" CancelText="الغاء" EditText="تعديل" 
                UpdateText="تعديل" />
            <asp:BoundField DataField="word_id" HeaderText="رقم معرف المصطلح" InsertVisible="False" 
                ReadOnly="True" SortExpression="word_id" />
            <asp:BoundField DataField="word" HeaderText="المصطلح" SortExpression="word" />
            <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                SortExpression="explanation" />
            <asp:TemplateField HeaderText="النوع" SortExpression="type">
                <EditItemTemplate>
                 <!--  اضافة العنصر قائمة حيث ترتبط بعنصر اتتصال يجلب بينات من قاعدة البانات في الجدول نوع الكلمة-->
                    <!--  هذا العنصر يكون داخل الجريد فيو-->
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="word_type" 
                        DataValueField="word_type" SelectedValue='<%# Bind("type") %>'>
                    </asp:DropDownList>
                     <!--  اعنصر الاتصال بقاعدة البيانات لجلب القيم من الجدول نوع الكلمة-->
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [word_type] FROM [types]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("type") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="المكان" SortExpression="place">
                <EditItemTemplate>
                 <!--  اضافة العنصر قائمة حيث ترتبط بعنصر اتصال يجلب بيانات من قاعدة البيانات في الجدول مكان الكلمة-->
                  <!--  هذا العنصر يكون داخل الجريد فيو-->
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="place_name" 
                        DataValueField="place_name" SelectedValue='<%# Bind("place") %>'>
                    </asp:DropDownList>
                       <!--  عنصر الاتصال بقاعدة البيانات لجلب القيم من الجدول مكان الكلمة-->
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [place_name] FROM [places]"></asp:SqlDataSource>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("place") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="accept" HeaderText="حالة المصطلح" ReadOnly="True" 
                SortExpression="accept" />
            <asp:CommandField SelectText="حذف" ShowSelectButton="True" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    </div>
      <!--  عنصر الاتصال بقاعدة البيانات الخاص بالجريد فيو 1 التي يتم اظهار العناصر التي تم البحث عنها-->
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConflictDetection="CompareAllValues" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [words] WHERE [word_id] = @original_word_id AND [word] = @original_word AND [explanation] = @original_explanation AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL))" 
        InsertCommand="INSERT INTO [words] ([word], [explanation], [type], [place]) VALUES (@word, @explanation, @type, @place)" 
        OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT [word_id], [word], [explanation], [type], [accept], [place] FROM [words] WHERE ([word] LIKE '%' + @word + '%') " 
        
        UpdateCommand="UPDATE [words] SET [word] = @word, [lastupdate_by] =@username, [explanation] = @explanation, [type] = @type, [place] = @place WHERE [word_id] = @original_word_id AND [word] = @original_word AND [explanation] = @original_explanation AND (([type] = @original_type) OR ([type] IS NULL AND @original_type IS NULL)) AND (([place] = @original_place) OR ([place] IS NULL AND @original_place IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_word_id" Type="Int32" />
            <asp:Parameter Name="original_word" Type="String" />
            <asp:Parameter Name="original_explanation" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
            <asp:Parameter Name="original_place" Type="String" />
        </DeleteParameters>
         <SelectParameters>
                  <asp:ControlParameter ControlID="TextBox1" Name="word" PropertyName="Text" />
                
            </SelectParameters>

        <InsertParameters>
            <asp:Parameter Name="word" Type="String" />
            <asp:Parameter Name="explanation" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="place" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="word" Type="String" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="explanation" Type="String" />
            <asp:Parameter Name="type" Type="String" />
            <asp:Parameter Name="place" Type="String" />
            <asp:Parameter Name="original_word_id" Type="Int32" />
            <asp:Parameter Name="original_word" Type="String" />
            <asp:Parameter Name="original_explanation" Type="String" />
            <asp:Parameter Name="original_type" Type="String" />
            <asp:Parameter Name="original_place" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
    onselectedindexchanged="GridView2_SelectedIndexChanged1"
        BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" 
        CellPadding="4" CssClass="style24" DataKeyNames="word_id" 
        DataSourceID="SqlDataSource8" GridLines="Horizontal" Width="871px" 
            Visible="False" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="word_id" HeaderText="رقم المصطلح" InsertVisible="False" 
                ReadOnly="True" SortExpression="word_id" />
            <asp:BoundField DataField="word" HeaderText="المصطلح" SortExpression="word" />
            <asp:BoundField DataField="explanation" HeaderText="الشرح" 
                SortExpression="explanation" />
            <asp:BoundField DataField="type" HeaderText="النوع" SortExpression="type" />
            <asp:BoundField DataField="date" HeaderText="تاريخ الاضافة" 
                SortExpression="date" />
            <asp:BoundField DataField="place" HeaderText="المكان" SortExpression="place" />
            <asp:BoundField DataField="likes" HeaderText="الاعجابات" 
                SortExpression="likes" />
            <asp:BoundField DataField="unlikes" HeaderText="عدم الاعجابات" 
                SortExpression="unlikes" />
            <asp:BoundField DataField="accept" HeaderText="حالة المصطلح" 
                SortExpression="accept" />
            <asp:BoundField DataField="by_username" HeaderText="سجلت بواسطة" 
                SortExpression="by_username" />
            <asp:BoundField DataField="lastupdate_by" HeaderText="اخر تحديث بواسطة" 
                SortExpression="lastupdate_by" />
            <asp:BoundField DataField="accepted_by" HeaderText="قُبلت بواسطة" 
                SortExpression="accepted_by" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [words] WHERE ([word] LIKE '%' + @word + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="word" PropertyName="Text" 
                Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    &nbsp;<table class="style4">
            <tr>
                <td class="style33">
                  <!--  اضافة عنصر النص الخاص بالتسجيل في قاعدة البيانات وهو اسم المصطلح-->
                    <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="271px" 
                        Visible="False" MaxLength="25"></asp:TextBox>
                </td>
                <td class="style7">
                    <strong>
                     <!--  اضافة عنصر النص لاظهار النص المصطلح العامي-->
                    <asp:Label ID="Label11" runat="server" Text="المصطلح العامي" Visible="False"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="style33">
                  <!--  اضافة عنصر النص الخاص بالتسجيل في قاعدة البيانات وهو شرح المصطلح-->
                    <asp:TextBox ID="TextBox2" runat="server" Height="23px" Width="271px" 
                        Visible="False" MaxLength="50"></asp:TextBox>
                </td>
                <td class="style7">
                    <strong>
                    <!--  اضافة عنصر النص لاظهار النص شرح المصطلح بالفصحة-->
                    <asp:Label ID="Label8" runat="server" Text="شرح المصطلح بالفصحه" 
                        Visible="False"></asp:Label>
&nbsp;</strong></td>
            </tr>
            <tr>
                <td class="style33">
                <!--اضافة عنصر قائمة وهو مرتبط مع قاعدة البيانات تابع للكيان نوع الكلمة -->
                    <asp:DropDownList ID="DropDownList4" runat="server" CssClass="style6" 
                        Height="21px" Width="150px" DataSourceID="SqlDataSource4" 
                        DataTextField="word_type" DataValueField="word_type" Visible="False" >
                        <asp:ListItem Value="1">معنى </asp:ListItem>
                        <asp:ListItem Value="2">اختصار</asp:ListItem>
                    </asp:DropDownList>
                     <!--اضافة عنصرالاتصال بقاعدة الينات لربط العنصر قائمة مع الحقول في الجدول نوع الكلمة-->
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [word_type] FROM [types]"></asp:SqlDataSource>
                </td>
                <td class="style7">
                    <strong>
                    <asp:Label ID="Label9" runat="server" Text="نوع المصطلح" Visible="False"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="style33">
                 <!--اضافة عنصر قائمة وهو مرتبط مع قاعدة البيانات تابع للكيان مكان المصطلح -->
                    <asp:DropDownList ID="DropDownList5" runat="server" CssClass="style6" 
                        Height="21px" Width="150px" DataSourceID="SqlDataSource5" 
                        DataTextField="place_name" DataValueField="place_name" Visible="False">
                        <asp:ListItem Value="1" Selected="True">سوريا</asp:ListItem>
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
                       <!--اضافة عنصرالاتصال بقاعدة الينات لربط العنصر قائمة مع الحقول في الجدول المكان-->
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [place_name] FROM [places]"></asp:SqlDataSource>
                </td>
                <td class="style7">
                    <strong>
                       <!--اضافة عنصر النص مكان المصطلح ليدل المدير على مكان كتابة المصطلح-->
                    <asp:Label ID="Label10" runat="server" Text="مكان المصطلح" Visible="False"></asp:Label>
                    </strong></td>
            </tr>
            <tr>
                <td class="style33">
                 <!--اضافة عنصر النص ليكون خاص باظهار الشعارات تم التسجيل بنجاح او خطأ-->
                    <asp:Label ID="Label6" runat="server" CssClass="style10" Visible="False"></asp:Label>
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style33">
                 <!--اضافة عنصر الزر ليقوم عند الضغط عليه بتسجيل كلمة جديدة في قاعدة البيانات-->
                    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="اضافة" 
                        Width="86px" Visible="False" />
                </td>
                <td class="style7">
                    &nbsp;</td>
            </tr>
        </table>
        

    <p>
        &nbsp;</p>
    <p>
     <!--اضافة عنصر النص حيث يسجل فيه القيم المختارة من الجريد فيو ليتم التعديل والحذف على السجل وهو محقق من خلال الكود الخلفي-->
        <asp:Label ID="Label1" runat="server" Text="" BackColor="White" 
            ForeColor="Black" ></asp:Label>
                </p>
    <p>
        &nbsp;</p>
</asp:Content>

