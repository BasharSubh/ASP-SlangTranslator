<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Master.User.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">

<!--البدأ باستخدام كود ستايل للعناصر الوردة ادناه-->
    <style type="text/css">
        .style6
        {
            width: 80%;
            height: 17px;
            margin-left: 92px;
        }
        .style10
        {
            width: 26%;
        }
        .style11
        {
            color: #000000;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        .style12
        {
            width: 343px;
        }
        .style13
        {
            width: 14px;
        }
      
}
        .style16
        {
            text-align: center;
            color: #4e5766;
            line-height: normal;
            font-family: "Times New Roman", Times, serif;
            font-size: medium;
            margin: 0px auto;
            padding-left: 0px;
            padding-right: 0px;
            padding-top: 8px;
            padding-bottom: 0px;
        }
                
        
       
        .style19
        {
            width: 97%;
            margin-left: 27px;
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
                
        
       
        </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <div class="style16">
    <table class="style19">
        <tr>
            <td class="style17">
    
        <asp:Label ID="lblUName" runat="server" Text=""></asp:Label>
    
                </td>
            <td class="style18">
                <strong>مرحبا</strong></td>
        </tr>
    </table>
             <table class="style6">
                <tr>
                    <td>
                    <!--اضافة عنصر راديو لاختيار بين عملية البحث حسب كلمة عامية-->
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="1" Text="اختصار" />
                    </td>
                    <td>
                       <!--اضافة عنصر راديو لاختيار بين عملية البحث حسب اختصار-->
                        <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="1" 
                            Text="معنى" />
                      
                    </td>
                    <td class="style12">
                     <!--اضافة عنصر نص لعرض النص ادخل كلمة للبحث-->
        <asp:TextBox ID="TextBox1" runat="server" Height="23px" Width="289px" ToolTip="ادخل كلمة للبحث هنا"></asp:TextBox>
                    </td>
                </tr>
            </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
           
             <table class="style1" >
                 <tr>
                     <td align=center>
                     
                         <asp:Button ID="Button1" runat="server" Text="ابحث" OnClick="Button1_Click" 
                BackColor="#669999" Width="70px" BorderColor="#00CC66" />
                     </td>
                 </tr>
                 <tr>
                     <td align=center>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td align=center>
                         <asp:Label ID="lblStatus" runat="server" >مثال : معنى _ كيفك , اختصار _ برب </asp:Label>
                     </td>
                 </tr>
                 <tr>
                     <td align=center>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/visiter/add.aspx" 
                 Visible="False">اضغط هنا</asp:HyperLink>
                         <br />
                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" Target="_blank" 
                             Visible="False">اضغط هنا للذهاب الى الترجمة المطلوبة </asp:HyperLink>
                     </td>
                 </tr>
             </table>
            
                 <!--اضافة عنصر نص لعرض امثلة عن عمليات البحث-->
        <asp:GridView ID="GridView1" runat="server" Width="916px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                    HorizontalAlign="Center" CellPadding="4" ForeColor="#333333" 
                     GridLines="None" style="text-align: center" 
                   >

            <AlternatingRowStyle BackColor="White" />
            <Columns>

             <asp:TemplateField ShowHeader="False">
                    <HeaderTemplate>
                        <asp:Button ID="Button11" runat="server" onclick="Button11_Click1" 
                            Text="اعجبني" />
                        <asp:Button ID="Button12" runat="server" onclick="Button12_Click1" 
                            Text="لم يعجبني" />
                        <asp:Button ID="Button13" runat="server" onclick="Button13_Click1" 
                            style="text-align: center" Text="ترجمة الى الانكليزية" />
                    </HeaderTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                            CommandName="select" Text="اختيار"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

               



            </Columns>
          
            <EditRowStyle BackColor="#2461BF" />
           <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#EFF3FB" />
           <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#F5F7FB" />
           <SortedAscendingHeaderStyle BackColor="#6D95E1" />
           <SortedDescendingCellStyle BackColor="#E9EBEF" />
           <SortedDescendingHeaderStyle BackColor="#4870BE" />

        </asp:GridView>
           
        &nbsp;<div >
            <!--اضافة عنصر جريد فيو ليعرض النتائج من قاعدة البيانات استنادا على احراءية موجود ضمن قاعدة البينات-->
           
    </div>


            <br />
             <table align="center" class="style10" id="likestable"  >
                <tr>
                    <td class="style11" colspan="3">
                    <!--اضافة عنصر نص لعرض النص تصويت للكلمة-->
            <asp:Label ID="Label3" runat="server" Visible="False"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                    <!--اضافة عنصر زر ليتم عند الضغط عليه زيادة عدد الاعجابات-->
                         <strong>
                         <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="0" Visible="False"></asp:Label>
                         </strong>
                    </td>
                    <td> <!--اضافة عنصر نص ليتم عرض الاعجابات الموجود للكلمة المختارة -->
                    </td>
                    <td class="style13">
                     <!--اضافة عنصر نص ليتم عرض  عدم الاعجابات الموجود للكلمة المختارة -->
                    </td>
                </tr>
            </table>
          
            <br />
            <br />
            <br />
            <br />


    <br />
            <br />
            <br />

</asp:Content>
