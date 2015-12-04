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
    <asp:SqlDataSource ID="dsBlog"
        ConnectionString="<%$ ConnectionStrings:DB_CST465 %>" InsertCommandType="StoredProcedure"
        UpdateCommandType="StoredProcedure" UpdateCommand="Blog_InsertUpdate"
        InsertCommand="Blog_InsertUpdate"
        SelectCommandType="Text" SelectCommand="SELECT * FROM Blog"
        runat="server"></asp:SqlDataSource>

    <asp:LoginView ID="loginView" runat="server">
        <AnonymousTemplate>
            <p>You must be signed in to post a blog entry.</p>
        </AnonymousTemplate>
        <LoggedInTemplate>
            <asp:UpdatePanel ID="updatePanel" runat="server">

                <ContentTemplate>

                    <asp:Repeater ID="uxBlogRepeater" DataSourceID="dsBlog" runat="server">
                        <ItemTemplate>
                            <article>
                                <h1><%# Eval("Title") %></h1>
                                <p><%# Eval("Content") %></p>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>

                    <asp:FormView ID="formView" DataSourceID="dsBlog" DefaultMode="Insert" runat="server">
                        <InsertItemTemplate>
                            <asp:Label ID="lblTitle" AssociatedControlID="blogTitleTextBox" Text="Blog Title" runat="server"></asp:Label>
                            <asp:TextBox ID="blogTitleTextBox" Text='<%# Bind("Title") %>' runat="server"></asp:TextBox>
                            <br />
                            <asp:Label ID="lblBlog" AssociatedControlID="blogTextBox" Text="Blog Text" runat="server"></asp:Label>
                            <asp:TextBox ID="blogTextBox" Columns="100" Rows="50" Text='<%# Bind("Content") %>' runat="server"></asp:TextBox>
                            <asp:Button ID="addBlog" Text="Post Blog" CommandName="Insert" OnClick="addBlog_Click" runat="server" />
                        </InsertItemTemplate>
                    </asp:FormView>

                </ContentTemplate>

            </asp:UpdatePanel>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
