using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using OsPortal;
using System.Data.SqlClient;
/// <summary>
/// Summary description for clsdanhmuc
/// </summary>
public class clsDanhMuc
{
    public clsDanhMuc()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    static string strClassName = "clsDanhMuc";
    /// <summary>
    /// lay danh sach danh muc
    /// </summary>
    
    public static DataTable fncGetListDM(int iDM_ID, int iDM_DanhMucCha_ID)
    {
        try
        {
            DataTable tblResult = oSqlDataHelper.sExecuteDataTable("DANHMUC_FND", new SqlParameter[] {
                new SqlParameter("@P_DM_ID",iDM_ID)
                , new SqlParameter("@P_DM_DANHMUCCHA_ID",iDM_DanhMucCha_ID)
            });
            if (tblResult == null) return null;
            if (tblResult.Rows.Count <= 0) return null;

            return tblResult;
        }
        catch(Exception ex)
        {
            OsPortal.oFileHelper.WriteLogErr(strClassName, "fncGetListDM", ex.ToString());
            return new DataTable();
        }
    }

    //  Tạo dữ liệu ddl cho danh mục
    //Tạo dữ liệu DDL cho danh mục
    public static string fncGetListDM_DropDownList(int iDM_DanhMucCha_ID)
    {
        var html = "";
        html += "<option value='" + "0" + "'>" + "Chon danh muc cha" + "</option>";
        try
        {
            DataTable dtSource = oSqlDataHelper.sExecuteDataTable("DanhMuc_FND", new SqlParameter[]
           //truyền tham số
           {
                new SqlParameter("@P_DM_DanhMucCha_ID", iDM_DanhMucCha_ID)
               ,new SqlParameter("@P_DM_ID", 0)
           });
            for (int i = 0; i < dtSource.Rows.Count; i++)
            {
                int iDM_ID = Convert.ToInt32(dtSource.Rows[i]["DM_ID"].ToString());
                string strDM_TenDanhMuc = dtSource.Rows[i]["DM_TenDanhMuc"].ToString();

                string strValue = iDM_ID.ToString();

                html += "<option value='" + strValue + "'>" + strDM_TenDanhMuc + "</option>";
            }
        }
        catch (Exception ex)
        {
            OsPortal.oFileHelper.WriteLogErr(strClassName, "fncExportQuanHuyen_DropDownList", ex.ToString());
        }
        return html;
    }
}



