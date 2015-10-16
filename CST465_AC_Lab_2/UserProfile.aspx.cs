using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace CST465_AC_Lab_2
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void v1SaveButton_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                uxMultiView.ActiveViewIndex = 1;
                v2FirstName.Text = "First Name: " + v1FirstName.Text;
                v2Lastname.Text = "Last Name: " + v1LastName.Text;
                v2Age.Text = "Age: " + v1Age.Text;
                v2PhoneNumber.Text = "Phone Number: " + v1PhoneNumber.Text;
                v2Email.Text = "Email Address: " + v1Email.Text;
                v2StreetAddress.Text = "Street Address: " + v1StreetAddress.Text;
                v2City.Text = "City: " + v1City.Text;
                v2State.Text = "State: " + v1State.Text;
                v2ZipCode.Text = "Zip Code: " + v1ZipCode.Text;

                if (v1ProfileImage.HasFile)
                {
                    string base64String = null;
                    byte[] buffer = new byte[v1ProfileImage.PostedFile.ContentLength];
                    v1ProfileImage.PostedFile.InputStream.Read(buffer, 0, v1ProfileImage.PostedFile.ContentLength);
                    using (MemoryStream m = new MemoryStream(buffer))
                    {
                        byte[] imageBytes = m.ToArray();
                        // Convert byte[] to Base64 String                    
                        base64String = Convert.ToBase64String(imageBytes);
                    }
                    if (!string.IsNullOrEmpty(base64String))
                    {
                        uxImage.ImageUrl = "data:image/jpeg;base64," + base64String;
                    }
                }
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