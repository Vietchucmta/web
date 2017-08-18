<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <title>Contact</title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="css/style_contact.css" rel="stylesheet" />
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
    <!-- slide_1 -->
    <div class="container">
        <div class="col-md-12">
            <img src="/images/caterogy/slide.png" style="width:100%" />
        </div>
    </div>
    <!--end slide_1-->

    <!--link_Contact-->
    <div class="container" style="margin-top:10px">
        <div>
            <ol class="breadcrumb bread-primary" style="background-color:white;">
                <li><a href="Index.html" style="color:black">Home</a></li>
                <li><a href="Contact.html" style="color:black">Contacts</a></li>
            </ol>
        </div>
    </div>
    <!--end link_Contact-->

    <!--Information-->
    <div class="container">
        <div class="col-md-6">
            <div class="title_contact">
                <p style="color:#939393"><b style="color:black">Please do</b> get in touch</p>
            </div>
            <div class="text_please_contact">
                <p>You already know what we do.Now all you have to do is get if touch</p>
                <p>with us. Give us a call, shoot us an email, or drop in for some</p>
                <p>wonderful brewed coffee. We want to get the conversation started.</p>
            </div>

            <div class="title_contact" style="padding-top:5%">
                <p style="color:#939393"><b style="color:black">Information</b> us</p>
            </div>
            <div class="text_please_contact">
                <p style="padding-top:2%"><b style="color:black">ADDRESS OFFICE:</b> 609 Truong Dinh, Ha Noi City, Viet Nam</p>
                <p style="padding-top:2%"><b style="color:black">PHONE:</b> (+084) 966.588.837</p>
                <p style="padding-top:2%"><b style="color:black">EMAIL:</b> min101092@gmail.com</p>
            </div>
            <div style="padding-top:5%; color:deeppink; font-size:1em">
                <b>ADDRESS STORES'S:</b>
            </div>
            <div class="text_please_contact">
                <p style="padding-top:2%"><b style="color:black"><u>Store01:</u></b> 609 Truong Dinh, Ha Noi City, Viet Nam</p>
                <p style="padding-top:2%"><b style="color:black"><u>Store02:</u></b> 609 Truong Dinh, Ha Noi City, Viet Nam</p>
                <p style="padding-top:2%"><b style="color:black"><u>Store03:</u></b> 609 Truong Dinh, Ha Noi City, Viet Nam</p>
                <p style="padding-top:2%"><b style="color:black"><u>Store04:</u></b> 609 Truong Dinh, Ha Noi City, Viet Nam</p>
            </div>
        </div>

        <div class="col-md-6">
            <div class="title_contact">
                <p style="color:#939393"><b style="color:black">Drop us</b> a line</p>
            </div>
            <div>
                <input type="text" name="name" placeholder="Your name..." class="text_email_contact" id="ContactName"/>
                <input type="text" name="email" placeholder="Your email..."class="text_email_contact" id="ContactEmail"/>
                <input type="text" name="phone" placeholder="Your phone..." class="text_email_contact" id="ContactPhone"/>
                <textarea type="text" name="mota" placeholder="Your message..." class="text_message_contact" id="ContactMoTa"></textarea>
                <button class="btn btn-default button_submit_contact" id="btnContact">SUBMIT</button>
            </div>
        </div>
    </div>
    <!--end Information-->

    <!--map-->
    <div class="container" style="margin-top:2%">
        <iframe style="width:100%; height:500px; border: 0px" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d7447.935138439386!2d105.7629275!3d21.0339836!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1497624602287"></iframe><br />
        <!--<small><a href="https://goo.gl/maps/vAFDgJpvgVx" style="color:#0000FF;text-align:left">View Larger Map</a></small>-->
    </div>
    <!--end map-->

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
    <script src="Scripts/jquery-3.2.1.min.js"></script>
    <%--<script src="Scripts/main.js"></script>
    <script src="Scripts/simpleCart.min.js"></script>--%>
    <!--<script src="Scripts/hhh.js"></script>-->
    <script src="Scripts/bootstrap.min.js"></script>
    <script src="scripts/danhmuc.js"></script>
    <script src="scripts/sanpham.js"></script>
    <script src="Scripts/giohang.js"></script>
    <script type="text/javascript" src="Scripts/Contact.js"></script>
</body>
</html>
