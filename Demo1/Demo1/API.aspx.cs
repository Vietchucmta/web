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
    public static string fncGetListNSX(int iNSX_ID)
    {
        try
        {
            int iBR_ID = 1;
            //Convert DataTable sang JSON để javascript có thể hiểu
            return OsPortal.oStringHelper.DataTableToJSONWithStringBuilder(clsNhaSanXuat.fncGetListNSX(iBR_ID, iNSX_ID));
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