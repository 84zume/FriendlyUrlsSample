<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="FriendlyUrlsSample.List" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FriendlyUrls Sample Application</title>
</head>
<body>
    <form id="mainform" runat="server">
        <div>
            <h2>商品一覧</h2>
            <asp:ListView runat="server" ID="ProductList" DataSourceID="ProductDataSource">
                <LayoutTemplate>
                    <ul id="itemPlaceholderContainer" runat="server">
                        <li runat="server" id="itemPlaceholder"></li>
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <li>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />:<a href="<%# FriendlyUrl.Href("~/Item", Eval("Id")) %>"><asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' /></a>
                    </li>
                </ItemTemplate>
            </asp:ListView>
            <asp:ObjectDataSource runat="server" ID="ProductDataSource" TypeName="FriendlyUrlsSample.Data.ProductDao" SelectMethod="GetAllProducts"></asp:ObjectDataSource>
        </div>
    </form>
</body>
</html>
