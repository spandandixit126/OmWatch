<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login_Page.aspx.cs" Inherits="OmWatch.Login_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h2>Welcome
         <asp:Label ID="Label1" runat="server" Text="User"></asp:Label>
         ,</h2>
        <h2>Login Here</h2>
    </div>
        <div style="margin-left: 240px; height: 171px; width: 264px;">
            <asp:Image ID="Image1" runat="server" Height="167px" ImageUrl="~/Login_image.png" Width="251px" />
        </div>
        <h4>UserName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </h4>

        <h4>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
        </h4>
        <h4 style="margin-left: 120px">
            <asp:Button ID="Button1" runat="server" Height="29px" Text="Login" Width="89px" OnClick="Button1_Click" />
        </h4>
        <p>
            Not a User? Create your Account By Click Here,
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Register_Page.aspx">Register</asp:LinkButton>
        </p>
    </form>
</body>
</html>
