<%@ Page Title="" Language="C#" MasterPageFile="~/Master.admin.master" AutoEventWireup="true" CodeFile="Statistics.aspx.cs" Inherits="contact" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
                
        
       
        .style14
        {
            text-align: center;
        }
        
        
       
        .style15
        {
            text-align: right;
            width: 874px;
        }
        .style16
        {
            color: #FF00FF;
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
        }
        
        
       
        .style18
        {
            color: #000000;
        }
        .style30
        {
            font-family: "Times New Roman", Times, serif;
        }
        .style31
        {
            font-size: medium;
        }
        .style36
        {
            color: #000000;
            font-size: medium;
        }
        .style38
        {
            text-align: center;
            height: 33px;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #FFFFFF;
            background-color: #999966;
        }
        .style46
        {
            width: 100%;
            height: 33px;
        }
        .style47
        {
            width: 2630px;
            height: 241px;
            text-align: center;
        }
        .style48
        {
            width: 2615px;
            height: 241px;
            text-align: center;
        }
        .style49
        {
            width: 2635px;
            height: 241px;
            text-align: center;
        }
        .style50
        {
            width: 100%;
            height: 132px;
        }
        .style51
        {
            width: 3236px;
            height: 241px;
            text-align: center;
        }
        .style52
        {
            font-size: medium;
            font-family: "Times New Roman", Times, serif;
            color: #000000;
        }
        .style53
        {
            width: 100%;
            height: 33px;
            background-color: #996633;
        }
                
        
       
        .style56
        {
            width: 100%;
            height: 220px;
        }
        .style57
        {
            width: 13625px;
            height: 241px;
            text-align: center;
        }
                
        
       
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <table class="style1">
            <tr>
                <td class="style15">
      <!--   انشاء عنصر النص ل  اسم المستخدم ليتم تسجيل اسم دخول المستخدم داخله -->
        <asp:Label ID="lblUName" runat="server"></asp:Label>
    
                </td>
                <td class="style14">
    
                    <span class="style16"><strong>مرحبا</strong></span>
    
                </td>
            </tr>
        </table>
    </p>
    <p>
    <table class="style46">
        <tr>
            <td class="style38">
                <strong>احصاءات حول المصطلحات</strong></td>
        </tr>
    </table>
    <table class="style50">
        <tr>
            <td class="style51">
              <!--   انشاء عنصر الرسم البياني 13 المسؤول عن اظهار عدد الكلمات مقارنة مع عدد الاختيارات -->
                <asp:Chart ID="Chart13" runat="server" DataSourceID="SqlDataSource3" 
                    Height="100px" Width="100px">
                    <series>
                        <asp:Series ChartArea="ChartArea1" ChartType="Pie" Name="Series1" 
                            XValueMember="type" YValueMembers="count">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                 <!--   انشاء عنصر الرسم البياني 12 المسؤول عن اظهار عدد المصطلحات نوع كلمة عامية -->
                <asp:Chart ID="Chart12" runat="server" DataSourceID="SqlDataSource3" 
                    Height="150px" Width="150px">
                    <series>
                        <asp:Series Name="Series1" XValueMember="type" YValueMembers="count">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <br />
                <strong><span class="style52">عدد الكلمات مقارنة مع عدد الاختصارات</span></strong></td>
            <td class="style47">
                <strong><span class="style30"><span class="style31"><span class="style18">
                 <!--   انشاء عنصر الرسم البياني 9 المسؤول عن اظهار عدد الكلمات مقارنة مع عدد الاختصارات -->
                <asp:Chart ID="Chart9" runat="server" DataSourceID="SqlDataSource6" 
                    Height="150px" Palette="Berry" Width="100px">
                    <series>
                        <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="Column1" 
                            YValueMembers="Column1" YValuesPerPoint="2">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <br />
                المصطلحات التي سجلها الزوار</span></span></span></strong></td>
            <td class="style48">
                <strong><span class="style30"><span class="style31"><span class="style18">
                <div class="style14">
                 <!--   انشاء عنصر الرسم البياني 10 المسؤول عن اظهار عدد المصطلحات التي سجلها الزوار -->
                    <asp:Chart ID="Chart10" runat="server" CssClass="style51" 
                        DataSourceID="SqlDataSource5" Height="150px" Palette="Chocolate" Width="100px">
                        <series>
                            <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="Column1" 
                                YValueMembers="Column1" YValuesPerPoint="2">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </div>
                </span></span><span class="style36">المصطلحات بالانتظار القبول</span></span></strong></td>
            <td class="style49">
                <strong><span class="style30"><span class="style31"><span class="style18">
                 <!--   انشاء عنصر الرسم البياني 11 المسؤول عن اظهار عدد المصطلحات التي في انتظهار  القبول -->
                <asp:Chart ID="Chart11" runat="server" CssClass="style50" 
                    DataSourceID="SqlDataSource4" Height="150px" Palette="Fire" Width="100px">
                    <series>
                        <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="Column1" 
                            YValueMembers="Column1" YValuesPerPoint="4">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <br />
                عدد المصطلحات الاجمالي</span></span></span></strong></td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style14">
                <strong><span class="style30"><span class="style31"><span class="style18">
                 <!--   انشاء عنصر الرسم البياني 14 المسؤول عن اظهار عدد المصطلحات الكلي -->
        <asp:Chart ID="Chart14" runat="server" DataSourceID="SqlDataSource1" 
       
                    ClientIDMode="AutoID" EnableTheming="True" ViewStateContent="All" 
                    Palette="Bright" Width="400px">
            <series>
                <asp:Series ChartType="Bar" Name="Series1" XValueMember="word" 
                    YValueMembers="likes" YValuesPerPoint="10" IsValueShownAsLabel="True" 
                    IsXValueIndexed="True" MarkerSize="1000">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
                <br />
                المصطلحات التي سجلت اكبر عدد من الاعجابات</span></span></span></strong></td>
            <td class="style14">
                <strong><span class="style30"><span class="style31"><span class="style18">
                 <!--   انشاء عنصر الرسم البياني 15 المسؤول عن اظهار  المصطلحات التي سجلت اكبر عدد من الاعجابات -->
        <asp:Chart ID="Chart15" runat="server" DataSourceID="SqlDataSource2" 
       
                    ClientIDMode="AutoID" EnableTheming="True" ViewStateContent="All" 
                    Palette="Grayscale" Width="400px">
            <series>
                <asp:Series ChartType="Bar" Name="Series1" XValueMember="word" 
                    YValueMembers="unlikes" YValuesPerPoint="10" IsValueShownAsLabel="True" 
                    IsXValueIndexed="True">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
                <br />
                المصطلحات التي سجلت اكبر عدد من عدم الاعجابات</span></span></span></strong></td>
        </tr>
        </table>
    <table class="style53">
        <tr>
            <td class="style38">
                <strong>احصاءات حول نشاط المستخدمين</strong></td>
        </tr>
    </table>
    <table class="style56">
        <tr>
            <td class="style57">
                <br />
                  <!--   انشاء عنصر الرسم البياني 16 المسؤول عن اظهار  المصطلحات التي سجلت اكبر عدد من  عدم الاعجابات -->
                <asp:Chart ID="Chart16" runat="server" DataSourceID="SqlDataSource10" 
                    Height="147px" Width="138px">
                    <series>
                        <asp:Series ChartArea="ChartArea1" ChartType="Pie" Name="Series1" 
                            XValueMember="permission" YValueMembers="count">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                  <!--   انشاء عنصر الرسم البياني 17 المسؤول عن اظهار  عدد المستخدمين العاديين مقارنة مع عدد المستخدمين المميزين والمدراء  -->
                <asp:Chart ID="Chart17" runat="server" DataSourceID="SqlDataSource10" 
                    Height="150px" Width="150px">
                    <series>
                        <asp:Series Name="Series1" XValueMember="permission" YValueMembers="count">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <br />
                <strong><span class="style52">عددالمستخدمين العاديين مقارنة مع عدد المستخدمين 
                المميزين و المدراء</span></strong></td>
            <td class="style47">
                <strong><span class="style30"><span class="style31"><span class="style18">
                  <!--   انشاء عنصر الرسم البياني 21 المسؤول عن اظهار  عدد المستخدمين العاديين مقارنة مع عدد المستخدمين المميزين والمدراء ولكن بطريقة عرض اخرى -->
                <asp:Chart ID="Chart21" runat="server" DataSourceID="SqlDataSource11" 
                    Height="150px" Palette="EarthTones" Width="100px">
                    <series>
                        <asp:Series ChartType="StackedColumn" Name="Series1" YValuesPerPoint="2" 
                            XValueMember="Column1" YValueMembers="Column1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <br />
                عدد المدراء</span></span></span></strong></td>
            <td class="style47">
                <strong><span class="style30"><span class="style31"><span class="style18">
                  <!--   انشاء عنصر الرسم البياني 18 المسؤول عن اظهار  عدد المدراء  -->
                <asp:Chart ID="Chart18" runat="server" DataSourceID="SqlDataSource9" 
                    Height="150px" Palette="Berry" Width="100px">
                    <series>
                        <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="Column1" 
                            YValueMembers="Column1" YValuesPerPoint="2">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <br />
                عدد المستخدمين المميزين</span></span></span></strong></td>
            <td class="style48">
                <strong><span class="style30"><span class="style31"><span class="style18">
                <div class="style14">
                <!--   انشاء عنصر الرسم البياني 19 المسؤول عن اظهار  عدد المستخدمين المميزين  -->
                    <asp:Chart ID="Chart19" runat="server" CssClass="style51" 
                        DataSourceID="SqlDataSource8" Height="150px" Palette="Chocolate" 
                        Width="100px">
                        <series>
                            <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="Column1" 
                                YValueMembers="Column1" YValuesPerPoint="2">
                            </asp:Series>
                        </series>
                        <chartareas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </chartareas>
                    </asp:Chart>
                </div>
                </span></span><span class="style36">عدد المستخدمين العاديين</span></span></strong></td>
            <td class="style49">
                <strong><span class="style30"><span class="style31"><span class="style18">
                <!--   انشاء عنصر الرسم البياني 20 المسؤول عن اظهار  عدد المستخدمين العاديين  -->
                <asp:Chart ID="Chart20" runat="server" CssClass="style50" 
                    DataSourceID="SqlDataSource7" Height="150px" Palette="Fire" Width="100px">
                    <series>
                        <asp:Series ChartType="StackedColumn" Name="Series1" XValueMember="Column1" 
                            YValueMembers="Column1" YValuesPerPoint="4">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <br />
                عدد المستخدمين الاجمالي</span></span></span></strong></td>
        </tr>
    </table>
    <table class="style1">
        <tr>
            <td class="style14">
                <strong><span class="style30"><span class="style31"><span class="style18">
                 <!--   انشاء عنصر الرسم البياني 23 المسؤول عن اظهار  اسماء المستخدمين الاكثر مساهمة في الموقع  -->
        <asp:Chart ID="Chart22" runat="server" DataSourceID="SqlDataSource12" 
       
                    ClientIDMode="AutoID" EnableTheming="True" ViewStateContent="All">
            <series>
                <asp:Series ChartType="Bar" Name="Series1" XValueMember="by_username" 
                    YValueMembers="count" YValuesPerPoint="10">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
                <br />
                 المستخدمين الأكثر مساهمة في الموقع</span></span></span></strong></td>
            <td class="style14">
                <strong><span class="style30"><span class="style31"><span class="style18">
               <!--   انشاء عنصر الرسم البياني 23 المسؤول عن اظهار  اسماء المستخدمين الاكثر قبول للمصطلحات  -->
        <asp:Chart ID="Chart23" runat="server" DataSourceID="SqlDataSource13" 
       
                    ClientIDMode="AutoID" EnableTheming="True" ViewStateContent="All" 
                    Palette="SeaGreen">
            <series>
                <asp:Series ChartType="Bar" Name="Series1" XValueMember="accepted_by" 
                    YValueMembers="count" YValuesPerPoint="10">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
                <br />
                 المستخدمين الأكثر قبول مصطلحات جديدة</span></span></span></strong></td>
            <td class="style14">
                <strong><span class="style30"><span class="style31"><span class="style18">
                 <!--   انشاء عنصر الرسم البياني 24 المسؤول عن اظهار  اسماء المستخدمين الاكثر تعديل على  المصطلحات   -->
        <asp:Chart ID="Chart24" runat="server" DataSourceID="SqlDataSource14" 
       
                    ClientIDMode="AutoID" EnableTheming="True" ViewStateContent="All" 
                    Palette="SemiTransparent">
            <series>
                <asp:Series ChartType="Bar" Name="Series1" XValueMember="lastupdate_by" 
                    YValueMembers="count" YValuesPerPoint="10">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
                <br />
                المستخدمين الأكثر تعديلا على المصطلحات</span></span></span></strong></td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <p>
        &nbsp;<p>
         <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب النتائج  الكلمات التي حصلت على اكبر عدد من الاعجابات -->
        &nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT top 10 * FROM [words] ORDER BY [likes] DESC"></asp:SqlDataSource>
          <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب النتائج  الكلمات التي حصلت على اكبر عدد من  عدم الاعجابات -->
     <strong><span class="style30"><span class="style31"><span class="style18">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT top 10 * FROM [words] ORDER BY [unlikes] DESC">
    </asp:SqlDataSource>
    </span></span></span></strong>
     <div>
      <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب عدد  الاختصارات مقارنة مع عدد الكلمات -->
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="
SELECT type, COUNT(*) as count FROM words GROUP BY type 


         "></asp:SqlDataSource>
         <strong><span class="style30"><span class="style31"><span class="style18">
           <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  عدد جميع المصطلحات الموجودة -->
         <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="select count(*) from words "></asp:SqlDataSource>
              <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  عدد المصطلحات التي بحاجة الى قبول -->
         <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="select count(*) from words where accept='waiting'">
         </asp:SqlDataSource>
          <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  عدد المصطلحات التي تمت اضافتها بواسطة الزوار -->
         <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="select count(*) from words where by_username IS NULL">
         </asp:SqlDataSource>
          <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  عدد المستخدمين العاديين -->
         <asp:SqlDataSource ID="SqlDataSource7" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="select count(*) from users"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT count (*) FROM [permission] where permission='user'">
                    </asp:SqlDataSource>
                    <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  عدد المستخدمين المميزين -->
                <asp:SqlDataSource ID="SqlDataSource9" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT count (*) FROM [permission] where permission='prouser'">
                </asp:SqlDataSource>
         </span></span></span></strong>
         <!--    انشاء عنصر الاتصال بقاعدة البيانات لجلب  عدد المستخدمين العاديين مقارنة مع عدد المستخدمين المميزين والمدراء-->
         <asp:SqlDataSource ID="SqlDataSource10" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT permission , COUNT(*) as count FROM permission GROUP BY permission ">
         </asp:SqlDataSource>
                <strong><span class="style30"><span class="style31"><span class="style18">
                <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  عدد المدراء -->
                <asp:SqlDataSource ID="SqlDataSource11" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT count (*) FROM [permission] where permission='admin'">
         </asp:SqlDataSource>
         <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  اسماء المستخدمين الذين اضافة اكبر عدد من المصطلحات -->
         <asp:SqlDataSource ID="SqlDataSource12" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="

SELECT top 10   COUNT (by_username)  as count, by_username  FROM [words]  group by by_username
"></asp:SqlDataSource>
<!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  اسماء المستخدمين الذين قبلو اكبر عدد من المصطلحات -->
         <asp:SqlDataSource ID="SqlDataSource13" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT top 10   COUNT (accepted_by)  as count, accepted_by  FROM [words]  group by accepted_by">
         </asp:SqlDataSource>
         <!--   انشاء عنصر الاتصال بقاعدة البيانات لجلب  اسماء المستخدمين الذين عدلوا اكبر عدد من المصطلحات -->
         <asp:SqlDataSource ID="SqlDataSource14" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             SelectCommand="SELECT top 10   COUNT (lastupdate_by)  as count, lastupdate_by  FROM [words]  group by lastupdate_by">
         </asp:SqlDataSource>
         </span></span></span></strong>
         <br />
         <br />
         <br />
         <br />
         <br />
         <br />
    
    </div>
    </p>
</asp:Content>

