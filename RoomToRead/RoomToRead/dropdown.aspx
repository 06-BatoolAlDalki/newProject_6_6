<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdown.aspx.cs" Inherits="RoomToRead.dropdown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:batoolConnectionString %>" DeleteCommand="DELETE FROM [city] WHERE [id] = @id" InsertCommand="INSERT INTO [city] ([name], [id], [img], [status]) VALUES (@name, @id, @img, @status)" SelectCommand="SELECT * FROM [city]" UpdateCommand="UPDATE [city] SET [name] = @name, [img] = @img, [status] = @status WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="status" Type="Decimal" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="img" Type="String" />
                    <asp:Parameter Name="status" Type="Decimal" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" />
                    <asp:TemplateField ConvertEmptyStringToNull="False" HeaderText="status" SortExpression="status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("status") %>'>
                                <asp:ListItem Value="1">accept</asp:ListItem>
                                <asp:ListItem Value="0">reject</asp:ListItem>
                                <asp:ListItem Value="2">wait</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" Enabled="False" SelectedValue='<%# Eval("status") %>'>
                                <asp:ListItem Value="1">accept</asp:ListItem>
                                <asp:ListItem Value="0">reject</asp:ListItem>
                                <asp:ListItem Value="2">wait</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
