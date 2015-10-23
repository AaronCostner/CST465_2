<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404Error.aspx.cs" Inherits="CST465_AC_Lab_2._404Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error 404</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="error404Literal" runat="server" Text="<b>Error 404</b>" Mode="Encode"></asp:Literal>
            <asp:TextBox ID="errorMessage" Text="Error 404: The page does not exist." ReadOnly="true" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
