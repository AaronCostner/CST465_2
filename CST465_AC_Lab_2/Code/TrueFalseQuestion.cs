using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public class TrueFalseQuestion : CompositeControl, ITestQuestion
    {
        private Label m_Label;
        private RadioButtonList m_radioButtonList;
        private RequiredFieldValidator m_valRadioButtonList;

        public string Answer
        {
            get
            {
                return m_radioButtonList.SelectedItem.Value;
            }

            set
            {
                
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
            m_Label.ID = "lblRadioButtonList";
            m_Label.AssociatedControlID = "uxRadioButtonList";
            Controls.Add(m_Label);

            m_radioButtonList = new RadioButtonList();
            m_radioButtonList.ID = "uxRadioButtonList";
            m_radioButtonList.Items.Add(new ListItem("True"));
            m_radioButtonList.Items.Add(new ListItem("False"));
            Controls.Add(m_radioButtonList);

            m_valRadioButtonList = new RequiredFieldValidator();
            m_valRadioButtonList.ID = "valRadioButtonList";
            m_valRadioButtonList.ControlToValidate = "uxRadioButtonList";
            Controls.Add(m_valRadioButtonList);
        }
    }
}