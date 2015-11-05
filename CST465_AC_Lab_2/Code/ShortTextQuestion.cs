using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public class ShortTextQuestion : CompositeControl, ITestQuestion
    {
        private Label m_Label;
        private TextBox m_TextBox;
        private RequiredFieldValidator m_valTextBox;

        public string Answer
        {
            get
            {
                return m_TextBox.Text;
            }

            set
            {
                if (m_TextBox != null)
                {
                    m_TextBox.Text = value;
                }
            }
        }

        public string QuestionText
        {
            get
            {
                return m_Label.Text;
            }

            set
            {
                if (m_Label != null)
                {
                    m_Label.Text = value;
                }
            }
        }

        protected override void CreateChildControls()
        {
            base.CreateChildControls();
            m_Label = new Label();
            m_Label.ID = "lblTextBox";
            m_Label.AssociatedControlID = "uxTextBox";
            Controls.Add(m_Label);

            m_TextBox = new TextBox();
            m_TextBox.ID = "uxTextBox";
            Controls.Add(m_TextBox);

            m_valTextBox = new RequiredFieldValidator();
            m_valTextBox.ID = "valTextBox";
            m_valTextBox.ControlToValidate = "uxTextBox";
            Controls.Add(m_valTextBox);
        }
    }
}