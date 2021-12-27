<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_Admin.Master" AutoEventWireup="true" CodeBehind="IMP_GOLD_Admin.aspx.cs" Inherits="OmWatch.IMP_GOLD_Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            border: 1px solid #FF0000;
        }
        .auto-style2 {
            width: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="topnav">
        <a href="Admin_Page.aspx">Administrator</a> <a class="active" href="Orders_Page_Admin.aspx">All Orders</a> <a href="Login_Page.aspx">LogOut</a>
        <br />
        <br />
        <br />
    
    </div>
    <div class="topnav">
        <a href="GOLD_Admin.aspx">GOLD</a> <a class="active" href="IMP_GOLD_Admin.aspx">IMP GOLD</a> <a href="DHAL_GOLD_Admin.aspx">DHAL GOLD</a>
        <br />
        <br />
        <br />
    
    </div>
    Hello,Here is your current Orders...<br />
    In Every 1 minute Table will be updated.<br />
&nbsp;
    <asp:ScriptManager ID="ScriptManager1" runat="server">  
</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">  
<ContentTemplate> 
    <asp:Timer ID="Timer1" runat="server" Interval="60000" OnTick="Timer1_Tick"></asp:Timer>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="font-weight: 700; text-decoration: underline">BUY</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="BUYIMPGOLD" ForeColor="#333333" GridLines="None" PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                            <EditItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                            <EditItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                            <EditItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" SortExpression="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("Status") %>'>
                                    <asp:ListItem>Confirmed</asp:ListItem>
                                    <asp:ListItem>Not-Confirmed</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Edit Field" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <SortedAscendingCellStyle BackColor="#FDF5AC" />
                    <SortedAscendingHeaderStyle BackColor="#4D0000" />
                    <SortedDescendingCellStyle BackColor="#FCF6C0" />
                    <SortedDescendingHeaderStyle BackColor="#820000" />
                </asp:GridView>
                <asp:SqlDataSource ID="BUYIMPGOLD" runat="server" ConnectionString="<%$ ConnectionStrings:OmWatchConnectionString %>" DeleteCommand="DELETE FROM [BUYIMPGOLD] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BUYIMPGOLD] ([UserName], [Quantity], [Rate], [Status]) VALUES (@UserName, @Quantity, @Rate, @Status)" SelectCommand="SELECT * FROM [BUYIMPGOLD] ORDER BY [Rate] DESC, [Quantity] DESC" UpdateCommand="UPDATE [BUYIMPGOLD] SET [UserName] = @UserName, [Quantity] = @Quantity, [Rate] = @Rate, [Status] = @Status WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Rate" Type="Int32" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Rate" Type="Int32" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: 700; text-decoration: underline">SELL</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SELLIMPGOLD" PageSize="5">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:TemplateField HeaderText="UserName" SortExpression="UserName">
                            <EditItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                            <EditItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                            <EditItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" SortExpression="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("Status") %>'>
                                    <asp:ListItem>Confirmed</asp:ListItem>
                                    <asp:ListItem>Not-Confirmed</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Edit Field" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                <asp:SqlDataSource ID="SELLIMPGOLD" runat="server" ConnectionString="<%$ ConnectionStrings:OmWatchConnectionString %>" DeleteCommand="DELETE FROM [SELLIMPGOLD] WHERE [Id] = @Id" InsertCommand="INSERT INTO [SELLIMPGOLD] ([UserName], [Quantity], [Rate], [Status]) VALUES (@UserName, @Quantity, @Rate, @Status)" SelectCommand="SELECT * FROM [SELLIMPGOLD] ORDER BY [Rate], [Quantity] DESC" UpdateCommand="UPDATE [SELLIMPGOLD] SET [UserName] = @UserName, [Quantity] = @Quantity, [Rate] = @Rate, [Status] = @Status WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Rate" Type="Int32" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Rate" Type="Int32" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: 700; text-decoration: underline">CHANGE</td>
            <td>
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="Id" DataSourceID="CHANGEIMPGOLD" ForeColor="Black" GridLines="None" PageSize="5">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
                        <asp:TemplateField HeaderText="Quantity" SortExpression="Quantity">
                            <EditItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Quantity") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Rate" SortExpression="Rate">
                            <EditItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Rate") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="BOKADA" SortExpression="BOKADA">
                            <EditItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("BOKADA") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("BOKADA") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Status" SortExpression="Status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" SelectedValue='<%# Bind("Status") %>'>
                                    <asp:ListItem>Confirmed</asp:ListItem>
                                    <asp:ListItem>Not-Confirmed</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField HeaderText="Edit Field" ShowDeleteButton="True" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="CHANGEIMPGOLD" runat="server" ConnectionString="<%$ ConnectionStrings:OmWatchConnectionString %>" DeleteCommand="DELETE FROM [CHANGEIMPGOLD] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CHANGEIMPGOLD] ([UserName], [Quantity], [Rate], [BOKADA], [Status]) VALUES (@UserName, @Quantity, @Rate, @BOKADA, @Status)" SelectCommand="SELECT * FROM [CHANGEIMPGOLD] ORDER BY [Rate] DESC, [Quantity] DESC" UpdateCommand="UPDATE [CHANGEIMPGOLD] SET [UserName] = @UserName, [Quantity] = @Quantity, [Rate] = @Rate, [BOKADA] = @BOKADA, [Status] = @Status WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Rate" Type="Int32" />
                        <asp:Parameter Name="BOKADA" Type="Double" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="UserName" Type="String" />
                        <asp:Parameter Name="Quantity" Type="Int32" />
                        <asp:Parameter Name="Rate" Type="Int32" />
                        <asp:Parameter Name="BOKADA" Type="Double" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
       </ContentTemplate>  
</asp:UpdatePanel>  
</asp:Content>



