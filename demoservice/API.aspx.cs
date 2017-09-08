using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;

public partial class API : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    [WebMethod]
    public static string fncGetListSP(int P_CURRPAGE, int P_PAGESIZE, string P_SP_ID, string P_SP_TEN, float P_SP_DONGIA, int P_SP_SOLUONG, string P_DM_ID, string P_NCC_ID)
    {
        try
        {
            P_CURRPAGE = 1;
            //Convert DataTable sang JSON để javascript có thể hiểu
            return OsPortal.oStringHelper.DataTableToJSONWithStringBuilder(clsSanPham.fncGetListSP(P_CURRPAGE, P_PAGESIZE, P_SP_ID, P_SP_TEN, P_SP_DONGIA, P_SP_SOLUONG, P_DM_ID, P_NCC_ID));
        }
        catch (Exception ex)
        {
            return "Lỗi! " + ex.ToString();
        }
    }

    [WebMethod]
    public static string Hello()
    {
        try
        {
            return "Hello";
        }
        catch (Exception ex)
        {
            return "Lỗi! " + ex.ToString();
        }
    }
}