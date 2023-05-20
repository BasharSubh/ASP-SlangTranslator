<%@ Page Title="" Language="C#" MasterPageFile="~/Master.proUser.master" AutoEventWireup="true" CodeFile="manage.aspx.cs" Inherits="contact" %>

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
        }
        
        
       
        .style25
        {
            width: 51%;
            margin-left: 263px;
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
            text-align: left;
        }
        
        
       
        .style30
        {
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
    <!--    انشاء عنصر النص لعرض اسم المستخدم المسجل دخول -->
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
             <!--   انشاء عنصر الزر ليقوم المستخدم باضغط عليه حين اختيار نوعية الادارة  -->
                <asp:Button ID="Button1" runat="server" Text="موافق" Width="89px" 
                    onclick="Button1_Click" />
            </td>
            <td class="style17">
             <!--    انشاء عنصر القائمة ليختار المستخدم منها نوعية الادارة اما قبول او تعديل مصطلحات -->
                <asp:DropDownList ID="DropDownList1" runat="server" Width="240px">
                    <asp:ListItem Value="1">قبول مصطلحات</asp:ListItem>
                    <asp:ListItem Value="2">تعديل مصطلحات</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                اختر نوع الادارة</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    <p class="style17">
        <strong>
         <!--    انشاء عنصر النص لعرض رسالة في حين لا يوجد اي مصطلحات جديدة بحاجة الى قبول -->
        <asp:Label ID="Label5" runat="server" CssClass="style30" ForeColor="Red" 
            Text="... لا توجد اي مصطلحات بحاجة الى قبول " Visible="False"></asp:Label>
        </strong></p>
    <table class="style25">
        <tr>
            <td>
             <!--    انشاء عنصر الزر للضغط عليه حين كتابة اسم مصطلح للبحث عنه للتعديل عليه -->
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="بحث" 
                    Width="92px" Visible="False" />
            </td>
            <td class="style29">
             <!--    انشاء عنصر النص ليقوم المستخدم بكتابة المصطلح الذي يريد البحث عنه لكي يقوم بتعديله -->
                <asp:TextBox ID="TextBox1" runat="server" Width="215px" Visible="False"></asp:TextBox>
            </td>
            <td class="style28">
                <strong>
                 <!--    انشاء عنصر النص لعرض النص ادخل اسم المصطلح للتعديل ليدل المستخدم على مكان كتابة اسم المصطلح -->
                <asp:Label ID="Label4" runat="server" CssClass="style27" 
                    Text="ادخل اسم المصطلح للتعديل" Visible="False"></asp:Label>
                </strong>
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
        <table class="style22">
            <tr>
                <td class="style17" colspan="2">
                    <strong>
                     <!--    انشاء عنصر النص ليدل المستخدم على هل تريد الحذف ام لا  -->
        <asp:Label ID="Label2" runat="server" Text="تاكيد الحذف" BackColor="White" 
                        ForeColor="Black" CssClass="style23" ></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="style18">
                  <!--    انشاء عنصر زر لتأكيد عدم قبول المصطلح الجديد من طرف المستخدم وهذا يعني انه يحذف -->
                    <asp:Button ID="Button3" runat="server" BackColor="#006666" BorderColor="Black" 
                        BorderStyle="Solid" ForeColor="White" Height="31px" onclick="Button3_Click1" 
                        Text="لا" Width="55px" />
                </td>
                <td class="style19">
                 <!--    انشاء عنصر زر لتأكيد قبول المصطلح الجديد من طرف المستخدم وهذا يعني انه يتاح للبحث عنه من طرف المستخدمين والزوار -->
                    <asp:Button ID="Button2" runat="server" BackColor="Red" BorderColor="Black" 
                        BorderStyle="Solid" Text="نعم" Width="55px" 
                        Font-Bold="False" ForeColor="White" onclick="Button2_Click" 
                        CssClass="style21" Font-Size="Small" Height="31px" />
                </td>
            </tr>
        </table>
    <div class="style17">
     <!--    انشاء عنصر الجريد فيو 1 لعرض نتائج من قاعدة البيانات وهي نتائج الممصطلحات التي بحاجة الى قبول -->
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
         <!--    انشاء عنصر الاتصال بقاعدة البيانات حيث يقوم بالبحث عن المصطلحات التي بحاجة الى قبول وهو مرتبط مع العنصر جريد فيو 1 -->
          <!--  هنا يوجد تعديل على بنية الازرار حيث زر حذف تم تعديله ليقوم بقبول الكلمات وزر اختيار يعمل على الحذف والقبول  -->
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
      <!--    انشاء عنصر الجريد فيو 2 لعرض نتائج من قاعدة البيانات ولعرض نتائج البحث من قاعدة البييانات للتعديل عليها -->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
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
                 <!--    انشاء عنصر لعرض قائمة منسدلة ضمن الجريد فيو 2 تعرض القيم ضمن جدول نوع الكلمة ليسهل على المستخدم التعديل وضمان عدم حصول اخطاء اثناء التعديل -->
                    <asp:DropDownList ID="DropDownList2" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="word_type" 
                        DataValueField="word_type" SelectedValue='<%# Bind("type") %>'>
                    </asp:DropDownList>
                     <!--    انشاء عنصر الاتصال المسؤول عن عرض النتائج نوع الكلمة من قاعدة البيانات وربط النتائج بالعنصر القائمة -->
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
                       <!--    انشاء عنصر لعرض قائمة منسدلة ضمن الجريد فيو 2 تعرض القيم ضمن جدول مكان الكلمة ليسهل على المستخدم التعديل وضمان عدم حصول اخطاء اثناء التعديل -->
                    <asp:DropDownList ID="DropDownList3" runat="server" 
                        DataSourceID="SqlDataSource3" DataTextField="place_name" 
                        DataValueField="place_name" SelectedValue='<%# Bind("place") %>'>
                    </asp:DropDownList>
                     <!--    انشاء عنصر الاتصال المسؤول عن عرض النتائج مكان الكلمة من قاعدة البيانات وربط النتائج بالعنصر القائمة -->
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
     <!--    انشاء عنصر الاتصال بقاعدة البيانات المسؤول عن عرض النتائج في الجدول الكلمة ليتم التعديل عليها وهو مرتبط مع العنصر جريد فيو 2 -->
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
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
     <!--    انشاء عنصر النص  ليقوم ببتسجيل نتائج من الجريد فيو استادا على الكود الخلفي المموجود -->
      <!--    وهو يفيد في عمليه التعديل وقبول الكلمات حيث يتم التعديل والقبول استنادا على القيمة الموجودة داخل النعصر هذا -->
        <asp:Label ID="Label1" runat="server" Text="" BackColor="White" 
            ForeColor="Black" ></asp:Label>
                </p>
    <p>
        &nbsp;</p>
</asp:Content>

