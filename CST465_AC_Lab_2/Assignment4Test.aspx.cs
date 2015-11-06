using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public partial class Assignment4Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
     
        }

        protected void uxSubmit_Click(object sender, EventArgs e)
        {
            string string_literal = "";

            Trace.Write("Your message to be written to the trace log.");
            Trace.Write("Your message to be written to the trace log.");

            string_literal += uxTFQuestionControl.QuestionText + "/" + uxTFQuestionControl.Answer + "//";
            string_literal += uxMultQuestionControl.QuestionText + "/" + uxMultQuestionControl.Answer + "//";
            string_literal += uxEssayQuestionControl.QuestionText + "/" + uxEssayQuestionControl.Answer + "//";
            string_literal += uxShortTextQuestionControl.QuestionText + "/" + uxShortTextQuestionControl.Answer + "//";

            uxSubmitLiteral.Text = string_literal;
        }
    }
}