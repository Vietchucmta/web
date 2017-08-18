<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Detail.aspx.cs" Inherits="Detail" %>

<% var iSP_ID = dt.Rows[0]["SP_ID"];
    var strSP_TenSanPham = dt.Rows[0]["SP_TenSanPham"];
    var iSP_SoLuong = dt.Rows[0]["SP_SoLuong"];
    var fSP_DonGia = dt.Rows[0]["SP_DonGia"];
    var strSP_LinkAnh = dt.Rows[0]["SP_LinkAnh"];
    var strDM_TenDanhMuc = dt.Rows[0]["DM_TenDanhMuc"];
    var strNCC_TenNhaCungCap = dt.Rows[0]["NCC_TenNhaCungCap"];
    %>
<!DOCTYPE html>
<html>
<head>
     <meta name="viewport" content="width=device-width" />
    <title>Contact</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style_contact.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <!-- header -->
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
    <!--slide_1-->
    <div class="container">
        <div class="col-md-12">
            <img src="/images/caterogy/slide.png" style="width:100%" />
            <img src="image/category/heart_cate.png" class="imgheart_slide1_dong1_cate" />
            <p class="chu_slide1_dong1_cate">DONE RIGHT</p>
            <p class="chu_slide1_dong2_cate">DATE NIGHT</p>
            <p class="chu_slide1_dong3_cate">Beautiful begins underneath in 2017</p>
            <p class="chu_slide1_dong4_cate"><a style="color: #464645">SHOPPING NOW!</a></p>
        </div>
    </div>
    <!--end slide_1-->
    <!--link_Categories-->
    <div class="container" style="margin-top: 10px">
        <div>
            <ol class="breadcrumb bread-primary" style="background-color: white;">
                <li><a href="Index.html" style="color: black">Home </a></li>
                <li><a href="Category.html" style="color: black">Linger es </a></li>
                <li><a href="Product.html" style="color: black">Product Title 01</a></li>
            </ol>
        </div>
    </div>
    <!--end link_Categories-->
    <!--body-->
    <div class="container">
        <!--menu_left-->
        <div class="col-md-3 col-lg-3 col-sm-3 col-xs-3 menu_left">
            <!--categories-->
            <div>
                <div class="chu_menuleft_cate">Categories</div>
                <ul class="nav nav-pills nav-stacked admin-menu">
                    <li class="active"><a href="#" data-target-id="home">Push up</a></li>
                    <li><a href="#" data-target-id="widgets">Lightly Lined & Unlined</a></li>
                    <li><a href="#" data-target-id="pages">Strapless & Multi-Way</a></li>
                    <li><a href="#" data-target-id="charts">Balconnet</a></li>
                    <li><a href="#" data-target-id="table">Full Coverage</a></li>
                    <li><a href="#" data-target-id="forms">Demi</a></li>
                    <li><a href="#" data-target-id="calender">Front-Close</a></li>
                    <li><a href="#" data-target-id="library">Recerback</a></li>
                    <li><a href="#" data-target-id="applications">Bralettes & Crop Bustiers</a></li>
                    <li><a href="#" data-target-id="settings">Backless & Bra Accessories</a></li>
                </ul>
            </div>
            <!--end categories-->
            <!--search by color-->
            <div style="margin-top: 8%">
                <p class="chu_menuleft_2_cate"><b style="color: #464645">Search</b> by color</p>
                <div style="float: left; margin-top: 8%">
                    <div class="col-lg-1 cod-md-1 col-sm-1 col-xs-1 search_color_cate" style="background-color: #ff0000"></div>
                    <div class="col-lg-1 cod-md-1 col-sm-1 col-xs-1 search_color_cate" style="background-color: #ff5800"></div>
                    <div class="col-lg-1 cod-md-1 col-sm-1 col-xs-1 search_color_cate" style="background-color: #ffff25"></div>
                    <div class="col-lg-1 cod-md-1 col-sm-1 col-xs-1 search_color_cate" style="background-color: #00cc00"></div>
                    <div class="col-lg-1 cod-md-1 col-sm-1 col-xs-1 search_color_cate" style="background-color: #32ccfe"></div>
                    <div class="col-lg-1 cod-md-1 col-sm-1 col-xs-1 search_color_cate" style="background-color: #0003c6"></div>
                    <div class="col-lg-1 cod-md-1 col-sm-1 col-xs-1 search_color_cate" style="background-color: #71008e"></div>
                </div>
            </div>
            <!--end search by color-->
            <!--search by prices-->
            <div style="margin-top: 25%">
                <p class="chu_menuleft_2_cate"><b style="color: #464645">Search</b> by prices</p>
            </div>
            <!--end search by prices-->
            <!--search by size-->
            <div style="margin-top: 25%">
                <p class="chu_menuleft_2_cate"><b style="color: #464645">Search</b> by size</p>

            </div>
            <!--end search by size-->
            <!--search by collection-->
            <div style="margin-top: 25%">
                <p class="chu_menuleft_2_cate"><b style="color: #464645">Search</b> by collection</p>
                <ul class="nav nav-stacked nav-pills">
                    <li class="active"><a href="#">Beyond sexy</a></li>
                    <li><a href="#">Hello Sugar</a></li>
                    <li><a href="#">So Free</a></li>
                    <li><a href="#">Body Kiss</a></li>
                    <li><a href="#">Obsession</a></li>
                    <li><a href="#">The Show Off</a></li>
                    <li><a href="#">Sexy Tease</a></li>
                    <li><a href="#">My Customized</a></li>
                    <li><a href="#">Remix & Cotton</a></li>
                </ul>
            </div>
            <!--end search by collection-->
            <!--sp2_pro-->
            <div style="width: 100%">
                <img src="image/product/sp2_pro.png" />
            </div>
            <!--end sp2_pro-->
        </div>
        <!--end menu_left-->
        <!--right-->
        <div class="col-md-9 col-lg-9 col-xs-9 col-sm-9" style="padding: 0px">
            <!--product title 01-->
            <!--anh product title 01-->
            <div class="col-md-7" style="padding: 0px">
                <div class="col-md-12">
                    <img src="<%=strSP_LinkAnh %>"" width="100%" />
                </div>
                <div class="col-md-12" style="margin-top: 10px">
                    <div class="col-md-3 col-lg-3 col-xs-3 col-sm-3" style="padding: 0px">
                        <img src="<%=strSP_LinkAnh %>" width="100%" />
                    </div>
                    <div class="col-md-3 col-lg-3 col-xs-3 col-sm-3" style="padding: 0px">
                        <img src="<%=strSP_LinkAnh %>" style="width: 100%; margin-left: 10px" />
                    </div>
                </div>
            </div>
            <!--end anh product title 01-->
            <!--Information product title 01-->
            <div class="col-md-5">
                <!--Product title 01-->
                <div>
                    <p class="chu_producttitle01"><%=strSP_TenSanPham %></p>
                    <p class="chu_SKU"><u>SKU:</u> B&P-D01584</p>
                    <div class="hinhsao_pro">
                        <img src="image/star.png" alt="1" title="Dày cộp" />
                        <img src="image/star.png" alt="2" title="Dày" />
                        <img src="image/star.png" alt="3" title="Hơi mỏng" />
                        <img src="image/star.png" alt="4" title="Mỏng" />
                        <img src="image/star.png" alt="5" title="Siêu mỏng" />
                    </div>
                    <div class="price_pro">$ <%=fSP_DonGia %></div>
                </div>
                <!--end Product title 01-->
                <!--icon social-->
                <div class="icon_share_pro">
                    <div>------------</div>
                    <div>
                        Share:
                       
                        <a href=""><i class="fa fa-facebook iconProduct"></i></a>
                        <a href=""><i class="fa fa-instagram iconProduct" style="color: olivedrab"></i></a>
                        <a href=""><i class="fa fa-twitter iconProduct" style="color: cornflowerblue"></i></a>
                        <a href=""><i class="fa fa-google-plus iconProduct" style="color: red"></i></a>
                    </div>
                    <div>-------------</div>
                </div>
                <!--end icon social-->
                <!--Lorem-->
                <div class="Lorem_pro">
                    <i>Lorem Ipsum is simply dummy text of the printing and type-
                        setting industry. Lorem Ipsum has been the industry's stand-
                        ard dummy text ever since the 1500s,...
                    </i>
                </div>
                <!--end Lorem-->
                <!--number-->
                <div class="number_pro">
                    <p>Number of item in stock: 99 Items</p>
                    <p>Model: <a href="">www.minsoi.com</a></p>
                    <p>Condition: New</p>
                </div>
                <!--end number-->
                <!--color-->
                <div class="color_pro">
                    Color:
                   
                    <div class="btn-group btn-group-xs" style="margin-left: 1em">
                        <button type="button" class="btn btn-primary storeColor" style="background-color: #ff5797; padding-top: 11px; padding-right: 20px;"></button>
                        <button type="button" class="btn btn-primary storeColor" style="background-color: #56f8fb; padding-top: 11px; padding-right: 20px;"></button>

                    </div>
                </div>
                <!--end color-->
                <!--button AddtoCart-->
                <div class="button_AddtoCart_pro">
                    <button type="button" class="btn btn-primary " style="background-color: #ff4181">Add To Cart</button>
                </div>
                <!--end button AddtoCart-->
            </div>
            <!--end Information product title 01-->
            <!--end product title 01-->
            <!--More_info-->
            <div class="col-md-12" style="margin-top: 4%">
                <ul class="nav navbar-nav nav-pills admin-menu">
                    <li class="active"><a href="#" data-target-id="pu">More info</a></li>
                    <li><a href="#" data-target-id="li">Data sheet</a></li>
                    <li><a href="#" data-target-id="pa">Review</a></li>
                </ul>
            </div>
            <div class="col-md-12 admin-content moreinfo_pro" id="pu" style="margin-top: 2%">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever </p>
                <p>since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five </p>
                <p>centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of </p>
                <p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including </p>
                <p>versions of Lorem Ipsum.</p>

                <p style="margin-top: 3%">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using </p>
                <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like </p>
                <p>readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search </p>
                <p>for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, </p>
                <p>sometimes on purpose (injected humour and the like).</p>
            </div>
            <div class="col-md-12 admin-content moreinfo_pro" id="li" style="margin-top: 2%">
                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever </p>
                <p>since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five </p>
                <p>centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of </p>
                <p>Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including </p>
                <p>versions of Lorem Ipsum.</p>
            </div>
            <div class="col-md-12 admin-content moreinfo_pro" id="pa" style="margin-top: 2%">
                <p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using </p>
                <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like </p>
                <p>readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search </p>
                <p>for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, </p>
                <p>sometimes on purpose (injected humour and the like).</p>
            </div>
            <!--end More_info-->

            <!--Get 10%-->
            <div class="col-md-12" style="margin-top: 70px; margin-bottom: 50px">
                <button style="position: absolute; left: 50%; background-color: #C2C2C2; border-radius: 5px; padding: 5px; font-family: 'Times New Roman'">LOAD MORE...</button>
            </div>
            <div class="col-md-12" style="width: 100%; border: solid; margin-top: 20px"></div>
            <div class="col-md-12">
                <p style="font-size: 35px; text-align: center"><b>GET 10% OFF YOUR EVERYDAY PURCHASE</b></p>
                <p style="font-size: 20px; text-align: center">PLUS FREE SHIPPING ON ORDERS OF OR MORE</p>
                <p style="text-align: center; margin-top: 10px"><a><u>CLICK DETAILS</u></a></p>
            </div>
            <div class="col-md-12" style="width: 100%; border: solid; margin-top: 10px; margin-bottom: 20px"></div>
            <!--end Get 10%-->
        </div>
        <!--end right-->
    </div>
    <!--end body-->
    <div class="clearfix"></div>
    <!-- footer -->
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
    <!--end footer-->
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <script src="Scripts/main.js"></script>
    <script src="Scripts/simpleCart.min.js"></script>
    <%--<script src="Scripts/hhh.js"></script>--%>
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="scripts/danhmuc.js"></script>
    <script src="scripts/sanpham.js"></script>
    <script src="Scripts/giohang.js"></script>
    <script type="text/javascript" src="Scripts/Contact.js"></script>
</body>
</html>

