<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Master/BaseTemplate.Master" CodeBehind="ManageProducts.aspx.cs" Inherits="CST465_AC_Lab_2.Admin.ManageProducts" %>

<asp:Content ID="ContentHead" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
    <title></title>
    <script type="text/javascript">
        function validateFile(sender, args) {
            var allowedExtensions = ['jpg', 'gif', 'png'];
            var fileExtension = args.Value.split(/(\.)/g).pop();

            args.IsValid = false;
            for (var i = 0; i < allowedExtensions.length; i++) {
                if (fileExtension == allowedExtensions[i]) {
                    args.IsValid = true;
                }
            }
        }
    </script>
</asp:Content>

<asp:Content ID="ContentBody" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <asp:SqlDataSource ID="dsProducts"
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" InsertCommandType="StoredProcedure"
        UpdateCommandType="StoredProcedure" UpdateCommand="Product_InsertUpdate"
        InsertCommand="Product_InsertUpdate"
        SelectCommandType="StoredProcedure" SelectCommand="Product_GetList"
        runat="server"></asp:SqlDataSource>

    <asp:FormView ID="formView" DataSourceID="dsProducts" DefaultMode="Insert" runat="server">
        <InsertItemTemplate>
            <asp:Label ID="lblName" AssociatedControlID="productNameTextBox" Text="Product Name" runat="server"></asp:Label>
            <asp:TextBox ID="productNameTextBox" Text='<%# Bind("Name") %>' runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblDescription" AssociatedControlID="descriptionTextBox" Text="Product Description" runat="server"></asp:Label>
            <asp:TextBox ID="descriptionTextBox" Columns="100" Rows="50" Text='<%# Bind("Description") %>' runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblPrice" AssociatedControlID="priceTextBox" Text="Product Price" runat="server"></asp:Label>
            <asp:TextBox ID="priceTextBox" Columns="100" Rows="50" Text='<%# Bind("Price") %>' runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblFeatured" AssociatedControlID="featuredCheckBox" Text="Product Featured" runat="server"></asp:Label>
            <asp:CheckBox ID="featuredCheckBox" Checked='<%# Bind("Featured") %>' runat="server" />
            <br />
            <asp:Button ID="addProduct" Text="Add Product" CommandName="Insert" OnClick="addProduct_Click" runat="server" />
        </InsertItemTemplate>
    </asp:FormView>
    <br />
    <br />
    <asp:GridView ID="uxProducts" AutoGenerateColumns="false"
        DataSourceID="dsProducts" DataKeyNames="ID" AllowSorting="true" AllowPaging="true" PageSize="3" runat="server">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" />
            <asp:BoundField DataField="Name" SortExpression="Name" HeaderText="Name" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <asp:BoundField DataField="Featured" HeaderText="Featured" />
        </Columns>
    </asp:GridView>
</asp:Content>
