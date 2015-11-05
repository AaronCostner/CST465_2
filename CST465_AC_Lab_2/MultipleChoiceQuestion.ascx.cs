using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public partial class MultipleChoiceQuestion : System.Web.UI.UserControl, ITestQuestion
    {
        public string Answer
        {
            get
            {
                return uxRadioButtonList.SelectedItem.Value;
            }

            set
            {
                
            }
        }

        public string QuestionText
        {
            get
            {
                return lblRadioButtonList.Text;
            }

            set
            {
                if (lblRadioButtonList != null)
                {
                    lblRadioButtonList.Text = value;
                }
            }
        }

        [PersistenceMode(PersistenceMode.InnerProperty)]
        public List<ListItem> Items
        {
            get;
            set;
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Page_Init(object sender, EventArgs e)
        {
            if (uxRadioButtonList != null)
            {
                foreach (ListItem i in Items)
                {
                    uxRadioButtonList.Items.Add(i);
                }
            }
        }
    }
}