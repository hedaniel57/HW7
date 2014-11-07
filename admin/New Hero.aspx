<%@ Page Language="VB" AutoEventWireup="false" CodeFile="New Hero.aspx.vb" Inherits="New_Hero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <link rel="stylesheet" type="text/css" href="../css/stylesheet.css" />
<body>
    <form id="form1" runat="server">
    <div>
    <div>
    <h1>Dota2 Heroes</h1>
     </div>
        <h2>Learn more about Dota</h2><br />
         <ul><li><a href="Default.aspx" style="color: red">Home</a>&nbsp; |&nbsp; <a href="HeroAlladmin.aspx" style="color: red">View All Hero</a>&nbsp; |&nbsp;<a href="Search.aspx" style="color:red">Search</a>&nbsp; |&nbsp; <a href="About.aspx" style="color: red">About Us</a>&nbsp; |&nbsp; <a href="Contact.aspx" style="color: red">Contact Us</a>&nbsp;|&nbsp; <a href="admin.aspx" style="color: red">Admin</a>&nbsp; |&nbsp;<a href="Log-in.aspx" style="color: red">Log-in</a>
             </li></
             </li></ul>
      </div > 
        <div class="cssdetailsview">
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" SelectCommand="SELECT * FROM [qiehe_HW7]" DeleteCommand="DELETE FROM [qiehe_HW7] WHERE [Hero_ID] = @Hero_ID" InsertCommand="INSERT INTO [qiehe_HW7] ([Hero_Name], [Hero_Type], [Position], [Outstanding_Player], [Golden_unique_ID], [Note]) VALUES (@Hero_Name, @Hero_Type, @Position, @Outstanding_Player, @Golden_unique_ID, @Note)" UpdateCommand="UPDATE [qiehe_HW7] SET [Hero_Name] = @Hero_Name, [Hero_Type] = @Hero_Type, [Position] = @Position, [Outstanding_Player] = @Outstanding_Player, [Golden_unique_ID] = @Golden_unique_ID, [Note] = @Note WHERE [Hero_ID] = @Hero_ID">
            <DeleteParameters>
                <asp:Parameter Name="Hero_ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Hero_Name" Type="String" />
                <asp:Parameter Name="Hero_Type" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Outstanding_Player" Type="String" />
                <asp:Parameter Name="Golden_unique_ID" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Hero_Name" Type="String" />
                <asp:Parameter Name="Hero_Type" Type="String" />
                <asp:Parameter Name="Position" Type="String" />
                <asp:Parameter Name="Outstanding_Player" Type="String" />
                <asp:Parameter Name="Golden_unique_ID" Type="String" />
                <asp:Parameter Name="Note" Type="String" />
                <asp:Parameter Name="Hero_ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Hero_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Hero_Name" HeaderText="Hero_Name" SortExpression="Hero_Name" />
                <asp:BoundField DataField="Hero_Type" HeaderText="Hero_Type" SortExpression="Hero_Type" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Outstanding_Player" HeaderText="Outstanding_Player" SortExpression="Outstanding_Player" />
                <asp:BoundField DataField="Golden_unique_ID" HeaderText="Golden_unique_ID" SortExpression="Golden_unique_ID" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
            </div>
    <div>
    
    </div>
    </form>
    
    <div class="footer"> 
        <br />
        <br />
        <br />
        @ 2014 6k183 Qie He from Software Design and Development
    l>
