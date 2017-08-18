using OsPortal;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for clsNhaSanXuat
/// </summary>
public class clsSanPham
{
    public clsSanPham()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    static string strClassName = "clsSanPham";
    
    /// <summary>
    /// Lấy danh sách nhà sản xuất
    /// </summary>
    /// <returns></returns>
    public static DataTable fncGetListSP(int P_CURRPAGE, int P_PAGESIZE,string P_SP_ID,string P_SP_TEN, float P_SP_DONGIA, int P_SP_SOLUONG,string P_DM_ID,string P_NCC_ID)
    {
        try
        {
            //Gọi Procedure đã viết
            DataTable tblResult = oSqlDataHelper.sExecuteDataTable("SANPHAM_FND", new SqlParameter[]{
                    //Truyền tham số
                    new SqlParameter("@P_CURRPAGE",P_CURRPAGE)
                    ,new SqlParameter("@P_PAGESIZE",P_PAGESIZE)
                    ,new SqlParameter("@P_SP_ID",P_SP_ID)
                    ,new SqlParameter("@P_SP_TEN",P_SP_TEN)
                    ,new SqlParameter("@P_SP_DONGIA",P_SP_DONGIA)
                    ,new SqlParameter("@P_SP_SOLUONG",P_SP_SOLUONG)
                    ,new SqlParameter("@P_DM_ID",P_DM_ID)
                    ,new SqlParameter("@P_NCC_ID",P_NCC_ID)
            });

            //Kiểm tra các trường hợp null
            if (tblResult == null) return null;
            if (tblResult.Rows.Count <= 0) return null;

            //Trả cái bảng về thôi
            return tblResult;
        }
        catch (Exception ex)
        {
            //Ghi Log nếu lỗi
            OsPortal.oFileHelper.WriteLogErr(strClassName, "fncGetListSP", ex.ToString());
            return null;
        }
        
    }
}