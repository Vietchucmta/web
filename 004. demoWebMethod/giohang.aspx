<%@ Page Language="VB" AutoEventWireup="false" CodeFile="giohang.aspx.vb" Inherits="giohang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Giỏ hàng</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css " rel="stylesheet" />
</head>
<body>
    <div class="Header_w">
        <div class="Header-mobile">
            <div class=" col-md-12 col-sm-12 col-xs-12">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-3 col-xs-12">
                            <div class=" pull-left" id="logo">
                                <a href="#">
                                    <img src="/images/home/logo.png" class="img-responsive" />
                                </a>
                            </div>
                        </div>
                        <div class="menu-menu col-md-6 col-sm-4 col-xs-3">
                            <ul class="nav navbar-nav" style="color: #000000">
                                <li><a href="/home/index">HOME</a></li>
                                <li><a href="#">ABOUT</a></li>
                                <li><a href="#">STORE</a></li>
                                <li><a href="#">BLOG</a></li>
                                <li><a href="#">PAGES</a></li>
                                <li><a href="#">CONTACT</a></li>
                            </ul>
                        </div>
                        <div class="menu-top col-md-1 pull-left">
                            <div class="btn-group">
                                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                                    Menu
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li><a href="#">HOME</a></li>
                                    <li><a href="#">ABOUT</a></li>
                                    <li><a href="#">STORE</a></li>
                                    <li><a href="#">BLOG</a></li>
                                    <li><a href="#">PAGES</a></li>
                                    <li><a href="#">CONTACT</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class=" col-md-3 col-sm-5 col-xs-9 pull-right">
                            <div class="web_menu ">
                                <ul class="nav navbar-nav" style="color: #000000">
                                    <li>
                                        <a>
                                            <span class="glyphicon glyphicon-search"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="glyphicon glyphicon-user"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="glyphicon glyphicon-shopping-cart"></span>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <span class="glyphicon glyphicon-cog"></span>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="wrapper" style="margin-bottom: 30px">
        <div class="container">
            <div class="info_hoadon col-md-6" style="margin-bottom: 15px">
                <h3>Thông tin khách hang</h3>
                <div class="">
                    <input id="txtTenKhachHang" class="txtTenKH" type="text" style="width: 100%" placeholder="Tên khách hàng" value="" />
                </div>
                <div class="">
                    <input id="txtSoDienThoai" class="txtSoDT" type="text" style="width: 100%" placeholder="Số điện thoại" value="" />
                </div>
                <div class="">
                    <input id="txtDiaChiNhan" class="txtDiaCN" type="text" style="width: 100%" placeholder="Địa chỉ nhận" value="" />
                </div>
                <div class="">
                    <input id="txtNgayGiaoHang" class="txtNGH" type="text" style="width: 100%" placeholder="Ngày giao hàng" value="" />
                </div>
                <div>
                    <button class="btnTaoHD" id="Tao-Hoa-Don"><strong>Tạo hóa đơn</strong> </button>
                </div>
            </div>

            <div class="row col-md-12">
                <table class="table table-bordered" id="table-products">
                    <thead>
                        <tr>
                            <th>STT</th>
                            <th>Tên</th>
                            <th width="30%">Ảnh</th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Tổng tiền</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody class="tbody">
                    </tbody>
                </table>
                <div style="right: 30px">
                    <div class="tong_tien">
                        
                    </div>
                    <button class="btn btn-lg btn-success" id="">
                        <a href="caterogy.aspx">Quay ve tc</a>
                    </button>
                </div>
            </div>

        </div>


    </div>
    <div class="clearfix"></div>
    <div class="footer_w">
        <div class="footer_w_info">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <div class="footer_w_info_1 col-md-6">
                            <div class="logo pull-left">
                                <a href="#">
                                    <img src="/images/home/logo.png" class="img-responsive" />
                                </a>
                            </div>
                        </div>
                        <div class="footer_w_info_2 col-md-12 pull-left">
                            <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                            <p>Lorem Ipsum has been the industry's standard dummy text ever since the</p>
                            <p>1500s, When an unknown printer took a galley of type and scrambled it so</p>
                            <p>make a type specimen book.</p>
                        </div>
                        <div class="footer_w_info_3 col-md-6">
                            <div class="web_menu  pull-left">
                                <div class="row">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="#">
                                                <img src="/images/home/face.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="/images/home/int.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="/images/home/twi.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="/images/home/vi.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="/images/home/g.png" />
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#">
                                                <img src="/images/home/wifi.png" />
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <div class=" footer_w_info2 col-md-6 col-sm-6">
                            <div class="">
                                <h4 class=""><strong style="color: #f8f6f6">STORE INFORMATION</strong></h4>
                                <p class="row">
                                    <img src="/images/home/vitri.png" />
                                    609 Truong Dinh Ha Noi City, Viet Nam
                                </p>
                                <p class="row">
                                    <img src="/images/home/phone.png" />
                                    (+084) 966.588.887
                                </p>
                                <p class="row">
                                    <img src="/images/home/mail.png" />
                                    min101092@gmail.com
                                </p>
                                <div class="row" style="padding-bottom: 30px; padding-top: 15px">
                                    <img src="/images/home/time.png" style="float: left" />
                                    <div class="" style="padding-left: 5%">
                                        <p style="padding-top: 0px"><strong style="color: #ff00dc">MONDAY - FRIDAY:</strong> 08.00-20.00</p>
                                        <p><strong style="color: #ff00dc">SATUDAY:</strong> 09.00-15.00</p>
                                        <p><strong style="color: #ff00dc">SUNDAY:</strong> closed</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer_w_info3 col-md-6 col-sm-6">
                            <div class="">
                                <h4 class=""><strong style="color: #f8f6f6">LINK</strong></h4>
                                <div class="row">
                                    <div style="float: left">
                                        <p>My Accout</p>
                                        <p>Contact Us</p>
                                        <p>About Us</p>
                                        <p>New Collection</p>
                                        <p>Categories</p>
                                    </div>
                                    <div style="float: right">
                                        <p>Privacy Policy</p>
                                        <p>Terms & Conditions</p>
                                        <p>Free Shipping & Return</p>
                                        <p>Blog's</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <%--<script src="Scripts/main.js"></script>
    <script src="Scripts/simpleCart.min.js"></script>--%>
    <%--<script src="Scripts/hhh.js"></script>--%>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="scripts/danhmuc.js"></script>
    <script src="scripts/sanpham.js"></script>
    <script src="Scripts/giohang.js"></script>
</body>
</html>
