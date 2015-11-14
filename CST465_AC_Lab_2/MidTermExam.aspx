<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/App_Master/BaseTemplate.Master" CodeBehind="MidTermExam.aspx.cs" Inherits="CST465_AC_Lab_2.MidTermExam" %>
<%@ Register TagPrefix="CST465" Assembly="CST465_AC_Lab_2" Namespace="CST465_AC_Lab_2" %>
<%@ Register TagPrefix="CSET" TagName="MultChoice" Src="~/MultipleChoiceQuestion.ascx" %>
<%@ Register TagPrefix="CSET" TagName="Essay" Src="~/EssayQuestion.ascx" %>


<asp:Content ID="ContentBody" ContentPlaceHolderID="BodyContentPlaceHolder" runat="server">

    <asp:PlaceHolder ID="uxQuestions" runat="server">
        <CST465:TrueFalseQuestion QuestionText="HTTP is a stateless protocol." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="SessionState can be transferred between pages." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="Sanitizing database inputs is only important for sites handling sensitive information" runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="ViewState can be transferred between pages." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="Cookies can be transferred between pages." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="It is a good practice to use inline CSS styles." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="All controls in ASP.NET support DataBinding." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="Browsers must support ASP.NET in order to display pages created with it." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="When a MasterPage is used, a page wraps its own content with the MasterPage's content." runat="server" />
        <br />
        <br />
        <hr />
        <CST465:TrueFalseQuestion QuestionText="&ltdeny&gt authorization rules in the web.config are processed first regardless of the way the rules are ordered." runat="server" />
        <br />
        <br />
        <hr />

        <CSET:Essay QuestionText="Place the following events in order of when they occur in the page lifecycle: Load, Init, Request Arrives, PreRender, Load ViewState, Input Control Event Handling" Answer="" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <hr />
        <CSET:Essay QuestionText="What is the purpose of the doctype declaration at the top of a web page?" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <hr />
        <CSET:Essay QuestionText="What is the order of precedence for the same style defined in the following ways? Style tag in document head, External Style Sheet referenced by the link tag in document head" Answer="" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <hr />
        <CSET:Essay QuestionText="What is the order of precedence for CSS for referencing elements in the following ways: By Element Name, By ID, By CSS Class, Inline using the style=&quot&quot attribute." Answer="" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <hr />
        <CSET:Essay QuestionText="Explain why the alt attribute of the img tag is important." Answer="" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <hr />
        <CSET:Essay QuestionText="What is the purpose of name mangling?" Answer="" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <hr />
        <CSET:Essay QuestionText="Explain the difference between redirects that use a 301 HTTP status code and ones that use a 302 HTTP status code." Answer="" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <hr />

        <CSET:MultChoice QuestionText="HTML stands for:" runat="server">
            <Items>
                <asp:ListItem Text="HoTMaiL" Value="1"></asp:ListItem>
                <asp:ListItem Text="Highly Transferrable Modeling Language" Value="2"></asp:ListItem>
                <asp:ListItem Text="HyperText Markup Language" Value="3"></asp:ListItem>
                <asp:ListItem Text="High Traffic Masking Language" Value="4"></asp:ListItem>
            </Items>
        </CSET:MultChoice>
        <br />
        <br />
        <hr />
        <CSET:MultChoice QuestionText="All controls that ask for user input should have an associated" runat="server">
            <Items>
                <asp:ListItem Text="Label" Value="1"></asp:ListItem>
                <asp:ListItem Text="Validator" Value="2"></asp:ListItem>
                <asp:ListItem Text="Event Handler" Value="3"></asp:ListItem>
                <asp:ListItem Text="Ferret" Value="4"></asp:ListItem>
            </Items>
        </CSET:MultChoice>
        <br />
        <br />
        <hr />
        <CSET:MultChoice QuestionText="The living version of a page within the web browser is called the" runat="server">
            <Items>
                <asp:ListItem Text="Output Rendering Model" Value="1"></asp:ListItem>
                <asp:ListItem Text="Document Object Model" Value="2"></asp:ListItem>
                <asp:ListItem Text="Box Model" Value="3"></asp:ListItem>
                <asp:ListItem Text="Underwear Model" Value="4"></asp:ListItem>
            </Items>
        </CSET:MultChoice>
        <br />
        <br />
        <hr />
        <CSET:MultChoice QuestionText="Which of the following elements is most appropriate for presenting the user with a list of items in no particular order?" runat="server">
            <Items>
                <asp:ListItem Text="ol" Value="1"></asp:ListItem>
                <asp:ListItem Text="ul" Value="2"></asp:ListItem>
                <asp:ListItem Text="dl" Value="3"></asp:ListItem>
                <asp:ListItem Text="dropdownliste" Value="4"></asp:ListItem>
            </Items>
        </CSET:MultChoice>
        <br />
        <br />
        <hr />
        <CSET:MultChoice QuestionText="What is the difference between the ViewStateMode and EnableViewState properties in the <%@ Page %> declaration?" runat="server">
            <Items>
                <asp:ListItem Text="ViewStateMode was introduced in ASP.NET 4 to allow more than true/false values, but currently there is no distinguishable difference in functionality." Value="1"></asp:ListItem>
                <asp:ListItem Text="When ViewState is disabled via ViewStateMode, it can't be enabled at the control level." Value="2"></asp:ListItem>
                <asp:ListItem Text="When ViewState is disabled via EnableViewState, it can't be enabled at the control level." Value="3"></asp:ListItem>
                <asp:ListItem Text="When ViewState is enabled via ViewStateMode, it can't be disabled at the control level." Value="4"></asp:ListItem>
                <asp:ListItem Text="When ViewState is enabled via EnableViewState, it can't be disabled at the control level." Value="5"></asp:ListItem>
            </Items>
        </CSET:MultChoice>
        <br />
        <br />
        <hr />
        
        <CST465:ShortTextQuestion QuestionText="The line of text that tells a SqlDataSource how to connect to the database is called a _____" runat="server" />
        <br />
        <br />
        <hr />
        <CST465:ShortTextQuestion QuestionText="When a WebForms page performs a POST operation to itself it is referred to as a _____" runat="server" />
        <br />
        <br />
        <hr />
        <CST465:ShortTextQuestion QuestionText="The term for loading  controls data from a data source is ______" runat="server" />
        <br />
        <br />
        <hr />
        <CST465:ShortTextQuestion QuestionText="An example of a block element is _____" runat="server" />
        <br />
        <br />
        <hr />
        <CST465:ShortTextQuestion QuestionText="An example of an inline element is _____" runat="server" />
        <br />
        <br />
        <hr />
        <CST465:ShortTextQuestion QuestionText="What is the name of the file that stores configuration information for a website? _____" runat="server" />
        <br />
        <br />
        <hr />
        <CST465:ShortTextQuestion QuestionText="A div with the following CSS will have what computed height and width? { margin: 0 0 5px; padding: 5px 10px; height: 100px; width: 50px; border-left: solid 3px #0c0; } _________" runat="server" />
        <br />
        <br />
        <hr />
    </asp:PlaceHolder>

    <asp:Button ID="btnSubmit" OnClick="btnSubmit_Click" Text="Submit Exam" runat="server"/>
</asp:Content>