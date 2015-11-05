<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewTreaters.aspx.cs" Inherits="CST465_AC_Lab_2.ViewTreaters" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="viewtreaterForm" runat="server">
    <div>
        <asp:SqlDataSource ID="dsTreaterSqlData"
            ConnectionString="<%$ ConnectionStrings:DB_CST465 %>"
            SelectCommandType="Text"
            SelectCommand="SELECT Name, ProductName, Costume FROM Treaters JOIN Candy ON Treaters.FavoriteCandyID=Candy.ID JOIN Costumes ON Treaters.CostumeID=Costumes.ID"
            runat="server" ></asp:SqlDataSource>

        <asp:Repeater ID="rptrTreaters" DataSourceID="dsTreaterSqlData" runat="server">
            <ItemTemplate>
                <strong>Name: </strong><%# Eval("Name") %>
                <br />
                <strong>Favorite Candy: </strong><%# Eval("ProductName") %>
                <br />
                <strong>Costume: </strong><%# Eval("Costume") %>
                <br />
                <br />
                <br />
            </ItemTemplate>
        </asp:Repeater>
    
    </div>
    </form>
</body>
</html>
