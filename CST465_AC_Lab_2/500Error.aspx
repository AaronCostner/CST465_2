<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="500Error.aspx.cs" Inherits="CST465_AC_Lab_2._500Error" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Error 500</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Literal ID="error500Literal" runat="server" Text="<b>Error 500</b>" Mode="Encode"></asp:Literal>
            <asp:TextBox ID="errorMessage" Text="Error 500: An internal server error occurred." ReadOnly="true" runat="server"></asp:TextBox>
        </div>
    </form>
</body>
</html>
