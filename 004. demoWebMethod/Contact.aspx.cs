using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //  lien he
    [WebMethod]
    public static string fncInsertContact(string strMOD, int iLH_ID, string strLH_TenKhachHang, string strLH_SDTKhachHang, string strLH_EmailKhachHang, string strLH_Mota)
    {
        try
        {

            return OsPortal.oStringHelper.DataTableToJSON(clsContact.fncInsertContact(strMOD, iLH_ID, strLH_TenKhachHang, strLH_SDTKhachHang, strLH_EmailKhachHang, strLH_Mota));
        }
        catch (Exception ex)
        {
            return "Lỗi" + ex.ToString();
        }
    }
}