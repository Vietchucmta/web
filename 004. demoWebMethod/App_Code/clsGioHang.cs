using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for clsGioHang
/// </summary>
public class clsGioHang
{
    public clsGioHang()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    // thêm sản phẩm vào giỏ hàng
    public static int addCart(int iSP_ID, int iSP_SoLuong)
    {
        try
        {
            DataTable dt;
            if(HttpContext.Current.Session["Cart"]==null) // nếu giỏ hàng rỗng thì tạo mới
            {
                dt = new DataTable();
                dt.Columns.Add("iSP_ID");
                dt.Columns.Add("strSP_TenSanPham");
                dt.Columns.Add("strSP_LinkAnh");
                dt.Columns.Add("fSP_DonGia");
                dt.Columns.Add("iSP_SoLuong");
            }
            else // nếu không rỗng thì lấy ra thêm mới vào
            {
                dt = (DataTable)HttpContext.Current.Session["Cart"];
            }
            int rowExists = fncCheckSanPham(iSP_ID, dt);
            if (rowExists != -1)
            {
                dt.Rows[rowExists]["iSoLuong"] = (iSP_SoLuong);
            }
            else // nếu không thì tạo bản ghi mới rùi insert vào table
            {
                DataTable dtSanPham = clsSanPham.fncGetListSP(1, 1, iSP_ID, "", 0, 0, 0);
                string strSP_TenSanPham = "";
                string strSP_LinkAnh = "";
                float fSP_DonGia = 0;
                if (dtSanPham != null)
                {
                    strSP_TenSanPham = dtSanPham.Rows[0]["SP_TenSanPham"].ToString();
                    strSP_LinkAnh = dtSanPham.Rows[0]["SP_LinkAnh"].ToString();
                    fSP_DonGia = float.Parse(dtSanPham.Rows[0]["SP_DonGia"].ToString());
                }

                DataRow dr = dt.NewRow();
                dr["iSP_ID"] = iSP_ID;
                dr["strSP_TenSanPham"] = strSP_TenSanPham;
                dr["strSP_LinkAnh"] = strSP_LinkAnh;
                dr["fSP_DonGia"] = fSP_DonGia;
                dr["iSP_SoLuong"] = iSP_SoLuong;
                dt.Rows.Add(dr);
            }
            HttpContext.Current.Session["Cart"] = dt;
            return 1;
        }
        catch (Exception ex)
        {
            return 0;
        }
    }



    // kiểm tra sản phẩm đã tồn tại hay chưa???
    public static int fncCheckSanPham(int iSP_ID,DataTable dt)
    {
        int row = -1;
        for(int i=0; i < dt.Rows.Count; i++)
        {
            if(iSP_ID==OsPortal.oStringHelper.fncCnvNullToInt(dt.Rows[i]["iSP_ID"]) )
            {
                row = i;
                break;
            }
            
        }
        return row;
    }

    // xóa sản phẩm trong giỏ hàng
    public static int fncDeleteSanPham(int iSP_ID)
    {
        try
        {
            if (HttpContext.Current.Session["Cart"] != null)
            {
                DataTable dt = (DataTable)HttpContext.Current.Session["Cart"];
                int rowExists = fncCheckSanPham(iSP_ID, dt);
                dt.Rows.RemoveAt(rowExists);
                HttpContext.Current.Session["Cart"] = dt;
            }
            return 1;
        }
        catch(Exception ex)
        {
            return 0;
        }
    }

    
}