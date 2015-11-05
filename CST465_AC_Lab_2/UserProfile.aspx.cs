using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data.SqlClient;

namespace CST465_AC_Lab_2
{

    public partial class UserProfile : System.Web.UI.Page
    {

        public UserProfileBO userBusinessObject;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session != null && Session["ProfileData"] != null)
            {

                uxMultiView.ActiveViewIndex = 1;

                userBusinessObject = Session["ProfileData"] as UserProfileBO;

                v2FirstName.Text = userBusinessObject.firstName;
                v2Lastname.Text = userBusinessObject.lastName;
                v2Age.Text = userBusinessObject.age;
                v2PhoneNumber.Text = userBusinessObject.phoneNumber;
                v2Email.Text = userBusinessObject.emailAddress;
                v2StreetAddress.Text = userBusinessObject.streetAddress;
                v2City.Text = userBusinessObject.city;
                v2State.Text = userBusinessObject.state;
                v2ZipCode.Text = userBusinessObject.zipCode;
                string base64StringBO = "";
                using (MemoryStream m = new MemoryStream(userBusinessObject.profileImage))
                {
                    byte[] imageBytes = m.ToArray();
                    // Convert byte[] to Base64 String                    
                    base64StringBO = Convert.ToBase64String(imageBytes);
                }
                if (!string.IsNullOrEmpty(base64StringBO))
                {
                    base64StringBO = "data:image/jpeg;base64," + base64StringBO;
                }

                uxImage.ImageUrl = base64StringBO;
            }
        }

        protected void v1SaveButton_Click(object sender, EventArgs e)
        {

            if (Page.IsValid)
            {
                userBusinessObject = new UserProfileBO();

                userBusinessObject.firstName = v1FirstName.Text;
                userBusinessObject.lastName = v1LastName.Text;
                userBusinessObject.age = v1Age.Text;
                userBusinessObject.phoneNumber = v1PhoneNumber.Text;
                userBusinessObject.emailAddress = v1Email.Text;
                userBusinessObject.reenterEmailAddress = v1EmailCompare.Text;
                userBusinessObject.streetAddress = v1StreetAddress.Text;
                userBusinessObject.city = v1City.Text;
                userBusinessObject.state = v1State.Text;
                userBusinessObject.zipCode = v1ZipCode.Text;

                if (v1ProfileImage.HasFile)
                {
                    byte[] buffer = new byte[v1ProfileImage.PostedFile.ContentLength];
                    v1ProfileImage.PostedFile.InputStream.Read(buffer, 0, v1ProfileImage.PostedFile.ContentLength);
                    userBusinessObject.profileImage = buffer;
                }

                Session["ProfileData"] = userBusinessObject;

                Response.Redirect("UserProfile.aspx");

            }
        }

        protected void valProfileImage_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String path = Path.GetExtension(args.Value);

            if ( path != ".jpg" && path != ".gif" && path != ".png")
            {
                args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}