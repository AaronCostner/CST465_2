<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CST465_AC_Lab_2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Aaron Costner</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label AssociatedControlID="uxName" runat="server">Name</asp:Label>
            <asp:TextBox ID="uxName" TextMode="MultiLine" BackColor="YellowGreen" ReadOnly="true" runat="server">Aaron Costner</asp:TextBox>

            <br />

            <asp:Label AssociatedControlID="uxUserType" runat="server">User Type</asp:Label>
            <asp:DropDownList ID="uxUserType" AutoPostBack="true" runat="server">
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Faculty/Staff</asp:ListItem>
            </asp:DropDownList>

            <br />

            <asp:Label AssociatedControlID="uxHobby" runat="server">Hobby</asp:Label>
            <asp:TextBox ID="uxHobby" TextMode="MultiLine" ReadOnly="true" Height="200px" Width="200px" runat="server">My hobbies include playing video games such as Dota 2, Metal Gear Solid, and Super Smash Brothers.  I also enjoy collecting rocks.</asp:TextBox>

            <br />

            <asp:Label AssociatedControlID="uxBand" runat="server">Band</asp:Label>
            <asp:TextBox ID="uxBand" TextMode="MultiLine" ReadOnly="true" Height="200px" Width="200 px" runat="server">I like to listen to bands like Foreigner, Journey, Kenny Loggins, and many other 80s bands.</asp:TextBox>

            <br />

            <asp:Label AssociatedControlID="uxBiography" runat="server">Biography</asp:Label>
            <asp:TextBox ID="uxBiography" Text="My biography" ReadOnly="true" runat="server" />

            <br />

            <asp:Label AssociatedControlID="uxCourse" runat="server">Course</asp:Label>
            <asp:Table ID="uxCourse" BorderColor="Violet" BorderStyle="Double" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell ID="uxCoursePrefix" runat="server">Course Prefix</asp:TableHeaderCell>
                    <asp:TableHeaderCell ID="uxCourseNumber" runat="server">Course Number</asp:TableHeaderCell>
                    <asp:TableHeaderCell ID="uxCourseDescription" runat="server">Course Description</asp:TableHeaderCell>
                </asp:TableHeaderRow>
                <asp:TableRow>
                    <asp:TableCell>CST</asp:TableCell>
                    <asp:TableCell>465</asp:TableCell>
                    <asp:TableCell>Web Development with ASP.NET</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>CST</asp:TableCell>
                    <asp:TableCell>412</asp:TableCell>
                    <asp:TableCell>Senior Project</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>CST</asp:TableCell>
                    <asp:TableCell>415</asp:TableCell>
                    <asp:TableCell>Networking</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>MATH</asp:TableCell>
                    <asp:TableCell>421</asp:TableCell>
                    <asp:TableCell>Applied Partial Differential Equations</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>BUS</asp:TableCell>
                    <asp:TableCell>304</asp:TableCell>
                    <asp:TableCell>Engineering Management</asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br />

            <asp:Label AssociatedControlID="uxSubmit" runat="server">Submit</asp:Label>
            <asp:Button ID="uxSubmit" Text="Save Profile" OnClick="uxSubmit_Click" runat="server" />

            <br />

            <asp:Literal ID="uxlsPostBack" runat="server"></asp:Literal>
            <asp:Literal ID="uxFormOutput" runat="server"></asp:Literal>
            <asp:Literal ID="uxEventOutput" runat="server"></asp:Literal>


        </div>
    </form>
</body>
</html>
