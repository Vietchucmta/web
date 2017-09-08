using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Detail : System.Web.UI.Page
{
    protected DataTable dt;
    protected int iSP_ID;
    protected void Page_Load(object sender, EventArgs e)
    {
        iSP_ID = OsPortal.oStringHelper.fncCnvNullToInt(Request.QueryString["id"].ToString());
        if (!IsPostBack)
        {
            xGetData(iSP_ID);
        }

    }

    public DataTable xGetData(int iSP_ID)
    {
        try
        {
            dt = clsSanPham.fncGetListSP(1, 100, iSP_ID, "", 0, 0, 0);
            return dt;
        }
        catch (Exception ex)
        {
            return new DataTable();
        }
    }
}