<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EssayQuestion.ascx.cs" Inherits="CST465_AC_Lab_2.EssayQuestion" %>

<asp:Label ID="lblTextBox" AssociatedControlID="uxTextBox" Width="300" runat="server" />
<asp:TextBox ID="uxTextBox" Columns="100" Rows="100" MaxLength="255" runat="server" />
<asp:RequiredFieldValidator ID="valTextBox" ControlToValidate="uxTextBox" Display="Dynamic" runat="server" />