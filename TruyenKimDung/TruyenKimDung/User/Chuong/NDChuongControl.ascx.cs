using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TruyenKimDung.DAL;
using System.Data;
using System.Data.SqlClient;

namespace TruyenKimDung.User.Chuong
{
    public partial class NoiDungChuongControl : System.Web.UI.UserControl
    {
        ClsTruyen chuong = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int chuongid = int.Parse(Request["chuongid"]);
                LoadData(chuongid);

            }
        }
        void LoadData(int chuongid)
        {
            DataTable dt = new DataTable();
            dt = chuong.HienThiNDChuong(chuongid);
            if (dt.Rows.Count > 0)
            {
                ltTenChuong.Text = dt.Rows[0]["tenchuong"].ToString();
                ltNoiDung.Text = dt.Rows[0]["noidung"].ToString();
            }
        }
    }
}