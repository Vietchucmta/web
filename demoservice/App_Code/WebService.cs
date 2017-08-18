using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuro.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.None)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class WebService : System.Web.Services.WebService
{

    public WebService()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    public string fncGetListSP(int iSP_ID, string iSP_TenSanPham, float iSP_DonGia, string iDM_TenDanhMuc, string iNCC_TenNhaCungCap)
    {
        try
        {
            int iCURRPAGE = 1;
            int iPAGESIZE = 10;
            //  //Convert DataTable sang JSON để javascript có thể hiểu
            return OsPortal.oStringHelper.DataTableToJSONWithStringBuilder(clsSanPham.fncGetListSP(iCURRPAGE, iPAGESIZE, iSP_ID, iSP_TenSanPham, iSP_DonGia, iDM_TenDanhMuc, iNCC_TenNhaCungCap));
        }
        catch(Exception ex)
        {
            return "Lỗi" + ex.ToString();
        }
    }

}
