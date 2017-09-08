$(document).ready(function () {
    $('#btnContact').click(function () {
        xInsertContact();
    });
})

function xInsertContact() {
    var strName = $('#ContactName').val();
    var strEmail = $('#ContactEmail').val();
    var strPhone = $('#ContactPhone').val();
    var strMoTa = $('#ContactMoTa').val();

    $.ajax({
        type: "POST",
        url: "/Contact.aspx/fncInsertContact",
        data: '{strMOD: "A" '
        + ',iLH_ID: ' + 0
        + ',strLH_TenKhachHang: "' + strName + '" '
        + ',strLH_SDTKhachHang: "' + strPhone  + '" '
        + ',strLH_EmailKhachHang: "' + strEmail + '" '
        + ',strLH_Mota: "' + strMoTa + '" '
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
           // console.log(data);
            alert(data);
        }
    });
}