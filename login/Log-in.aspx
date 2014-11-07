<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Log-in.aspx.vb" Inherits="Log_in" %>

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
         <ul><li><a href="../admin/Default.aspx" style="color: red">Home</a>&nbsp; |&nbsp; <a href="../HeroAll.aspx" style="color: red">View All Hero</a>&nbsp; |&nbsp;<a href="../Search.aspx" style="color:red">Search</a>&nbsp; |&nbsp; <a href="../About.aspx" style="color: red">About Us</a>&nbsp; |&nbsp; <a href="../Contact.aspx" style="color: red">Contact Us</a>&nbsp;|&nbsp; <a href="Log-in.aspx" style="color: red">Admin</a>&nbsp;
             </li
             </li></ul>
      </div> 
        <br />
        <br />
    <div>
    
        <h6><asp:Login ID="Login1" runat="server" >
        </asp:Login></h6>
    
    </div>
    </form>

    <div class="footer">
        <br /> 
        <br /> 
         
        @ 2014 6k183 Qie He from Software Design and Development
        <br />
        <br />
        </div>
        </body>
    </html>
