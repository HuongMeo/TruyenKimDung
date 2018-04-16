using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using TruyenKimDung.DAL;

namespace TruyenKimDung.User.Chuong
{
    public partial class DSChuongControl : System.Web.UI.UserControl
    {
        ClsTruyen chuong = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int truyenid = int.Parse(Request["id"]);
                LoadData(truyenid);
            }
        }
        void LoadData(int truyenid)
        {
            rptDSChuong.DataSource = chuong.HienThiDSChuong(truyenid);
            rptDSChuong.DataBind();
        }
    }
}