<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HeroAll.aspx.vb" Inherits="HeroAll" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    <h1>Dota Heroes</h1>
     </div>
        <h2>Learn more about Dota</h2><br />
         <h3><ul><li><a href="Default.aspx" style="color: #696969">Home</a>&nbsp; |&nbsp; <a href="HeroAll.aspx" style="color: #696969">View All Hero</a>&nbsp; |&nbsp;<a href="Search.aspx" style="color: #696969">Search</a>&nbsp; |&nbsp; <a href="About.aspx" style="color: #696969">About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: #696969">Contact Us</a>&nbsp; |&nbsp;<a href="Log-in.aspx" style="color: #696969">Log-in</a>
             </li></ul></h3>
      </div> 
        <br />
        <br />
    <div style="height: 204px; width: 875px">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:msci3300_g4ConnectionString %>" SelectCommand="SELECT * FROM [qiehe_HW7]"></asp:SqlDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Hero_ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Hero_Name" HeaderText="Hero_Name" SortExpression="Hero_Name" />
                <asp:BoundField DataField="Hero_Type" HeaderText="Hero_Type" SortExpression="Hero_Type" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:CommandField ShowSelectButton="True" />
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
        <br />
        @ 2014 6k183 Qie He from Software Design and Development
    </div>
</body>
</html>
