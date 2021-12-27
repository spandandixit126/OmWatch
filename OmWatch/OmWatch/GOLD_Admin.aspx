<%@ Page Title="" Language="C#" MasterPageFile="~/Master_Page_Admin.Master" AutoEventWireup="true" CodeBehind="GOLD_Admin.aspx.cs" Inherits="OmWatch.Orders_Page" %>
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
        <a class="active" href="GOLD_Admin.aspx">GOLD</a> <a href="IMP_GOLD_Admin.aspx">IMP GOLD</a> <a href="DHAL_GOLD_Admin.aspx">DHAL GOLD</a>
        <br />
        <br />
        <br />
    
    </div>
    Hello,Here is your current Orders...<br />
    In Every 1 minute Table will be updated.<asp:ScriptManager ID="ScriptManager1" runat="server">  
</asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
             <asp:Timer ID="Timer1" runat="server" Interval="60000" OnTick="Timer1_Tick"></asp:Timer>
            <table class="auto-style1">
        <tr>
            <td class="auto-style2" style="font-weight: 700; text-decoration: underline">BUY</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="5px" CellPadding="2" DataKeyNames="Id" DataSourceID="BUYGOLD" ForeColor="Black" GridLines="None" PageSize="5" BorderStyle="Solid">
                    <AlternatingRowStyle BackColor="PaleGoldenrod" />
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
                    <FooterStyle BackColor="Tan" />
                    <HeaderStyle BackColor="Tan" Font-Bold="True" />
                    <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                    <SortedAscendingCellStyle BackColor="#FAFAE7" />
                    <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                    <SortedDescendingCellStyle BackColor="#E1DB9C" />
                    <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                </asp:GridView>
                <asp:SqlDataSource ID="BUYGOLD" runat="server" ConnectionString="<%$ ConnectionStrings:OmWatchConnectionString %>" DeleteCommand="DELETE FROM [BUYGOLD] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [BUYGOLD] ([UserName], [Quantity], [Rate], [Status]) VALUES (@UserName, @Quantity, @Rate, @Status)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [BUYGOLD] ORDER BY [Rate] DESC, [Quantity] DESC" UpdateCommand="UPDATE [BUYGOLD] SET [UserName] = @UserName, [Quantity] = @Quantity, [Rate] = @Rate, [Status] = @Status WHERE [Id] = @original_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="original_Id" Type="Int32" />
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
                        <asp:Parameter Name="original_Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="font-weight: 700; text-decoration: underline">SELL</td>
            <td>
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SELLGOLD" GridLines="Vertical" PageSize="5">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
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
                <asp:SqlDataSource ID="SELLGOLD" runat="server" ConnectionString="<%$ ConnectionStrings:OmWatchConnectionString %>" DeleteCommand="DELETE FROM [SELLGOLD] WHERE [Id] = @Id" InsertCommand="INSERT INTO [SELLGOLD] ([UserName], [Quantity], [Rate], [Status]) VALUES (@UserName, @Quantity, @Rate, @Status)" SelectCommand="SELECT * FROM [SELLGOLD] ORDER BY [Rate], [Quantity] DESC" UpdateCommand="UPDATE [SELLGOLD] SET [UserName] = @UserName, [Quantity] = @Quantity, [Rate] = @Rate, [Status] = @Status WHERE [Id] = @Id">
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
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="CHANGEGOLD" ForeColor="Black" GridLines="Vertical" PageSize="5">
                    <AlternatingRowStyle BackColor="White" />
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
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
                <asp:SqlDataSource ID="CHANGEGOLD" runat="server" ConnectionString="<%$ ConnectionStrings:OmWatchConnectionString %>" DeleteCommand="DELETE FROM [CHANGEGOLD] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CHANGEGOLD] ([UserName], [Quantity], [Rate], [BOKADA], [Status]) VALUES (@UserName, @Quantity, @Rate, @BOKADA, @Status)" SelectCommand="SELECT * FROM [CHANGEGOLD] ORDER BY [Rate] DESC, [Quantity] DESC" UpdateCommand="UPDATE [CHANGEGOLD] SET [UserName] = @UserName, [Quantity] = @Quantity, [Rate] = @Rate, [BOKADA] = @BOKADA, [Status] = @Status WHERE [Id] = @Id">
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


