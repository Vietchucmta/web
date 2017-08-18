$(document).ready(function () {
    xGetSP(1,10,0, "#123abc", 12, 6, 3);
    xGetSP(1, 10, 0, "#caterogy_ringht", 12, 6, 4);
    $('#btnSearch').click(function () {
        xGetSPCaterogy(1, 10, "#caterogy_ringht", 12, 6, 4);
    }); 
});

//Lấy danh sách sản phẩm
function xGetSP(iCURRPAGE, iPAGESIZE, iDM_ID, id, a, b, c) {
    
    $.ajax({
        type: "POST",
        url: "/Default.aspx/fncGetListSP",
        data: '{iCURRPAGE:' + iCURRPAGE
        + ',iPAGESIZE:' + iPAGESIZE
        + ',iSP_ID: ' + 0
        + ',strSP_TenSanPham: "" '
        + ',fSP_DonGia: ' + 0
        + ',iDM_ID:  ' + iDM_ID
        + ',iNCC_ID:' + 0
        + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = response.d;
            xBuildListSP(data);
        },
        failure: function (response) {
            var data = response.d;
            //xBuildListSP(data);
            console.log(data);
        },
        error: function (response) {
            var data = response.d;
            //xBuildListSP(data);
           // console.log(data);
            alert(data);
        }
    });

    function xBuildListSP(data) {
        var objData = jQuery.parseJSON(data);
        $(id).empty();
        var strVar = "";
        var temp = 0;
        for (var i = 0; i < objData.length; i++) {
            var iSP_ID = objData[i].SP_ID;
            var strSP_TenSanPham = objData[i].SP_TenSanPham;
            var fSP_DonGia = objData[i].SP_DonGia;
            var iSP_SoLuong = objData[i].SP_SoLuong;
            var strSP_LinkAnh = objData[i].SP_LinkAnh;
            var strDM_TenDanhMuc = objData[i].DM_TenDanhMuc;
            var strNCC_TenNhaCungCap = objData[i].NCC_TenNhaCungCap;
            //var strRowSP = "<tr>"
            //    + "<td>" + strSP_ID + "</td>"
            //    + "<td>" + strSP_TenSanPham + "</td>"
            //    + "<td>" + fSP_DonGia + "</td>"
            //    + "<td>" + iSP_SoLuong + "</td>"
            //    + "<td>" + strDM_ID + "</td>"
            //    + "<td>" + strNCC_ID + "</td>"
            //    + "</tr>";
            if (temp == 0) {
                strVar += "<div class=\"item active\">";
                strVar += "                                        <div class=\"col-xs-"+a+" col-sm-"+b+" col-md-"+c+" item-hover\">";
                strVar += "                                                <div class=\"item-hover-img\">";
                strVar += "                                                    <img src=\"" + strSP_LinkAnh + "\" class=\" img-responsive\" width=\"100%\">";
                strVar += "                                                    <div class=\"item-hover1 btn-group\">";
                strVar += "                                                        <button id=\"" + iSP_ID + "\" data-name=\"" + strSP_TenSanPham + "\" data-gia=\"" + fSP_DonGia + "\" data-anh=\"" + strSP_LinkAnh +"\" type=\"button\" class=\"add-to-cart btn btn-default\">";
                strVar += "                                                            <a href=\"giohang.aspx \"><span class=\"glyphicon glyphicon-shopping-cart\"><\/span></a>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <span class=\"glyphicon glyphicon-heart\"><\/span>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <a href=\"Detail.aspx?id=" + iSP_ID + "\"><span class=\"glyphicon glyphicon-eye-open\"><\/span></a>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <span class=\"glyphicon glyphicon-log-in\"><\/span>";
                strVar += "                                                        <\/button>";
                strVar += "";
                strVar += "                                                    <\/div>";
                strVar += "                                                <\/div>";
                strVar += "                                            <div class=\"product_ncp\" style=\"padding-left:10px;padding-top:15px;color:#000000\">";
                strVar += "                                                <p style=\"font-size:20px\">" + strSP_TenSanPham + "<\/p>";
                strVar += "                                                <p style=\"font-size:14px\">" + strDM_TenDanhMuc + "<\/p>";
                strVar += "                                                <div class=\"row \">";
                strVar += "                                                    <div class=\"col-md-4 pice\" style=\"font-size:20px;margin-left:0%\">";
                strVar += "                                                        $" + fSP_DonGia;
                strVar += "                                                    <\/div>";
                strVar += "                                                    <div class=\"col-md-3\">";
                strVar += "";
                strVar += "                                                    <\/div>";
                strVar += "                                                    <div class=\"col-md-5\" style=\"\">";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                    <\/div>";
                strVar += "                                                <\/div>";
                strVar += "                                            <\/div>";
                strVar += "                                        <\/div>";
                strVar += "                                    <\/div>";
                strVar += "";


            }
            else {
                strVar += "<div class=\"item \">";
                strVar += "                                        <div class=\"col-xs-12 col-sm-6 col-md-3 item-hover\">";
                strVar += "                                                <div class=\"item-hover-img\">";
                strVar += "                                                    <img src=\"" + strSP_LinkAnh + "\" class=\" img-responsive\" width=\"100%\">";
                strVar += "                                                    <div class=\"item-hover1 btn-group\">";
                strVar += "                                                        <button id=\"" + iSP_ID + "\" data-name=\"" + strSP_TenSanPham + "\" data-gia=\"" + fSP_DonGia + "\" data-anh=\"" + strSP_LinkAnh +"\" type=\"button\" class=\" add-to-cart btn btn-default\">";
                strVar += "                                                           <a href=\"giohang.aspx \"><span class=\"glyphicon glyphicon-shopping-cart\"><\/span></a>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <span class=\"glyphicon glyphicon-heart\"><\/span>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <a href=\"Detail.aspx?id=" + iSP_ID + "\"><span class=\"glyphicon glyphicon-eye-open\"><\/span></a>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <span class=\"glyphicon glyphicon-log-in\"><\/span>";
                strVar += "                                                        <\/button>";
                strVar += "";
                strVar += "                                                    <\/div>";
                strVar += "                                                <\/div>";
                strVar += "                                            <div class=\"product_ncp\" style=\"padding-left:10px;padding-top:15px;color:#000000\">";
                strVar += "                                                <p style=\"font-size:20px\">" + strSP_TenSanPham + "<\/p>";
                strVar += "                                                <p style=\"font-size:14px\">" + strDM_TenDanhMuc + "<\/p>";
                strVar += "                                                <div class=\"row \">";
                strVar += "                                                    <div class=\"col-md-4 pice\" style=\"font-size:20px;margin-left:0%\">";
                strVar += "                                                        $" + fSP_DonGia;
                strVar += "                                                    <\/div>";
                strVar += "                                                    <div class=\"col-md-3\">";
                strVar += "";
                strVar += "                                                    <\/div>";
                strVar += "                                                    <div class=\"col-md-5\" style=\"\">";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                    <\/div>";
                strVar += "                                                <\/div>";
                strVar += "                                            <\/div>";
                strVar += "                                        <\/div>";
                strVar += "                                    <\/div>";
                strVar += "";


            }


        }

        $(id).append(strVar);

        $('#carouselABC1').carousel({ interval: 3600 });

        $('.carousel-showmanymoveone  .item').each(function () {
            var itemToClone = $(this);

            for (var i = 1; i < 4; i++) {
                itemToClone = itemToClone.next();

                // wrap around if at end of item collection
                if (!itemToClone.length) {
                    itemToClone = $(this).siblings(':first');
                }

                // grab item, clone, add marker class, add to collection
                itemToClone.children(':first-child').clone()
                    .addClass("cloneditem-" + (i))
                    .appendTo($(this));
            }
        });
    }
}

// lay san pham
function xGetSPCaterogy(iCURRPAGE, iPAGESIZE, id, a, b, c) {

    var iText = $('#ddlDanhMucCon').val(); //lấy giá trị của trường mang id này (áp dụng đc cả ddl)
    if (iText == 0) {
        iText = $('#ddlDanhMucCha').val();
    }
    var strTen = $('#strSearchTen').val();

    $.ajax({
        type: "POST",
        url: "/Default.aspx/fncGetListSP",
        data: '{iCURRPAGE:' + iCURRPAGE
        + ',iPAGESIZE:' + iPAGESIZE
        + ',iSP_ID: ' + 0
        + ',strSP_TenSanPham: "' + strTen + '" '
        + ',fSP_DonGia: ' + 0
        + ',iDM_ID:  ' + iText
        + ',iNCC_ID:' + 0
        + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = response.d;
            xBuildListSP(data);
        },
        failure: function (response) {
            var data = response.d;
            //xBuildListSP(data);
            console.log(data);
        },
        error: function (response) {
            var data = response.d;
            //xBuildListSP(data);
            //console.log(data);
            alert(data);
        }
    });

    function xBuildListSP(data) {
        var objData = jQuery.parseJSON(data);
        $(id).empty();
        var strVar = "";
        var temp = 0;
        for (var i = 0; i < objData.length; i++) {
            var iSP_ID = objData[i].SP_ID;
            var strSP_TenSanPham = objData[i].SP_TenSanPham;
            var fSP_DonGia = objData[i].SP_DonGia;
            var iSP_SoLuong = objData[i].SP_SoLuong;
            var strSP_LinkAnh = objData[i].SP_LinkAnh;
            var strDM_TenDanhMuc = objData[i].DM_TenDanhMuc;
            var strNCC_TenNhaCungCap = objData[i].NCC_TenNhaCungCap;
                strVar += "<div class=\"item active\">";
                strVar += "                                        <div class=\"col-xs-" + a + " col-sm-" + b + " col-md-" + c + " item-hover\">";
                strVar += "                                                <div class=\"item-hover-img\">";
                strVar += "                                                    <img src=\"" + strSP_LinkAnh + "\" class=\" img-responsive\" width=\"100%\">";
                strVar += "                                                    <div class=\"item-hover1 btn-group\">";
                strVar += "                                                        <button id=\"" + iSP_ID + "\" data-name=\"" + strSP_TenSanPham + "\" data-gia=\"" + fSP_DonGia + "\" data-anh=\"" + strSP_LinkAnh +"\" type=\"button\" class=\"add-to-cart btn btn-default \">";
                strVar += "                                                            <a href=\"giohang.aspx \"><span class=\"glyphicon glyphicon-shopping-cart\"><\/span></a>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <span class=\"glyphicon glyphicon-heart\"><\/span>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <a href=\"Detail.aspx?id=" + iSP_ID + "\"><span class=\"glyphicon glyphicon-eye-open\"><\/span></a>";
                strVar += "                                                        <\/button>";
                strVar += "                                                        <button type=\"button\" class=\"btn btn-default\">";
                strVar += "                                                            <span class=\"glyphicon glyphicon-log-in\"><\/span>";
                strVar += "                                                        <\/button>";
                strVar += "";
                strVar += "                                                    <\/div>";
                strVar += "                                                <\/div>";
                strVar += "                                            <div class=\"product_ncp\" style=\"padding-left:10px;padding-top:15px;color:#000000\">";
                strVar += "                                                <p style=\"font-size:20px\">" + strSP_TenSanPham + "<\/p>";
                strVar += "                                                <p style=\"font-size:14px\">" + strDM_TenDanhMuc + "<\/p>";
                strVar += "                                                <div class=\"row \">";
                strVar += "                                                    <div class=\"col-md-4 pice\" style=\"font-size:20px;margin-left:0%\">";
                strVar += "                                                        $" + fSP_DonGia;
                strVar += "                                                    <\/div>";
                strVar += "                                                    <div class=\"col-md-3\">";
                strVar += "";
                strVar += "                                                    <\/div>";
                strVar += "                                                    <div class=\"col-md-5\" style=\"\">";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                        <span class=\"glyphicon glyphicon-star\"><\/span>";
                strVar += "                                                    <\/div>";
                strVar += "                                                <\/div>";
                strVar += "                                            <\/div>";
                strVar += "                                        <\/div>";
                strVar += "                                    <\/div>";
                strVar += "";

        }

        $(id).append(strVar);
    }
}



