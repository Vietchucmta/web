$(document).ready(function () {
    xGetDM();
    xGetDanhMuc(0, '#ddlDanhMucCha');
    $('#ddlDanhMucCha').change(function () {
        xGetDanhMuc($(this).val(), '#ddlDanhMucCon');
    });

})

//<<--------------------------------------------->>

function xGetDanhMuc(iDM_ID, TenIdDDL) {
    $.ajax({
        type: "POST",
        url: "/Default.aspx/fncExportQuanHuyen_DropDownList",
        data: '{iDM_ID:' + iDM_ID
        + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var Data = response.d;
            if (Data != '') {
                $(TenIdDDL).html(Data);
            } else {
                $(TenIdDDL).html('<option value="-1">-- Danh Mục --</option>');
            }
        },
        failure: function (response) {
            //alert("failure: " + response.d);
        },
        error: function (response) {
            //alert("error: " + response.d);
        }
    });
}


//<<--------------------------------------------->>
//Lấy danh sách danh mục

function xGetDM() {
    $.ajax({
        type: "POST",
        url: "/Default.aspx/fncGetListDM",
        data: '{ iDM_ID:' + 0
        + ',iDM_DanhMucCha_ID:' + 0
        + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = response.d;
            xBuildListDM(data);
        },
        failure: function (response) {
            var data = response.d;
            console.log(data);
        },
        error: function (response) {
            var data = response.d;
            console.log(data);
            alert(data);
        }
    });
    function xBuildListDM(data) {
        var objData = jQuery.parseJSON(data);
        $("#danhmuc123").empty();
        var strVar = "";
        for (var i = 0; i < objData.length; i++) {
            var iDM_ID = objData[i].DM_ID;
            var iDM_DanhMucCha_ID = objData[i].DM_DanhMucCha_ID;
            var strDM_TenDanhMuc = objData[i].DM_TenDanhMuc;
            strVar += "<li>";
            strVar += "                            <div class=\"dropdown\">";
            strVar += "                                <button class=\"btn btn-default dropdown-toggle\" type=\"button\" id=\"menu1\" data-toggle=\"dropdown\">";
            strVar += " " + strDM_TenDanhMuc;
            strVar += "                                    <span class=\"caret\"><\/span>";
            strVar += "                                </button>";
            strVar += "                                <ul class=\"dropdown-menu\" role=\"menu\" aria-labelledby=\"menu1\" id=\"dropcon" + iDM_ID +"\">";
            strVar += "                                </ul>";
            strVar += "                            </div>";
            strVar += "                        </li>";
            xBuildListDMCon(iDM_ID);
        }
        $("#danhmuc123").append(strVar);


    }
}
function xBuildListDMCon(iDM_ID) {
    $.ajax({
        type: "POST",
        url: "/Default.aspx/fncGetListDM",
        data: '{ iDM_ID:' + 0
        + ',iDM_DanhMucCha_ID:' + iDM_ID
        + '}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var data = response.d;
            console.log(data);
            var objData = jQuery.parseJSON(data);
            var dropname = "#dropcon";
            $(dropname + iDM_ID).empty();
            var strVar = "";
            for (var i = 0; i < objData.length; i++) {
                var iDM_IDcon = objData[i].DM_ID;
                var strDM_TenDanhMuc = objData[i].DM_TenDanhMuc;
                //strVar += "                                    <li role=\"presentation\"><a role=\"menuitem\" tabindex=\"-1\" href=\"#\">" + strDM_TenDanhMuc + "</a></li>";
                strVar += "<li role=\"presentation\"><a href=\"javascript: void (0)\" onclick=\"xGetSP(1,100," + iDM_IDcon + ",'#caterogy_ringht',12,6,4)\" >"+ strDM_TenDanhMuc + "</a></li>"

            }
            $(dropname + iDM_ID).append(strVar);
        },
        failure: function (response) {
            var data = response.d;            
        },
        error: function (response) {
            var data = response.d;
            console.log(data);
            alert(data);
        }
    });
}

