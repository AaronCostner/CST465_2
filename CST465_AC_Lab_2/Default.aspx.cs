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
            uxlsPostBack.Text = "Page is loaded.";
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
                + ", Biography: " + uxBiography.Text + ")<br />";
        }
    }
}