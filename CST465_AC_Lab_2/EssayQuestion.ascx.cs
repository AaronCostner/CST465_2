using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public partial class EssayQuestion : System.Web.UI.UserControl, ITestQuestion
    {

        public string Answer
        {
            get
            {
                return uxTextBox.Text;
            }
            
            set
            {
                uxTextBox.Text = value;
            }
        }

        public string QuestionText
        {
            get
            {
                return lblTextBox.Text;
            }

            set
            {
                lblTextBox.Text = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
    }
}