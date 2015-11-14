using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public partial class MidTermExam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            List<QuestionAnswer> questionList = new List<QuestionAnswer>();

            foreach(Control c in uxQuestions.Controls)
            {
                if(c is ITestQuestion)
                {
                    ITestQuestion question = c as ITestQuestion;
                    QuestionAnswer qa = new QuestionAnswer();
                    qa.QuestionText = question.QuestionText;
                    qa.Answer = question.Answer;
                    questionList.Add(qa);
                }
            }

            Session["QuestionAnswerResults"] = questionList;

            Response.Redirect("~/Results.aspx");
        }
    }
}