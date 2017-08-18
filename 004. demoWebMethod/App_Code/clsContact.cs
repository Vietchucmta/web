using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using OsPortal;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Contact
/// </summary>
public class clsContact
{
    public clsContact()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    static string strClassName = "clsContact";

    ///<summary>
    ///
    /// </summary>
    /// 
    public static DataTable fncInsertContact(string strMOD,int iLH_ID, string strLH_TenKhachHang, string strLH_SDTKhachHang, string strLH_EmailKhachHang, string strLH_Mota)
    {
        try
        {
            DataTable tbl = oSqlDataHelper.sExecuteDataTable("LienHe_ACT", new SqlParameter[]
            {
                new SqlParameter("@P_MOD",strMOD)
                ,new SqlParameter("@P_LH_ID",iLH_ID)
                ,new SqlParameter("@P_LH_TENKHACHHANG",strLH_TenKhachHang)
                ,new SqlParameter("@P_LH_SDTKHACHHANG",strLH_SDTKhachHang)
                ,new SqlParameter("@P_LH_EMAILKHACHHANG",strLH_EmailKhachHang)
                ,new SqlParameter("@P_LH_MOTA",strLH_Mota)
            });
            if (tbl == null) return null;
            if (tbl.Rows.Count <= 0) return null;
            return tbl;
        }
        catch(Exception ex)
        {
            OsPortal.oFileHelper.WriteLogErr(strClassName, "fncInsertContact", ex.ToString());
            return new DataTable();
        }
    }
}