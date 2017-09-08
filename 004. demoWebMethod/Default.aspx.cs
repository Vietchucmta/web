using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    //Mịe quên mất webmethod phải static :(
    [WebMethod]
    public static string fncGetListSP(int iCURRPAGE,int iPAGESIZE, int iSP_ID, string strSP_TenSanPham, float fSP_DonGia,  int iDM_ID, int iNCC_ID)
    {
        try
        {
            //Convert DataTable sang JSON để javascript có thể hiểu
            return OsPortal.oStringHelper.DataTableToJSON(clsSanPham.fncGetListSP(iCURRPAGE, iPAGESIZE, iSP_ID, strSP_TenSanPham, fSP_DonGia,iDM_ID, iNCC_ID));
        }
        catch (Exception ex)
        {
            return "Lỗi" + ex.ToString();
        }
    }
    // danh muc
    [WebMethod]
    public static string fncGetListDM(int iDM_ID,int iDM_DanhMucCha_ID)
    {
        try
        {
            //strDM_DanhMucCha_ID = "0";
            return OsPortal.oStringHelper.DataTableToJSON(clsDanhMuc.fncGetListDM(iDM_ID, iDM_DanhMucCha_ID));
        }
        catch(Exception ex)
        {
            return "Lỗi" + ex.ToString();
        }
    }

    //danh muc ddl
    [WebMethod]
    public static string fncExportQuanHuyen_DropDownList(int iDM_ID)
    {
        return clsDanhMuc.fncGetListDM_DropDownList(iDM_ID);
    }

    // chi tiet san pham
    [WebMethod]
    public static string fncSanPhamCT(int iSP_ID)
    {
        try
        {
            return OsPortal.oStringHelper.DataTableToJSON(clsSanPham.fncChiTietSP(iSP_ID));
        }
        catch (Exception ex)
        {
            return "Loi" + ex.ToString();
        }
    }

    // Tạo đơn hàng
    [WebMethod]
    public static string fncInsert_DonHang(string strMOD, int iDH_ID, int iKH_ID, string strDH_TenKhachHang, string strDH_DiaChiNhan, string strDH_SoDienThoai, string strDH_TrangThai, DateTime dtDH_NgayGiaoHang, float fDH_TongTien)
    {
        try
        {
            return OsPortal.oStringHelper.DataTableToJSON(DonHang.fncInsertDonHang( strMOD, iDH_ID, iKH_ID,  strDH_TenKhachHang, strDH_DiaChiNhan, strDH_SoDienThoai, strDH_TrangThai, dtDH_NgayGiaoHang, fDH_TongTien));
        }
        catch(Exception ex)
        {
            return "Loi" + ex.ToString();
        }
    }


    // chi tiet don hang 
    [WebMethod]
    public static string fncInsertChiTietDonHang(string strMOD, int iCTDH_ID, int iSP_ID, int iCTDH_SoLuong)
    {
        try
        {
            return OsPortal.oStringHelper.DataTableToJSON(ChiTietDonHang.fncInsertChiTietDonHang(strMOD, iCTDH_ID, iSP_ID, iCTDH_SoLuong));
        }
        catch (Exception ex)
        {
            return "Loi" + ex.ToString();
        }
    }

    // tao gio hang
    [WebMethod]
    public static int fncAddCart(int iSP_ID, int iSP_SoLuong)
    {
        try
        {
            return clsGioHang.addCart(iSP_ID, iSP_SoLuong);
        }
        catch (Exception ex)
        {
            return 0;
        }
    }

    // get cart
    [WebMethod]
    public static string getCart()
    {
          return OsPortal.oStringHelper.DataTableToJSON((DataTable)HttpContext.Current.Session["Cart"]);
    }

    // xóa sản phẩm trong giỏ hàng
    [WebMethod]
    public static int fncDeleteSP(int iSP_ID)
    {
        try
        {
            return clsGioHang.fncDeleteSanPham(iSP_ID);
        }
        catch(Exception ex)
        {
            return 0;
        }
    }
}