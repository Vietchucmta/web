$(document).ready(function () {
    xGetSP();
});

//Lấy danh sách sản phẩm
function xGetSP() {
    $.ajax({
        type: "POST",
        url: "/API.aspx/fncgetlistsp",
        data: '{iSP_ID: ' + 0
        + ',strSP_TenSanPham: "" '
        + ',fSP_DonGia: ' + 0
        + ',strDM_ID: "" '
        + ',strNCC_ID: "" '
        + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = response.d;
            xBuildListSP(data);
            console.log(data);
            alert(data);
        },
        failure: function (response) {
            var data = response.d;
            //xBuildListSP(data);
            console.log(data);
            alert(data);

        },
        error: function (response) {
            var data = response.d;
            //xBuildListSP(data);
            console.log(data);
            alert(data);
        }
    });

    function xBuildListSP(data) {
        var objData = jQuery.parseJSON(data);
        $("#tblSanPham tbody").empty();
        for (var i = 0; i < objData.length; i++) {
            var iSP_ID = objData[i].SP_ID;
            var strSP_TenSanPham = objData[i].SP_TenSanPham;
            var fSP_DonGia = objData[i].SP_DonGia;
            var strDM_ID = objData[i].DM_ID;
            var strNCC_ID = objData[i].NCC_ID;

            var strRowSP = "<tr>"
                + "<td>" + iSP_ID + "</td>"
                + "<td>" + strSP_TenSanPham + "</td>"
                + "<td>" + fSP_DonGia + "</td>"
                + "<td>" + strDM_ID + "</td>"
                + "<td>" + strNCC_ID + "</td>"
                + "</tr>";

            $('#tblSanPham tbody').append(strRowSP);
        }
    }
}