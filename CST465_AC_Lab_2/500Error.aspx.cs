﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CST465_AC_Lab_2
{
    public partial class _500Error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            error500Literal.Text = Request.QueryString["source"];
            Response.StatusCode = 500;
        }
    }
}