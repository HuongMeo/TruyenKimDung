using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruyenKimDung.DAL;
using System.Data;
using System.Data.SqlClient;

namespace TruyenKimDung.User.Truyen
{
    public partial class DSTruyenControl : System.Web.UI.UserControl
    {
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }

        }
        void LoadData()
        {
            rptDSTruyen.DataSource = truyen.HienThiDSTruyen();
            rptDSTruyen.DataBind();
        }
    }
}