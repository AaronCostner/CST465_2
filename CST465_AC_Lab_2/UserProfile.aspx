<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="CST465_AC_Lab_2.UserProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:MultiView ID="uxMultiView" ActiveViewIndex="0" runat="server">
                <asp:View ID="uxView1" runat="server">
                    View 1

                    <br />

                    <asp:Label AssociatedControlID="v1FirstName" runat="server">First Name</asp:Label>
                    <asp:TextBox ID="v1FirstName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valFirstName" Text="*" ControlToValidate="v1FirstName"
                        ErrorMessage="First name is a required field." ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                    <br />

                    <asp:Label AssociatedControlID="v1LastName" runat="server">Last Name</asp:Label>
                    <asp:TextBox ID="v1LastName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valLastName" Text="*" ControlToValidate="v1LastName"
                        ErrorMessage="Last name is a required field." ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                    <br />

                    <asp:Label AssociatedControlID="v1Age" runat="server">Age</asp:Label>
                    <asp:TextBox ID="v1Age" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="val2Age" ControlToValidate="v1Age" Text="*" ErrorMessage="Age is a required field."
                        ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="valAge" ControlToValidate="v1Age" Text="*" Type="Integer" MinimumValue="0" MaximumValue="200"
                        ErrorMessage="Age must be between 0 and 200." ForeColor="Red" runat="server"></asp:RangeValidator>

                    <br />

                    <asp:Label AssociatedControlID="v1PhoneNumber" runat="server">Phone Number</asp:Label>
                    <asp:TextBox ID="v1PhoneNumber" TextMode="Number" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valPhone" Text="*" ControlToValidate="v1PhoneNumber" ErrorMessage="Phone Number is a required field."
                        ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                    <br />

                    <asp:Label AssociatedControlID="v1Email" runat="server">Email Address</asp:Label>
                    <asp:TextBox ID="v1Email" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="valEmail" ControlToValidate="v1Email"
                        ErrorMessage="Email Address is a required field." Text="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>

                    <br />

                    <asp:Label AssociatedControlID="v1EmailCompare" runat="server">Reenter Email Address</asp:Label>
                    <asp:TextBox ID="v1EmailCompare" runat="server"></asp:TextBox>

                    <asp:CompareValidator ID="valCompareEmails" ControlToValidate="v1Email" ControlToCompare="v1EmailCompare" Type="String" ErrorMessage="The emails do not match."
                        ForeColor="Red" Text="*" runat="server"></asp:CompareValidator>

                    <br />

                    <asp:Label AssociatedControlID="v1StreetAddress" runat="server">Street Address</asp:Label>
                    <asp:TextBox ID="v1StreetAddress" runat="server"></asp:TextBox>

                    <br />

                    <asp:Label AssociatedControlID="v1City" runat="server">City</asp:Label>
                    <asp:TextBox ID="v1City" runat="server"></asp:TextBox>

                    <br />

                    <asp:Label AssociatedControlID="v1State" runat="server">State</asp:Label>
                    <asp:DropDownList ID="v1State" runat="server">
                        <asp:ListItem>Oregon</asp:ListItem>
                        <asp:ListItem>Washington</asp:ListItem>
                        <asp:ListItem>California</asp:ListItem>
                    </asp:DropDownList>

                    <br />

                    <asp:Label AssociatedControlID="v1ZipCode" runat="server">Zip Code</asp:Label>
                    <asp:TextBox ID="v1ZipCode" runat="server"></asp:TextBox>

                    <asp:RegularExpressionValidator ID="valZipCode" runat="server" Text="*" ErrorMessage="Please enter a zip code like #####-#### or #####"
                        ControlToValidate="v1ZipCode" ValidationExpression="\d{5}(\-\d{4})?" ForeColor="Red"></asp:RegularExpressionValidator>

                    <br />

                    <asp:Label AssociatedControlID="v1ProfileImage" runat="server">Profile Image</asp:Label>
                    <asp:FileUpload ID="v1ProfileImage" runat="server" />
                    <asp:CustomValidator ID="valProfileImage" ControlToValidate="v1ProfileImage"
                        ClientValidationFunction="validateFile" OnServerValidate="valProfileImage_ServerValidate" Text="*" ErrorMessage="Invalid File" runat="server"></asp:CustomValidator>

                    <br />

                    <asp:Button ID="v1SaveButton" Text="Save Profile" runat="server" OnClick="v1SaveButton_Click" />

                    <asp:ValidationSummary ID="valSummary" ShowMessageBox="true" ShowSummary="false" runat="server" />
                </asp:View>
                <asp:View ID="uxView2" runat="server">
                    View 2

                    <br />
                    <strong>
                        <asp:Label ID="v2FirstName" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2Lastname" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2Age" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2PhoneNumber" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2Email" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2StreetAddress" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2City" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2State" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                        <asp:Label ID="v2ZipCode" runat="server" ReadOnly="true"></asp:Label>
                        <br />
                    </strong>

                    <asp:Image ID="uxImage" runat="server" />
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
