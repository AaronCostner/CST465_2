<%@ Control Language="C#" CodeBehind="FeaturedProducts.ascx.cs" Inherits="CST465_AC_Lab_2.FeaturedProducts" %>

<h2>Featured Products</h2>
<br />
<asp:SqlDataSource ID="dsProducts"
    ConnectionString="<%$ ConnectionStrings:DB_CST465 %>"
    SelectCommandType="StoredProcedure" SelectCommand="Product_GetFeatured"
    runat="server"></asp:SqlDataSource>

<asp:Repeater ID="uxFeaturedProductsRepeater" DataSourceID="dsProducts" runat="server">
    <ItemTemplate>
        <div>
            <h3>Product Name: <%# Eval("Name") %></h3>
            <p>Description: <%# Eval("Description") %></p>
            <span class="price">Price: $<%#Eval("Price") %></span>
        </div>
    </ItemTemplate>
</asp:Repeater>
