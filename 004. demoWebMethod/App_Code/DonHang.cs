using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DonHang
/// </summary>
public class DonHang
{
    public DonHang()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    static string strClassName = "clsDonHang";
    public static DataTable fncInsertDonHang(string strMOD, int iDH_ID, int iKH_ID, string strDH_TenKhachHang, string strDH_DiaChiNhan, string strDH_SoDienThoai, string strDH_TrangThai, DateTime dtDH_NgayGiaoHang, float fDH_TongTien)
    {
        try
        {
            DataTable dt = OsPortal.oSqlDataHelper.sExecuteDataTable("DonHang_ACT", new SqlParameter[]
            {
                new SqlParameter("@P_MOD",strMOD)
                ,new SqlParameter("@P_DH_ID",iDH_ID)
                ,new SqlParameter("@P_KH_ID",iKH_ID)
                ,new SqlParameter("@P_DH_TENKHACHHANG",strDH_TenKhachHang)
                ,new SqlParameter("@P_DH_DIACHINHAN",strDH_DiaChiNhan)
                ,new SqlParameter("@P_DH_SODIENTHOAI",strDH_SoDienThoai)
                ,new SqlParameter("@P_DH_TRANGTHAI",strDH_TrangThai)
                ,new SqlParameter("@P_DH_NGAYGIAOHANG",dtDH_NgayGiaoHang)
                ,new SqlParameter("@P_DH_TONGTIEN",fDH_TongTien)
            });
            if (dt == null) return null;
            if (dt.Rows.Count <= 0) return null;
            return dt;
        }
        catch (Exception ex)
        {
            OsPortal.oFileHelper.WriteLogErr(strClassName, "fncInsertDonHang", ex.ToString());
            return new DataTable();
        }
    }
}

//    public static DataTable fncGetListDH(string )
//}