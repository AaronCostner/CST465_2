<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Master/BaseTemplate.Master" CodeBehind="Products.aspx.cs" Inherits="CST465_AC_Lab_2.Products" %>

<%@ Register TagPrefix="CST465" Assembly="CST465_AC_Lab_2" Namespace="CST465_AC_Lab_2" %>
<%@ Register TagPrefix="CSET" TagName="MultChoice" Src="~/MultipleChoiceQuestion.ascx" %>
<%@ Register TagPrefix="CSET" TagName="Featured" Src="~/FeaturedProducts.ascx" %>

<asp:Content ID="ContentBody" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <CSET:Featured ID="featuredUserControl" runat="server" />

    <asp:SqlDataSource ID="dsProducts"
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>"
        SelectCommandType="StoredProcedure" SelectCommand="Product_GetList"
        runat="server"></asp:SqlDataSource>

    <br />
    <br />
    <h2>All Products</h2>
    <br />
    <asp:Repeater ID="uxAllProductsRepeater" DataSourceID="dsProducts" runat="server">
        <ItemTemplate>
            <div>
                <h3>Product Name: <%# Eval("Name") %></h3>
                <p>Description: <%# Eval("Description") %></p>
                <span class="price">Price: $<%#Eval("Price") %></span>
            </div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
