using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            uxEventOutput.Text += "Page_Load<br />";
            if (Page.IsPostBack)
            {
                uxlsPostBack.Text = "Page is posted back<br />";
            }
            else
            {
                uxlsPostBack.Text = "Page is not posted back<br />";
            }
        }

        protected void Page_Init(object sender, EventArgs e)
        {
            uxEventOutput.Text = uxEventOutput.Text + "Page_Init<br />";
        }

        protected void Page_PreRender(object sender, EventArgs e)
        {
            uxEventOutput.Text += "Page_PreRender<br />";
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            uxEventOutput.Text = uxEventOutput.Text + "Submitting: ("
                + "Name: " + uxName.Text + ", UserType: " + uxUserType.Text
                + ", Hobby: " + uxHobby.Text + ", Band: " + uxBand.Text
                + ", Biography: " + uxBiography.Text + ", Courses: ";

            uxEventOutput.Text += uxR1C1.Text + uxR1C2.Text + uxR1C3.Text + ","
                + uxR2C1.Text + uxR2C2.Text + uxR2C3.Text + ","
                + uxR3C1.Text + uxR3C2.Text + uxR3C3.Text + ","
                + uxR4C1.Text + uxR4C2.Text + uxR4C3.Text + ","
                + uxR5C1.Text + uxR5C2.Text + uxR5C3.Text + ")<br />";
        }
    }
}