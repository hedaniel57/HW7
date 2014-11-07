<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Search.aspx.vb" Inherits="Search" %>

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
         <ul><li><a href="Default.aspx" style="color: red">Home</a>&nbsp; |&nbsp; <a href="HeroAll.aspx" style="color: red">View All Hero</a>&nbsp; |&nbsp;<a href="Search.aspx" style="color:red">Search</a>&nbsp; |&nbsp; <a href="About.aspx" style="color: red">About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: red">Contact Us</a>&nbsp;|&nbsp; <a href="admin.aspx" style="color: red">Admin</a>&nbsp; |&nbsp;<a href="Log-in.aspx" style="color: red">Log-in</a>
             </li></ul>
      </div> 
        <br />
        <br />
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [qiehe_HW7]"></asp:SqlDataSource>
        <br />
        <% If Not IsPostBack Then%>

        <h5> Search for a hero by name: &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbTool" runat="server" AutoPostBack="True"></asp:TextBox></h5>
        
        <% Else%>
        <br />
        <h5>Search for another hero by name:&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbTool2" runat="server" AutoPostBack="True"></asp:TextBox></h5>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Hero_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Hero_Name" HeaderText="Hero_Name" SortExpression="Hero_Name" />
                <asp:BoundField DataField="Hero_Type" HeaderText="Hero_Type" SortExpression="Hero_Type" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Outstanding_Player" HeaderText="Outstanding_Player" SortExpression="Outstanding_Player" />
                <asp:BoundField DataField="Golden_unique_ID" HeaderText="Golden_unique_ID" SortExpression="Golden_unique_ID" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            </Columns>
        </asp:GridView>
     <% End If %>
    </div>
    </form>

    <div class="footer"> 
        <br />
        <br />
        <br />
        @ 2014 6k183 Qie He from Software Design and Development
    </div>
</body>
</html>
