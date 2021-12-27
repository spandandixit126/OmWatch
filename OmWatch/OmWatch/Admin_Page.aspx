<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_Page.aspx.cs" Inherits="OmWatch.Admin" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Hello Welcome to the Admin Panel here you can manage all the users with there essential information using below table.<br />
        </div>
        <p>Hi there, You are currently logged in as
            <asp:Label ID="Label1" runat="server" Text="User!"></asp:Label>
            &nbsp;in Admin Mode.</p>
        <p>Please make sure that after adding a new Admin user make sure that the username will be ADMIN and UserType must be Admin for Slim-less experience.also before pressing Update please check that the Password Field and Cofirm Password Field must be Same.</p>
        <h2>Manage Users</h2>
        
        <p style="width: 615px">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="OmWatch" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="513px" AllowPaging="True">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                        <EditItemTemplate>
                            <asp:Label ID="Label11" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="JN" SortExpression="JN">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("JN") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("JN") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="PhoneNo" SortExpression="PhoneNo">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PhoneNo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Location" SortExpression="Location">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password" SortExpression="Password">
                        <EditItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="CPassword" SortExpression="CPassword">
                        <EditItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("CPassword") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Verify" SortExpression="Verify">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("Verify") %>'>
                                <asp:ListItem Value="0">0(NotVerified)</asp:ListItem>
                                <asp:ListItem Value="1">1(Verified)</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Verify") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="UserType" SortExpression="UserType">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("UserType") %>'>
                                <asp:ListItem>Admin</asp:ListItem>
                                <asp:ListItem>User</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("UserType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField HeaderText="Update Field" ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <asp:SqlDataSource ID="OmWatch" runat="server" ConnectionString="<%$ ConnectionStrings:OmWatchConnectionString %>" DeleteCommand="DELETE FROM [People] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [People] ([UserName], [JN], [PhoneNo], [Location], [Password], [CPassword], [Verify], [UserType]) VALUES (@UserName, @JN, @PhoneNo, @Location, @Password, @CPassword, @Verify, @UserType)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [People]" UpdateCommand="UPDATE [People] SET [UserName] = @UserName, [JN] = @JN, [PhoneNo] = @PhoneNo, [Location] = @Location, [Password] = @Password, [CPassword] = @CPassword, [Verify] = @Verify, [UserType] = @UserType WHERE [Id] = @original_Id">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="JN" Type="String" />
                    <asp:Parameter Name="PhoneNo" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="CPassword" Type="String" />
                    <asp:Parameter Name="Verify" Type="Int32" />
                    <asp:Parameter Name="UserType" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="JN" Type="String" />
                    <asp:Parameter Name="PhoneNo" Type="String" />
                    <asp:Parameter Name="Location" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="CPassword" Type="String" />
                    <asp:Parameter Name="Verify" Type="Int32" />
                    <asp:Parameter Name="UserType" Type="String" />
                    <asp:Parameter Name="original_Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p style="height: 138px">
            Main Page Link :-
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/GOLD_Admin.aspx" OnClick="LinkButton1_Click">Trading Page</asp:LinkButton>
        <br />
            Delete All Unconfirmed Orders press ---&gt;<asp:Button ID="Button1" runat="server" Text="Delete UnConfirmed Orders" OnClick="Button1_Click" />
        <br />
            To Delete Confirmed Order press --
            &gt;<asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="delete Confirmed Orders" />
        <br />
        </p>
        </form>
</body>
</html>
