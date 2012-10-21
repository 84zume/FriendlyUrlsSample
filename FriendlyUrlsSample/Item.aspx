<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Item.aspx.cs" Inherits="FriendlyUrlsSample.Item" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>FriendlyUrls Sample Application</title>
</head>
<body>
    <form id="mainform" runat="server">
        <div>
            <p>
                商品ID:<asp:Label ID="Id" runat="server" /><br />
                商品名：<asp:Label ID="Name" runat="server" /><br />
                商品説明：<asp:Label ID="Description" runat="server" />
            </p>
        </div>
    </form>
</body>
</html>
