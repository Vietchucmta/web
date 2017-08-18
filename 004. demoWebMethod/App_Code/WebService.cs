using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
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
    public string HelloWorld()
    {
        return "Hello World";
    }
    [WebMethod]
    public int fncGetListSP(int iCURRPAGE, int iPAGESIZE, int iSP_ID, string strSP_TenSanPham, float fSP_DonGia, int iDM_ID, int iNCC_ID)
    {
        try
        {
          
            //Convert DataTable sang JSON để javascript có thể hiểu
            return clsSanPham.fncGetListSP(iCURRPAGE, iPAGESIZE,  iSP_ID,  strSP_TenSanPham, fSP_DonGia, iDM_ID,  iNCC_ID).Rows.Count;
        }
        catch (Exception ex)
        {
            return -1;
        }
    }

}
