<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_User.Master" AutoEventWireup="true" CodeBehind="Main_Page.aspx.cs" Inherits="OmWatch.Main_Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="topnav">
        <a class="active" href="Main_Page.aspx">Home</a> <a href="Orders_Page_User.aspx">Your Orders</a> <a href="ContactUS.aspx">Contact US</a> <a href="AboutUS.aspx">About</a><a href="Login_Page.aspx">LogOut</a>
        <br />
        <br />
        <br />
    </div>
    <p style="margin-left: 5px; margin-top: 6px">
        hi
        <asp:Label ID="Label1" runat="server" Text="User"></asp:Label>
        ,<br />
    you can order here,

        <br />
        <br />
        Choose&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="BSC" Text="BUY" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="BSC" Text="SELL" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="BSC" Text="CHANGE" OnCheckedChanged="RadioButton3_CheckedChanged" AutoPostBack="True" />
        <br />
        Quantity&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" EnableTheming="True" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Only Numbers allowed" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        <br />
        Rate&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Only Numbers allowed" ForeColor="Red" ValidationExpression="^[0-9]*$"></asp:RegularExpressionValidator>
        <br />
        Select Metal&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>GOLD</asp:ListItem>
            <asp:ListItem>IMP GOLD</asp:ListItem>
            <asp:ListItem>DHAL GOLD</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p style="margin-left: 5px; margin-top: 6px">
        <asp:Label ID="Label2" runat="server" Text="BOKADA" Visible="False"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server" AutoPostBack="True" Visible="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Only Numbers allowed" ForeColor="Red" ValidationExpression="^[-+]?\d*\.?\d*$"></asp:RegularExpressionValidator>
        </p>
    <p style="margin-left: 5px; margin-top: 6px">
        <asp:Button ID="Button1" runat="server" Text="Place Order!" OnClick="Button1_Click" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>

</asp:Content>



