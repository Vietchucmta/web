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
public class clsNhaSanXuat
{
    public clsNhaSanXuat()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    static string strClassName = "clsNhaSanXuat";

    /// <summary>
    /// Lấy danh sách nhà sản xuất
    /// </summary>
    /// <returns></returns>
    public static DataTable fncGetListNSX(int iBR_ID, int iNSX_ID)
    {
        try
        {
            //Gọi Procedure đã viết
            DataTable tblResult = oSqlDataHelper.sExecuteDataTable("NHA_SAN_XUAT_FND", new SqlParameter[]{
                    //Truyền tham số
                    new SqlParameter("@P_BR_ID",iBR_ID)
                    ,new SqlParameter("@P_NSX_ID",iNSX_ID)
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
            OsPortal.oFileHelper.WriteLogErr(strClassName, "fncGetListNSX", ex.ToString());
            return null;
        }
    }
}