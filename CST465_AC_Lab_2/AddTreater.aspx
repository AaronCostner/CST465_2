<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTreater.aspx.cs" Inherits="CST465_AC_Lab_2.AddTreater" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="addtreaterForm" runat="server">
    <div>
        <asp:SqlDataSource ID="dsCandySqlData"
            ConnectionString="<%$ ConnectionStrings:DB_CST465 %>"
            SelectCommandType="Text"
            SelectCommand="SELECT * FROM Candy"
            runat="server" ></asp:SqlDataSource>

        <asp:SqlDataSource ID="dsCostumeSqlData"
            ConnectionString="<%$ ConnectionStrings:DB_CST465 %>"
            SelectCommandType="Text"
            SelectCommand="SELECT * FROM Costumes"
            runat="server" ></asp:SqlDataSource>

        <asp:SqlDataSource ID="dsInsertSqlData"
            ConnectionString="<%$ ConnectionStrings:DB_CST465 %>"
            InsertCommand="INSERT INTO Treaters(Name, FavoriteCandyID, CostumeID) VALUES (@Name, @FavoriteCandyID, @CostumeID)"
            runat="server" >
            
        </asp:SqlDataSource>

        <asp:FormView ID="fvTreaters"
            DataSourceID="dsInsertSqlData" DefaultMode="Insert" runat="server">

            <InsertItemTemplate>
                <asp:Label ID="lblInsertName" AssociatedControlID="txtInsertName" Text="Name:" runat="server"></asp:Label>
                <asp:TextBox ID="txtInsertName" Text='<%# Bind("Name") %>' runat="server">

                </asp:TextBox>

                <asp:Label ID="lblddlCandy" AssociatedControlID="ddlInsertFavoriteCandy" Text="Favorite Candy:" runat="server"></asp:Label>
                <asp:DropDownList ID="ddlInsertFavoriteCandy" SelectedValue='<%# Bind("FavoriteCandyID") %>' DataSourceID="dsCandySqlData"
                    DataTextField="ProductName" DataValueField="Id" runat="server">
                    
                </asp:DropDownList>

                <asp:Label ID="lblddlCostume" AssociatedControlID="ddlInsertCostume" Text="Costume:" runat="server"></asp:Label>
                <asp:DropDownList ID="ddlInsertCostume" SelectedValue='<%# Bind("CostumeID") %>' DataSourceID="dsCostumeSqlData"
                    DataTextField="Costume" DataValueField="Id" runat="server">

                </asp:DropDownList>

                <asp:Button ID="btnInsertTreater" Text="Add Treater" CommandName="Insert" runat="server"/>
            </InsertItemTemplate>
        </asp:FormView>
    </div>
    </form>
</body>
</html>
