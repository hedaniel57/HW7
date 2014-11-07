<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HeroAll.aspx.vb" Inherits="HeroAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <link rel="stylesheet" type="text/css" href="./css/stylesheet.css" />
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    <h1>Dota2 Heroes</h1>
     </div>
        <h2>Learn more about Dota</h2><br />
         <ul><li><a href="Default.aspx" style="color: red">Home</a>&nbsp; |&nbsp; <a href="HeroAll.aspx" style="color: red">View All Hero</a>&nbsp; |&nbsp;<a href="Search.aspx" style="color:red">Search</a>&nbsp; |&nbsp; <a href="About.aspx" style="color: red">About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: red">Contact Us</a>&nbsp;|&nbsp; <a href="./login/Log-in.aspx" style="color: red">Admin</a>&nbsp; 
             </li></ul>
      </div> 
        <br />
        <br />
    <div class="cssgridview";>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [qiehe_HW7]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Hero_ID" DataSourceID="SqlDataSource1" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Hero_Name" HeaderText="Hero_Name" SortExpression="Hero_Name" />
                <asp:BoundField DataField="Hero_Type" HeaderText="Hero_Type" SortExpression="Hero_Type" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:HyperLinkField DataNavigateUrlFields="Hero_ID" DataNavigateUrlFormatString="HeroDetail.aspx?Hero_ID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
        
    
    </div>
    </form>
   
    <br />
        <br />
        <br />
    <div class="footer"> 
        <br /> 
        <br /> 
         
        @ 2014 6k183 Qie He from Software Design and Development
        <br />
        <br />
    </div>
</body>
</html>
