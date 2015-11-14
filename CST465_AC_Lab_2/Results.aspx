<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Master/BaseTemplate.Master" CodeBehind="Results.aspx.cs" Inherits="CST465_AC_Lab_2.Results" %>

<asp:Content ID="ContentBody" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">
    <asp:Repeater ID="uxRepeater" runat="server">
        <ItemTemplate>
            <strong><%# DataBinder.Eval(Container.DataItem, "QuestionText") %></strong>
            <br />
            <%# DataBinder.Eval(Container.DataItem, "Answer") %>
            <br />
            <br />
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
