//var GioHang = [];

//$(document).ready(function () {
//    $('#Tao-Hoa-Don').click(function () {

//    })
//    $(document).ready(function () {
//        // kiem tra neu co sessionstorage["shopping-cart-item"] chua?
//        if (sessionStorage["cart"] != null) {
//            GioHang = JSON.parse(sessionStorage["cart"].toString());
//        }
//        // hien thi thong tin tu gio hang
//        displayGioHang();// goi ham 
//    });

//    // su kien click cac button co class ".add-to-cart"
//    //$(".add-to-cart").click(function ()
//    $(document).on('click', '.add-to-cart', function(){
//        var id = $(this).attr("id");
//        var ten = $(this).attr("data-name");
//        var anh = $(this).attr("data-anh");
//        var gia = $(this).attr("data-gia");
//        var soluong = 1;
//        var sp = {
//            id: id,
//            ten:ten,
//            anh:anh,
//            gia:gia,
//            soluong: soluong
//        };
//        var a = false;
//        if (GioHang.length > 0) {
//            $.each(GioHang, function (i, value) {
//                if (value.id == sp.id) {
//                    value.soluong++;
//                    a = true;
//                    return false;
//                }
//            });
//        };

//        if (!a) {
//            GioHang.push(sp);
//        };

//        sessionStorage["cart"] = JSON.stringify(GioHang);

//        displayGioHang();// goi ham 

//    });

//    // xoa het gio hang
//    $("#button-clear").click(function () {
//        GioHang = [];
//        sessionStorage["cart"] = JSON.stringify(GioHang);
//        $("#table-products > tbody").html("");
//        document.getElementById("TongTien").innerHTML = 0;
//    });

//});
//// hien thi gio hang

//function displayGioHang() {
//    if (sessionStorage["cart"] != null) {
//        GioHang = JSON.parse(sessionStorage["cart"].toString());
//        $("#table-products > tbody").html("");

//        $.each(GioHang, function (i, sp) {
//            var str = "";
//            var tong = sp.gia * sp.soluong;
//            str += "<tr id=\"giohang" + sp.id + "\">";
//            str += "<td>" + sp.ten + "</td>";
//            str += "<td><img src=\"" + sp.anh + "\" width=\"100px\"></td>";
//            str += "<td>" + sp.gia + "</td>";
//            str += "<td>" + sp.soluong + "</td>";
//            str += "<td>" + tong + "</td>";
//            str += "<tr>";
//            TongTien += tong;
//            $("#table-products > tbody:last").append(str);
//        });
//        document.getElementById("Tong-Tien").innerHTML = TongTien;
//    }
//};

///// Lưu thông tin hoa don

//function xInsertHoaDon() {
//    var tenKH = $('#txtTenKhachHang').val();
//    var soDT = $('#txtSoDienThoai').val();
//    var diaChiNhan = $('#txtDiaChiNhan').val();
//    var ngayGiaoHang = $('#txtNgayGiaoHang').val();
//    var tongTien = $('#Tong-Tien').val();
//    $.ajax({
//        type: "POST",
//        url: "/Default.aspx/fncInsert_DonHang",
//        data: '{strMOD: "A" '
//        + ',iDH_ID: ' + 0
//        + ',iKH_ID:' + 0
//        + ',strDH_TenKhachHang:"' + tenKH + '"'
//        + ',strDH_DiaChiNhan:"' + diaChiNhan + '"'
//        + ',strDH_SoDienThoai:"' + soDT + '"'
//        + ',strDH_TrangThai:""'
//        + ',strDH_NgayGiaoHang:"' + ngayGiaoHang + '"'
//        + ',fDH_TongTien:' + tongTien
//        + '}',
//        contentType: "application/json; charset=utf-8",
//        dataType: "json",
//        success: function (response) {
//            alert("Đã thành công!")
//            window.location.reload();
//        },
//        failure: function (response) {
//            var data = response.d;
//            console.log(data);
//            alert(data);
//        },
//        error: function (response) {
//            var data = response.d;
//            // console.log(data);
//            alert(data);
//        }
//    });
//};
$(document).ready(function () {
    AddCart();
    xGetCart();
    xDeleteSP();
    //$('#Tao-Hoa-Don').click(function () {
    //    xInsertDonHang();
    //});
    $(document).on('click', '.btnTaoHD', function () {
        xInsertDonHang();
        //GetCTDonHang();
    });
});


function AddCart(iSP_ID) {
    $(document).on('click', '.add-to-cart', function () {
        var iSP_ID = $(this).attr("id");
        $.ajax({
            type: "POST",
            url: "/Default.aspx/fncAddCart",
            data: '{iSP_ID:' + iSP_ID
            + ',iSP_SoLuong:' + 1
            + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var Data = response.d;
                //console.log(Data);         
                xGetCart(Data);

            },
            failure: function (response) {
                //alert("failure: " + response.d);
            },
            error: function (response) {
                //alert("error: " + response.d);
            }
        });
    });

}

function xGetCart() {
    $.ajax({
        type: "POST",
        url: "/Default.aspx/getCart",
        //data: '{strParentID: "' + kvparent_id + '", iType:0}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var Data = response.d;

            //console.log(Data);
            xBuildCart(Data);
            xDeleteSP()
            //alert(Data);
            //xDeleteProduct(); //Đăng ký lại sự kiện xóa sản phẩm

        },
        failure: function (response) {
            //alert("failure: " + response.d);
        },
        error: function (response) {
            //alert("error: " + response.d);
        }
    });
}
function xBuildCart(data) {
    var TongTien = 0;
    var objData = jQuery.parseJSON(data);
    $('#table-products .tbody').empty();
    for (var i = 0; i < objData.length; i++) {
        var a = i + 1;
        var iSP_ID = objData[i].iSP_ID;
        var strSP_TenSanPham = objData[i].strSP_TenSanPham;
        var strSP_LinkAnh = objData[i].strSP_LinkAnh;
        var fSP_DonGia = objData[i].fSP_DonGia;
        var iSP_SoLuong = objData[i].iSP_SoLuong;
        var str = "";
        var tong = fSP_DonGia * iSP_SoLuong;
        str += "<tr id_sp=\"" + iSP_ID + "\">";
        str += "<td>" + a + "</td>"
        str += "<td>" + strSP_TenSanPham + "</td>";
        str += "<td><img src=\"" + strSP_LinkAnh + "\" width=\"100px\"></td>";
        str += "<td>" + fSP_DonGia + "</td>";
        str += "<td><input class=\"txtOP_NUMBER\" type=\"number\" style=\"width: 100px;right:0px;\" value=\"" + iSP_SoLuong + "\" min=\"1\"></td>";
        str += "<td>" + tong + "</td>";
        str += "<td><p><span style='cursor: pointer;' class='link btnDeleteSP'>Xóa</span></p></td>";
        str += "<tr>";
        TongTien += tong;

        $("#table-products > tbody:last").append(str);
    }

    var strVar = "";
    strVar += "Tổng tiền: ";
    strVar += "                        <div id=\"Tong-Tien\">";
    strVar += "                           " + TongTien;
    strVar += "                        <\/div>";
    $('.tong_tien').append(strVar);
    var st = "";
    st += " <button  id=\"Tao-Hoa-Don\" tt=\"" + TongTien + "\"><strong>Tạo hóa đơn<\/strong> <\/button>";
    $('.btnTaoDH').append(st);
}

/// xoas sản phẩm trong giỏ hàng
function xDeleteSP() {
    $(document).on('click', '.btnDeleteSP', function () {
        var iSP_ID = $(this).closest('tr').attr("id_sp");
        if (iSP_ID != "") {
            $.ajax({
                type: "POST",
                url: "/Default.aspx/fncDeleteSP",
                data: '{iSP_ID:' + iSP_ID
                + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var Data = response.d;
                    xGetCart();
                    console.log(Data);
                },
                failure: function (response) {
                    console.log("failure: " + response.d);
                },
                error: function (response) {
                    console.log("error: " + response.d);
                }
            });
        }
    });
}

/// tạo hóa đơn
function xInsertDonHang() {

    var strTenKhachHang = $('#txtTenKhachHang').val();
    var strDiaChiNhan = $('#txtDiaChiNhan').val();
    var strSoDienThoai = $('#txtSoDienThoai').val();
    var dtNgayGiaoHang = $('#txtNgayGiaoHang').val();
    var tongtien = $('#Tong-Tien').text();
    if (strTenKhachHang != '' && strDiaChiNhan != '' && strSoDienThoai != '' && dtNgayGiaoHang != '') {
        $.ajax({
            type: "POST",
            url: "/Default.aspx/fncInsert_DonHang",
            data: '{strMOD: "A" '
            + ',iDH_ID: ' + 0
            + ',iKH_ID:' + 0
            + ',strDH_TenKhachHang: "' + strTenKhachHang + '" '
            + ',strDH_DiaChiNhan:"' + strDiaChiNhan + '"'
            + ',strDH_SoDienThoai: "' + strSoDienThoai + '" '
            + ',strDH_TrangThai: "" '
            + ',dtDH_NgayGiaoHang: "' + dtNgayGiaoHang + '" '
            + ',fDH_TongTien:' + tongtien
            + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                alert("Đã thành công!")
                window.location.reload();
            },
            failure: function (response) {
                var data = response.d;
                console.log(data);
                alert(data);
            },
            error: function (response) {
                var data = response.d;
                alert(data);
            }
        });
        $('#table-products .tbody tr').each(function () {
            var iSP_ID = $(this).attr('id_sp');
            var iCTDH_SoLuong = $(this).find('.txtOP_NUMBER').val();
            xInsertCTDH(iSP_ID, iCTDH_SoLuong);
        });
    }

}


function xInsertCTDH(a, b) {
    $.ajax({
        type: "POST",
        url: "/Default.aspx/fncInsertChiTietDonHang",
        data: '{strMOD: "A" '
        + ',iCTDH_ID: ' + 0
        + ',iSP_ID:' + a
        + ',iCTDH_SoLuong:' +b
        + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

        },
        failure: function (response) {
            var data = response.d;
            alert(data);
        },
        error: function (response) {
            var data = response.d;
            alert(data);
        }
    });
}