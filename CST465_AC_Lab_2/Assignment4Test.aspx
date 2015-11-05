<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Assignment4Test.aspx.cs" Inherits="CST465_AC_Lab_2.Assignment4Test" %>
<%@ Register TagPrefix="CST465" Assembly="CST465_AC_Lab_2" Namespace="CST465_AC_Lab_2" %>
<%@ Register TagPrefix="CSET" TagName="MultChoice" Src="~/MultipleChoiceQuestion.ascx" %>
<%@ Register TagPrefix="CSET" TagName="Essay" Src="~/EssayQuestion.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Assignment 4 Test</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <CST465:TrueFalseQuestion ID="uxTFQuestionControl" QuestionText="Aaron is 22 years old." Answer="True" CssClass="" runat="server" />
        <hr />
        <CSET:MultChoice ID="uxMultQuestionControl" QuestionText="What month has the least number of days?" Answer="February" runat="server">
            <Items>
                <asp:ListItem Text="January" Value="1" />
                <asp:ListItem Text="February" Value="2" />
                <asp:ListItem Text="March" Value="3" />
                <asp:ListItem Text="August" Value="4" />
            </Items>
        </CSET:MultChoice>
        <hr />
        <CSET:Essay ID="uxEssayQuestionControl" QuestionText="Explain the difference between a while loop and a do while loop." Answer="One checks before doing the code." runat="server" />
        <hr />
        <CST465:ShortTextQuestion ID="uxShortTextQuestionControl" QuestionText="setw(8) is an example of what?" Answer="A manipulator" runat="server" />

        <br />

        <asp:Button ID="uxSubmit" OnClick="uxSubmit_Click" Text="Submit Test" runat="server" />

        <br />

        <asp:Literal ID="uxSubmitLiteral" Text="No Test Submitted" runat="server"></asp:Literal>
    </div>
    </form>
</body>
</html>
