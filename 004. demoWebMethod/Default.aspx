<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-1.8.0.min.js" type="text/javascript"></script>
    <script src="Scripts/SanPham.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table id="tblSanPham" style="margin-top: 10px">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Tên SP</th>
                        <th>Đơn giá</th>
                        <th>Số lượng</th>
                        <th>Link Anh</th>
                        <th>Danh mục ID</th>
                        <th>Nhà ccID</th>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
    </form>
</body>
</html>

