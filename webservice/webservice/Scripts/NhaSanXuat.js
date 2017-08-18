$(document).ready(function () {
    Hello();
});

//Lấy danh sách nhà sản xuất
function Hello() {
    $.ajax({
        type: "POST",
        url: "/API.aspx/Hello",
        data: '',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = response.d;
            console.log(data);
        },
        failure: function (response) {
            //alert("failure: " + response.d);
        },
        error: function (response) {
            //alert("error: " + response.d);
        }
    });
}
