<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_User.Master" AutoEventWireup="true" CodeBehind="AboutUS.aspx.cs" Inherits="OmWatch.AboutUS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="topnav">
        <a href="Main_Page.aspx">Home</a> <a href="Orders_Page_User.aspx">Your Orders</a> <a href="ContactUS.aspx">Contact US</a> <a class="active" href="AboutUS.aspx">About</a> <a href="Login_Page.aspx">LogOut</a>
        <br />
        <br />
        <br />
    </div>
    Here is your About US Page
    <br />
    Session will be expired automatically after 20 minutes of inactivity.
</asp:Content>


