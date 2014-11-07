<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HeroDetail.aspx.vb" Inherits="HeroDetail" %>

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
         <ul><li><a href="Default.aspx" style="color: red">Home</a>&nbsp; |&nbsp; <a href="HeroAll.aspx" style="color: red">View All Hero</a>&nbsp; |&nbsp;<a href="Search.aspx" style="color:red">Search</a>&nbsp; |&nbsp; <a href="About.aspx" style="color: red">About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: red">Contact Us</a>&nbsp;|&nbsp; <a href="../login/log-in.aspx" style="color: red">Admin</a>&nbsp; |&nbsp;<a href="../login/Log-in.aspx" style="color: red">Log-in</a>
             </li></ul>
      </div> 
        <br />
        <br />
    <div class="cssdetailsview">
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [qiehe_HW7] WHERE ([Hero_ID] = @Hero_ID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="Hero_ID" QueryStringField="Hero_ID" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Hero_ID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Hero_Name" HeaderText="Hero_Name" SortExpression="Hero_Name" />
                <asp:BoundField DataField="Hero_Type" HeaderText="Hero_Type" SortExpression="Hero_Type" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Outstanding_Player" HeaderText="Outstanding_Player" SortExpression="Outstanding_Player" />
                <asp:BoundField DataField="Golden_unique_ID" HeaderText="Golden_unique_ID" SortExpression="Golden_unique_ID" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            </Fields>
        </asp:DetailsView>
    
        <br />
        <h4><asp:Button ID="btn_back" runat="server" Text="Back" Height="19px" style="margin-left: 0px" /></h4>
    
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
