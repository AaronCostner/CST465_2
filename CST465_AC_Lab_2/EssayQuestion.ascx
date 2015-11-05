<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EssayQuestion.ascx.cs" Inherits="CST465_AC_Lab_2.EssayQuestion" %>

<asp:Label ID="lblTextBox" AssociatedControlID="uxTextBox" runat="server" />
<asp:TextBox ID="uxTextBox" Columns="10" MaxLength="5" runat="server" />
<asp:RequiredFieldValidator ID="valTextBox" ControlToValidate="uxTextBox" Display="Dynamic" runat="server" />