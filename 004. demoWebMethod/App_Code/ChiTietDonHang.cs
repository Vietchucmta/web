using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for ChiTietDonHang
/// </summary>
public class ChiTietDonHang
{
    public ChiTietDonHang()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    static string strClassName = "clsChiTietDonHang";
    public static DataTable fncInsertChiTietDonHang(string strMOD, int iCTDH_ID, int iSP_ID, int iCTDH_SoLuong)
    {
        try
        {
            DataTable x = OsPortal.oSqlDataHelper.sExecuteDataTable("ChiTietDH_ACT", new SqlParameter[]
            {
                new SqlParameter("@P_MOD",strMOD)
                ,new SqlParameter("@P_CTDH_ID",iCTDH_ID)
                ,new SqlParameter("@P_SP_ID",iSP_ID)
                ,new SqlParameter("@P_CTDH_SOLUONG",iCTDH_SoLuong)
            });
            if (x == null) return null;
            if (x.Rows.Count <= 0) return null;
            return x;
        }
        catch (Exception ex)
        {
            OsPortal.oFileHelper.WriteLogErr(strClassName, "fncInsertChiTietDonHang", ex.ToString());
            return new DataTable();
        }
    }
}