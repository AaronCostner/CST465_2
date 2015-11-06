<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Master/BaseTemplate.Master" CodeBehind="Blog.aspx.cs" Inherits="CST465_AC_Lab_2.Blog" %>

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
    <asp:LoginView ID="loginView" runat="server">
        <AnonymousTemplate>
            <p>You must be signed in to post a blog entry.</p>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:Label ID="lblTitle" AssociatedControlID="blogTitleTextBox" Text="Blog Title" runat="server"></asp:Label>
            <asp:TextBox ID="blogTitleTextBox" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lblBlog" AssociatedControlID="blogTextBox" Text="Blog Text" runat="server"></asp:Label>
            <asp:TextBox ID="blogTextBox" Columns="100" Rows="50" runat="server"></asp:TextBox>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
