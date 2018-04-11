using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TruyenKimDung.Admin
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = Request["f"];
            switch (s)
            {
                case "truyen":
                    plLoad.Controls.Add(LoadControl("Truyen/TruyenControl.ascx"));
                    break;
            }
        }
    }
}