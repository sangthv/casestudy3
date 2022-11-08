<%--
  Created by IntelliJ IDEA.
  User: sangpk
  Date: 04/11/2022
  Time: 14:04:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- Header desktop -->
<div class="container-menu-desktop">
    <!-- Topbar -->
    <div class="top-bar">
        <div class="content-topbar flex-sb-m h-full container">
            <div class="left-top-bar">
                Free shipping for standard order over $100
            </div>
            <div class="right-top-bar flex-w h-full">
                <c:if test="${sessionScope.acc ==null}">
                    <a href="login.jsp" class="flex-c-m trans-04 p-lr-25">
                        Đăng nhập
                    </a>
                </c:if>
                <c:if test="${sessionScope.acc.rolle ==0}">
                     <a href="/admin" class="flex-c-m trans-04 p-lr-25">
                         Tài Khoản
                     </a>
                    <a href="/AdminCart" class="flex-c-m trans-04 p-lr-25">
                        Admin Sản Phẩm
                    </a>

                </c:if>
                <c:if test="${sessionScope.acc.rolle ==1}">
                     <a href="#" class="flex-c-m trans-04 p-lr-25">
                        Sản Phẩm
                     </a>

                </c:if>
                <c:if test="${sessionScope.acc !=null}">
                    <a href="#" class="flex-c-m trans-04 p-lr-25">
                        xin chào ${sessionScope.acc.username}
                    </a>
                    <a href="/dangxuat" class="flex-c-m trans-04 p-lr-25">
                        Đăng xuất
                    </a>
                </c:if>

            </div>
        </div>
    </div>

    <div class="wrap-menu-desktop">
        <nav class="limiter-menu-desktop container">

            <!-- Logo desktop -->
            <a href="#" class="logo">
                <img src="cozastore-master/images/icons/logo-01.png" alt="IMG-LOGO">
            </a>

            <!-- Menu desktop -->
            <div class="menu-desktop">
                <ul class="main-menu">
                    <li class="active-menu">
                        <a href="/product">Home</a>
                        <ul class="sub-menu">
                            <li><a href="/product">Homepage 1</a></li>
                            <li><a href="home-02.jsp">Homepage 2</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="/product">Shop</a>
                    </li>

                    <li class="label1" data-label1="hot">
                        <a href="cartproduct.jsp">Giỏ hàng</a>
                    </li>

                    <li>
                        <a href="blog.jsp">Blog</a>
                    </li>

                    <li>
                        <a href="about.jsp">About</a>
                    </li>

                    <li>
                        <a href="contact.jsp">Contact</a>
                    </li>
                </ul>
            </div>

            <!-- Icon header -->
            <div class="wrap-icon-header flex-w flex-r-m">
                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
                    <i class="zmdi zmdi-search"></i>
                </div>

                <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart"
                     data-notify="2">
                    <i class="zmdi zmdi-shopping-cart"></i>
                </div>

                <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti"
                   data-notify="0">
                    <i class="zmdi zmdi-favorite-outline"></i>
                </a>
            </div>
        </nav>
    </div>
</div>

<!-- Header Mobile -->
<div class="wrap-header-mobile">
    <!-- Logo moblie -->
    <div class="logo-mobile">
        <a href="index.jsp"><img src="cozastore-master/images/icons/logo-01.png" alt="IMG-LOGO"></a>
    </div>

    <!-- Icon header -->
    <div class="wrap-icon-header flex-w flex-r-m m-r-15">
        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
            <i class="zmdi zmdi-search"></i>
        </div>

        <div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
            <i class="zmdi zmdi-shopping-cart"></i>
        </div>

        <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti"
           data-notify="0">
            <i class="zmdi zmdi-favorite-outline"></i>
        </a>
    </div>

    <!-- Button show menu -->
    <div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
    </div>
</div>


<!-- Menu Mobile -->
<div class="menu-mobile">
    <ul class="topbar-mobile">
        <li>
            <div class="left-top-bar">
                Free shipping for standard order over $100
            </div>
        </li>

        <li>
            <div class="right-top-bar flex-w h-full">
                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    Help & FAQs
                </a>

                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    My Account
                </a>

                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    EN
                </a>

                <a href="#" class="flex-c-m p-lr-10 trans-04">
                    USD
                </a>
            </div>
        </li>
    </ul>

    <ul class="main-menu-m">
        <li>
            <a href="index.jsp">Home</a>
            <ul class="sub-menu-m">
                <li><a href="index.jsp">Homepage 1</a></li>
                <li><a href="home-02.jsp">Homepage 2</a></li>
            </ul>
            <span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
        </li>

        <li>
            <a href="product.jsp">Shop</a>
        </li>

        <li>
            <a href="cartproduct.jsp" class="label1 rs1" data-label1="hot">Giỏ Hàng</a>
        </li>

        <li>
            <a href="blog.jsp">Blog</a>
        </li>

        <li>
            <a href="about.jsp">About</a>
        </li>

        <li>
            <a href="contact.jsp">Contact</a>
        </li>
    </ul>
</div>

<!-- Modal Search -->

<%--<div class="input-group">--%>
<%--    <div class="form-outline">--%>
<%--        <input type="search" id="form1" class="form-control" />--%>
<%--        <label class="form-label" for="form1">Search</label>--%>
<%--    </div>--%>
<%--    <button type="button" class="btn btn-primary">--%>
<%--        <i class="fas fa-search"></i>--%>
<%--    </button>--%>
<%--</div>--%>

<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
    <div class="container-search-header">
        <button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
            <img src="cozastore-master/images/icons/icon-close2.png" alt="CLOSE">
        </button>

        <form class="wrap-search-header flex-w p-l-15">
            <button class="flex-c-m trans-04">
                <i class="zmdi zmdi-search"></i>
            </button>
            <input class="plh3" type="text" name="search" placeholder="Search...">
        </form>
    </div>
</div>