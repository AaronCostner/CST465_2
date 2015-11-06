<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Master/BaseTemplate.Master" CodeBehind="UserManagement.aspx.cs" Inherits="CST465_AC_Lab_2.UserManagement" %>

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
    <asp:Label ID="lblListBox" AssociatedControlID="lstBox" Text="Roles" runat="server"></asp:Label>
    <asp:ListBox ID="lstBox" Width="100" runat="server"></asp:ListBox>

    <br />

    <asp:Label ID="lblTextBox" AssociatedControlID="txtBox" Text="Role Name" runat="server"></asp:Label>
    <asp:TextBox ID="txtBox" runat="server"></asp:TextBox>

    <asp:Button ID="btnAddRole" Text="Add Role" OnClick="btnAddRole_Click" runat="server" />
</asp:Content>
