using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace TruyenKimDung.DAL
{
    public class ClsTruyen
    {
        public DataTable HienThiDSTruyen()
        {
            SqlCommand sqlCom = new SqlCommand("Select * from Truyen");
            sqlCom.CommandType = CommandType.Text;
            return SQLDB.SQLDB.GetData(sqlCom);
        }
        public DataTable HienThiDSChuong(int truyenid)
        {
            SqlCommand sqlCom = new SqlCommand("Select * from chuong where chuong.truyenid = @truyenid");
            sqlCom.Parameters.AddWithValue("@truyenid", truyenid);
            sqlCom.CommandType = CommandType.Text;
            return SQLDB.SQLDB.GetData(sqlCom);

        }
        public DataTable HienThiNDChuong(int chuongid)
        {
            SqlCommand sqlCom = new SqlCommand("Select * from chuong where chuongid=@chuongid");
            sqlCom.Parameters.AddWithValue("@chuongid", chuongid);
            sqlCom.CommandType = CommandType.Text;
            return SQLDB.SQLDB.GetData(sqlCom);

        }
    }
}
