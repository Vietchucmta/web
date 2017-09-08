<%@ Page Language="C#" AutoEventWireup="true" CodeFile="caterogy.aspx.cs" Inherits="caterogy" %>



<!DOCTYPE html>

<html lang="vi">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Caterogy</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="caterogy">
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
                            <ul class="nav navbar-nav" style="color:#000000">
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
                                <ul class="nav navbar-nav" style="color:#000000">
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
    <div class="body-c">
        <div class="slide-c">
            <div class="col-md-12">
                <div class="container">
                    <div class="promo-box">
                        <div class="slide-c-img">
                            <img src="/images/caterogy/slide.png" />
                            <div class="textbox">
                                <p style="font-size:24px;padding-left:10%">
                                    <span class="glyphicon glyphicon-heart" style="color:#ff00dc"></span>
                                    DONE RIGHT
                                </p>
                                <p style="font-size:54px;">
                                    <b>DATE NIGHT</b>
                                </p>
                                <a href="#">
                                    <p class="slide-c-go" style=" padding-top:10%;padding-left:20%">
                                        <u> SHOPPING NOW</u>
                                    </p>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="link-c ">
            <div class="container">
                <div class="row ">
                    <div class="list-cate title">
                        <ul class="nav navbar-nav" style="padding:15px">
                            <li>
                                Home /
                            </li>
                            <li>
                                Lingeries /
                            </li>
                            <li>
                                All Size AA- DDDD
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="left-c col-md-3">
                <div class="left-c-caterogy">
                    <h3>
                        <strong>Categories</strong>
                    </h3>
                    <!--<ul id="danhmuc123">

                    </ul>-->
                    <div>
                        <select id="ddlDanhMucCha" name="ddlDanhMucCha" class="ddl ddlDanhMucCha" style="width: 100%">

                        </select>
                        <select id="ddlDanhMucCon" name="ddlDanhMucCha" class="ddl ddlDanhMucCon" style="width: 100%">
                            <option selected value=0>Chon danh muc con</option>
                        </select>
                    </div>
                    <div class="search_text col-md-">
                        <input id="strSearchTen" type="text" class="form-control" />
                        <button id="btnSearch">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </div>
                </div>
                <div class="left-c-s_color">
                    <h3>
                        <strong>Search</strong> by color
                    </h3>
                    <div class="row">
                        <button type="button" style="background:#ff0000"></button>
                        <button style="background:#ff6a00"></button>
                        <button style="background:#fff200"></button>
                        <button style="background:#00ff21"></button>
                        <button style="background:#0febeb"></button>
                        <button style="background:#0026ff"></button>
                        <button style="background:#911bc4"></button>
                    </div>
                </div>
                <div class="left-c-s_price">
                    <h3>
                        <strong>Search</strong> by price
                    </h3>
                </div>
                <div class="left-c-s_size">
                    <h3>
                        <strong>Search</strong> by size
                    </h3>
                </div>
                <div class="left-c-s_collectior">
                    <h3>
                        <strong>Search</strong> by collection
                    </h3>
                    <ul>
                        <li>
                            Beyond Sexy
                        </li>
                        <li>
                            Hello Sugar
                        </li>
                        <li>
                            So Free
                        </li>
                        <li>
                            Body Kiss
                        </li>
                        <li>
                            Obsession
                        </li>
                        <li>
                            The Show Off
                        </li>
                        <li>
                            Sexy tease
                        </li>
                        <li>
                            My Customized
                        </li>
                        <li>
                            Remix & Cotton
                        </li>
                    </ul>
                </div>
                <div class="left-c-adv">
                    <div class="left-c-advimg">
                        <img src="/images/caterogy/adv.png" />
                    </div>
                    <div class="left-c-advtext">
                        <h2><strong style="color:#19cccc;font-size:36px">PANTIES</strong></h2>
                        <p style="color:#19cccc">TEXTURED CHEEKY- PANTY- VERY SEXY</p>
                        <a href="#">
                            <p class="slide-c-go" style="">
                                <u> SHOPPING NOW</u>
                            </p>
                        </a>
                    </div>



                </div>

            </div>
            <div class="right-c col-md-9">
                <div class="right-c-top">
                    <div id="caterogy_ringht" style="margin-bottom:15px;">

                    </div>
                </div>
                <div>

                </div>
                <div class="right-c-bot" style="padding-bottom:15px">
                    <div style="height:3px;background:#000000">
                    </div>
                    <div>
                        <h1><strong> GET  10%  OF  YOUR  EVERYDAY  PURCHARSE </strong></h1>
                        <p>PLUS FREE SHIPPING ON ORDERS OF $ 100 OR MORE ...</p>
                        <a href="#" style="margin-left:40%"><u>CLICK  DETAILS</u></a>
                    </div>
                    <div style="height:3px;background:#000000">
                    </div>
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
                                <h4 class=""><strong style="color:#f8f6f6">STORE INFORMATION</strong></h4>
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
                                <div class="row" style="padding-bottom:30px;padding-top:15px">
                                    <img src="/images/home/time.png" style="float:left" />
                                    <div class="" style="padding-left:5%">
                                        <p style="padding-top:0px"><strong style="color:#ff00dc">MONDAY - FRIDAY:</strong> 08.00-20.00</p>
                                        <p><strong style="color:#ff00dc">SATUDAY:</strong> 09.00-15.00</p>
                                        <p><strong style="color:#ff00dc">SUNDAY:</strong> closed</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="footer_w_info3 col-md-6 col-sm-6">
                            <div class="">
                                <h4 class=""><strong style="color:#f8f6f6">  LINK</strong></h4>
                                <div class="row">
                                    <div style="float:left">
                                        <p>My Accout</p>
                                        <p>Contact Us</p>
                                        <p>About Us</p>
                                        <p>New Collection</p>
                                        <p>Categories</p>
                                    </div>
                                    <div style="float:right">
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
    <div style="height:40px;"></div>
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <%--<script src="Scripts/main.js"></script>--%>
    <%--<script src="Scripts/simpleCart.min.js"></script>--%>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/DanhMuc.js"></script>
    <script src="Scripts/SanPham.js"></script>
    <script src="Scripts/giohang.js"></script>
</body>
</html>

