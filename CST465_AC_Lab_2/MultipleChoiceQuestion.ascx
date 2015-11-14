<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="MultipleChoiceQuestion.ascx.cs" Inherits="CST465_AC_Lab_2.MultipleChoiceQuestion" %>

<asp:Label ID="lblRadioButtonList" AssociatedControlID="uxRadioButtonList" Width="300" runat="server" />
<asp:RadioButtonList ID="uxRadioButtonList" runat="server">
</asp:RadioButtonList>
<asp:RequiredFieldValidator ID="valRadioButtonList" ControlToValidate="uxRadioButtonList" Display="Dynamic" runat="server" />