using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace CST465_AC_Lab_2
{
    public partial class UserManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!User.IsInRole("Admins"))
            //{
            //    Roles.AddUserToRole(User.Identity.Name, "Admins");
            //}


        }

        protected void Page_Init()
        {
            LoadRoles();
        }

        protected void btnAddRole_Click(object sender, EventArgs e)
        {
            if(!Roles.RoleExists(txtBox.Text))
            {
                Roles.CreateRole(txtBox.Text);
                LoadRoles();
            }
        }

        protected void LoadRoles()
        {
            lstBox.Items.Clear();
            foreach (string role in Roles.GetAllRoles())
            {
                lstBox.Items.Add(role);
            }

        }
    }
}