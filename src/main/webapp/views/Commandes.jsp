<%@taglib uri="/struts-tags" prefix="s" %>
<%@taglib uri="/struts-jquery-tags" prefix="jq" %>

<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Gestion de vente de Smartphones </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- favicon
		============================================ -->
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
    <!-- Google Fonts
		============================================ -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Bootstrap CSS
		============================================ -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
	<!-- nalika Icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/nalika-icon.css">
    <!-- owl.carousel CSS
		============================================ -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <!-- animate CSS
		============================================ -->
    <link rel="stylesheet" href="css/animate.css">
    <!-- normalize CSS
		============================================ -->
    <link rel="stylesheet" href="css/normalize.css">
    <!-- meanmenu icon CSS
		============================================ -->
    <link rel="stylesheet" href="css/meanmenu.min.css">
    <!-- main CSS
		============================================ -->
    <link rel="stylesheet" href="css/main.css">
    <!-- morrisjs CSS
		============================================ -->
    <link rel="stylesheet" href="css/morrisjs/morris.css">
    <!-- mCustomScrollbar CSS
		============================================ -->
    <link rel="stylesheet" href="css/scrollbar/jquery.mCustomScrollbar.min.css">
    <!-- metisMenu CSS
		============================================ -->
    <link rel="stylesheet" href="css/metisMenu/metisMenu.min.css">
    <link rel="stylesheet" href="css/metisMenu/metisMenu-vertical.css">
    <!-- calendar CSS
		============================================ -->
    <link rel="stylesheet" href="css/calendar/fullcalendar.min.css">
    <link rel="stylesheet" href="css/calendar/fullcalendar.print.min.css">
    <!-- style CSS
		============================================ -->
    <link rel="stylesheet" href="style.css">
    <!-- responsive CSS
		============================================ -->
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/as.css">
    <!-- modernizr JS
		============================================ -->
    <script src="js/vendor/modernizr-2.8.3.min.js"></script>
        <script src="js/as.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
	<s:url namespace="/" action="client" var="lienClient"/>
	<s:url namespace="/" action="sp" var="lienSp"/>
	<s:url namespace="/" action="cmd" var="lienCmd"/>


    <div class="left-sidebar-pro">
        <nav id="sidebar" class="">
            <div class="sidebar-header">
            	<!-- 
                <a href="index.html" class="main-logo asLogo">G-Commandes</a>
            	 -->
            </div>
			<div class="nalika-profile">
				<div class="profile-dtl">
					<a href="#"><img src="img/contact/me.jpg" style="box-shadow: 0px 0px 50px 5px #58dfe4;" alt="" /></a>
					<h2>As<span class="min-dtn"> Manjaka Josvah</span></h2>
				</div>
				<div class="profile-social-dtl">
					<ul class="dtl-social">
						<li><a href="#"><i class="icon nalika-facebook"></i></a></li>
						<li><a href="#"><i class="icon nalika-twitter"></i></a></li>
						<li><a href="#"><i class="icon nalika-linkedin"></i></a></li>
					</ul>
				</div>
			</div>
			
            <div class="left-custom-menu-adp-wrap comment-scrollbar">
                <nav class="sidebar-nav left-sidebar-menu-pro">
                    <ul class="metismenu" id="menu1">
                        <li>
                            <a href='<s:property value="%{lienSp}"/>' aria-expanded="false"><i class="icon nalika-smartphone-call icon-wrap"></i> <span class="mini-click-non">Smartphones</span></a>
                        </li>
                        <li class="asActiveItem">
                            <a  href='<s:property value="%{lienCmd}"/>' aria-expanded="false"><i class="fa fa-shopping-cart icon-wrap"></i> <span class="mini-click-non">Commandes</span></a>
                        </li>
                        <li>
                            <a href='<s:property value="%{lienClient}"/>' aria-expanded="false"><i class="fa fa-group icon-wrap"></i> <span class="mini-click-non">Clients</span></a>
                            <!-- 
                            <ul class="submenu-angle" aria-expanded="false">
                                <li><a title="Inbox" href="mailbox.html"><span class="mini-sub-pro">Inbox</span></a></li>
                                <li><a title="View Mail" href="mailbox-view.html"><span class="mini-sub-pro">View Mail</span></a></li>
                                <li><a title="Compose Mail" href="mailbox-compose.html"><span class="mini-sub-pro">Compose Mail</span></a></li>
                            </ul>
                             -->
                        </li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
    <!-- Start Welcome area -->
    <div class="all-content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="logo-pro" style="margin: 50px;">
                    </div>
                </div>
            </div>
        </div>
        <div class="header-advance-area">
            <div class="header-top-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="header-top-wraper">
                                <div class="row">
                                    <div class="col-lg-1 col-md-0 col-sm-1 col-xs-12">
                                        <div class="menu-switcher-pro">
                                            <button type="button" id="sidebarCollapse" class="btn bar-button-pro header-drl-controller-btn btn-info navbar-btn">
													<i class="icon nalika-menu-task"></i>
												</button>
                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-7 col-sm-6 col-xs-12">
                                        <div class="header-top-menu tabl-d-n hd-search-rp">
                                            <div class="breadcome-heading">
												<form role="search" class="">
													<input type="text" placeholder="Search..." class="form-control">
													<a href=""><i class="fa fa-search"></i></a>
												</form>
											</div>
                                        </div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
                                        <div class="header-right-info">
                                            <ul class="nav navbar-nav mai-top-nav header-right-menu">
                                                <li class="nav-item dropdown">
                                                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="icon nalika-mail" aria-hidden="true"></i><span class="indicator-ms"></span></a>
                                                    <div role="menu" class="author-message-top dropdown-menu animated zoomIn">
                                                        <div class="message-single-top">
                                                            <h1>Message</h1>
                                                        </div>
                                                        <ul class="message-menu">
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/1.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Advanda Cro</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/4.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Sulaiman din</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/3.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Victor Jara</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="message-img">
                                                                        <img src="img/contact/2.jpg" alt="">
                                                                    </div>
                                                                    <div class="message-content">
                                                                        <span class="message-date">16 Sept</span>
                                                                        <h2>Victor Jara</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <div class="message-view">
                                                            <a href="#">View All Messages</a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="nav-item"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="icon nalika-alarm" aria-hidden="true"></i><span class="indicator-nt"></span></a>
                                                    <div role="menu" class="notification-author dropdown-menu animated zoomIn">
                                                        <div class="notification-single-top">
                                                            <h1>Notifications</h1>
                                                        </div>
                                                        <ul class="notification-menu">
                                                            <li>
                                                                <a href="#">
                                                                    <div class="notification-icon">
                                                                        <i class="icon nalika-tick" aria-hidden="true"></i>
                                                                    </div>
                                                                    <div class="notification-content">
                                                                        <span class="notification-date">16 Sept</span>
                                                                        <h2>Advanda Cro</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="notification-icon">
                                                                        <i class="icon nalika-cloud" aria-hidden="true"></i>
                                                                    </div>
                                                                    <div class="notification-content">
                                                                        <span class="notification-date">16 Sept</span>
                                                                        <h2>Sulaiman din</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="notification-icon">
                                                                        <i class="icon nalika-folder" aria-hidden="true"></i>
                                                                    </div>
                                                                    <div class="notification-content">
                                                                        <span class="notification-date">16 Sept</span>
                                                                        <h2>Victor Jara</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                            <li>
                                                                <a href="#">
                                                                    <div class="notification-icon">
                                                                        <i class="icon nalika-bar-chart" aria-hidden="true"></i>
                                                                    </div>
                                                                    <div class="notification-content">
                                                                        <span class="notification-date">16 Sept</span>
                                                                        <h2>Victor Jara</h2>
                                                                        <p>Please done this project as soon possible.</p>
                                                                    </div>
                                                                </a>
                                                            </li>
                                                        </ul>
                                                        <div class="notification-view">
                                                            <a href="#">View All Notification</a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li class="nav-item">
                                                    <a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle">
															<i class="icon nalika-user"></i>
															<span style="display: inline-block; width: 100px;"></span>
															<!-- 
															<i class="icon nalika-down-arrow nalika-angle-dw"></i>
															 -->
														</a>
                                                    <ul role="menu" class="dropdown-header-top author-log dropdown-menu animated zoomIn">
                                                        <li><a href="register.html"><span class="icon nalika-home author-log-ic"></span> Register</a>
                                                        </li>
                                                        <li><a href="#"><span class="icon nalika-user author-log-ic"></span> My Profile</a>
                                                        </li>
                                                        <li><a href="lock.html"><span class="icon nalika-diamond author-log-ic"></span> Lock</a>
                                                        </li>
                                                        <li><a href="#"><span class="icon nalika-settings author-log-ic"></span> Settings</a>
                                                        </li>
                                                        <li><a href="login.html"><span class="icon nalika-unlocked author-log-ic"></span> Log Out</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li class="nav-item nav-setting-open"><a href="#" data-toggle="dropdown" role="button" aria-expanded="false" class="nav-link dropdown-toggle"><i class="icon nalika-menu-task"></i></a>

                                                    <div role="menu" class="admintab-wrap menu-setting-wrap menu-setting-wrap-bg dropdown-menu animated zoomIn">
                                                        <ul class="nav nav-tabs custon-set-tab">
                                                            <li class="active"><a data-toggle="tab" href="#Notes">News</a>
                                                            </li>
                                                            <li><a data-toggle="tab" href="#Projects">Activity</a>
                                                            </li>
                                                            <li><a data-toggle="tab" href="#Settings">Settings</a>
                                                            </li>
                                                        </ul>

                                                        <div class="tab-content custom-bdr-nt">
                                                            <div id="Notes" class="tab-pane fade in active">
                                                                <div class="notes-area-wrap">
                                                                    <div class="note-heading-indicate">
                                                                        <h2><i class="icon nalika-chat"></i> Latest News</h2>
                                                                        <p>You have 10 New News.</p>
                                                                    </div>
                                                                    <div class="notes-list-area notes-menu-scrollbar">
                                                                        <ul class="notes-menu-list">
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/4.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/1.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/2.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/3.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/4.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/1.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/2.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/1.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/2.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="notes-list-flow">
                                                                                        <div class="notes-img">
                                                                                            <img src="img/contact/3.jpg" alt="" />
                                                                                        </div>
                                                                                        <div class="notes-content">
                                                                                            <p> The point of using Lorem Ipsum is that it has a more-or-less normal.</p>
                                                                                            <span>Yesterday 2:45 pm</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div id="Projects" class="tab-pane fade">
                                                                <div class="projects-settings-wrap">
                                                                    <div class="note-heading-indicate">
                                                                        <h2><i class="icon nalika-happiness"></i> Recent Activity</h2>
                                                                        <p> You have 20 Recent Activity.</p>
                                                                    </div>
                                                                    <div class="project-st-list-area project-st-menu-scrollbar">
                                                                        <ul class="projects-st-menu-list">
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New User Registered</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">1 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New Order Received</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">2 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New Order Received</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">3 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New Order Received</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">4 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New User Registered</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">5 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New Order</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">6 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New User</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">7 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                            <li>
                                                                                <a href="#">
                                                                                    <div class="project-list-flow">
                                                                                        <div class="projects-st-heading">
                                                                                            <h2>New Order</h2>
                                                                                            <p> The point of using Lorem Ipsum is that it has a more or less normal.</p>
                                                                                            <span class="project-st-time">9 hours ago</span>
                                                                                        </div>
                                                                                    </div>
                                                                                </a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div id="Settings" class="tab-pane fade">
                                                                <div class="setting-panel-area">
                                                                    <div class="note-heading-indicate">
                                                                        <h2><i class="icon nalika-gear"></i> Settings Panel</h2>
                                                                        <p> You have 20 Settings. 5 not completed.</p>
                                                                    </div>
                                                                    <ul class="setting-panel-list">
                                                                        <li>
                                                                            <div class="checkbox-setting-pro">
                                                                                <div class="checkbox-title-pro">
                                                                                    <h2>Show notifications</h2>
                                                                                    <div class="ts-custom-check">
                                                                                        <div class="onoffswitch">
                                                                                            <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example">
                                                                                            <label class="onoffswitch-label" for="example">
																									<span class="onoffswitch-inner"></span>
																									<span class="onoffswitch-switch"></span>
																								</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="checkbox-setting-pro">
                                                                                <div class="checkbox-title-pro">
                                                                                    <h2>Disable Chat</h2>
                                                                                    <div class="ts-custom-check">
                                                                                        <div class="onoffswitch">
                                                                                            <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example3">
                                                                                            <label class="onoffswitch-label" for="example3">
																									<span class="onoffswitch-inner"></span>
																									<span class="onoffswitch-switch"></span>
																								</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="checkbox-setting-pro">
                                                                                <div class="checkbox-title-pro">
                                                                                    <h2>Enable history</h2>
                                                                                    <div class="ts-custom-check">
                                                                                        <div class="onoffswitch">
                                                                                            <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example4">
                                                                                            <label class="onoffswitch-label" for="example4">
																									<span class="onoffswitch-inner"></span>
																									<span class="onoffswitch-switch"></span>
																								</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="checkbox-setting-pro">
                                                                                <div class="checkbox-title-pro">
                                                                                    <h2>Show charts</h2>
                                                                                    <div class="ts-custom-check">
                                                                                        <div class="onoffswitch">
                                                                                            <input type="checkbox" name="collapsemenu" class="onoffswitch-checkbox" id="example7">
                                                                                            <label class="onoffswitch-label" for="example7">
																									<span class="onoffswitch-inner"></span>
																									<span class="onoffswitch-switch"></span>
																								</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="checkbox-setting-pro">
                                                                                <div class="checkbox-title-pro">
                                                                                    <h2>Update everyday</h2>
                                                                                    <div class="ts-custom-check">
                                                                                        <div class="onoffswitch">
                                                                                            <input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example2">
                                                                                            <label class="onoffswitch-label" for="example2">
																									<span class="onoffswitch-inner"></span>
																									<span class="onoffswitch-switch"></span>
																								</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="checkbox-setting-pro">
                                                                                <div class="checkbox-title-pro">
                                                                                    <h2>Global search</h2>
                                                                                    <div class="ts-custom-check">
                                                                                        <div class="onoffswitch">
                                                                                            <input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example6">
                                                                                            <label class="onoffswitch-label" for="example6">
																									<span class="onoffswitch-inner"></span>
																									<span class="onoffswitch-switch"></span>
																								</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="checkbox-setting-pro">
                                                                                <div class="checkbox-title-pro">
                                                                                    <h2>Offline users</h2>
                                                                                    <div class="ts-custom-check">
                                                                                        <div class="onoffswitch">
                                                                                            <input type="checkbox" name="collapsemenu" checked="" class="onoffswitch-checkbox" id="example5">
                                                                                            <label class="onoffswitch-label" for="example5">
																									<span class="onoffswitch-inner"></span>
																									<span class="onoffswitch-switch"></span>
																								</label>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                    </ul>

                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu start -->
            <div class="mobile-menu-area">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="mobile-menu">
                                <nav id="dropdown">
                                    <ul class="mobile-menu-nav">
                                        <li><a data-toggle="collapse" data-target="#demo" href="#">Smartphones <span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                            <ul id="demo" class="collapse dropdown-header-top">
                                                <li><a href="mailbox.html">Inbox</a>
                                                </li>
                                                <li><a href="mailbox-view.html">View Mail</a>
                                                </li>
                                                <li><a href="mailbox-compose.html">Compose Mail</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><s:a data-toggle="collapse" data-target="#demo" href="%{lienClient}">Clients <span class="admin-project-icon nalika-icon nalika-down-arrow"></span></s:a>
                                            <ul id="demo" class="collapse dropdown-header-top">
                                                <li><a href="mailbox.html">Inbox</a>
                                                </li>
                                                <li><a href="mailbox-view.html">View Mail</a>
                                                </li>
                                                <li><a href="mailbox-compose.html">Compose Mail</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a data-toggle="collapse" data-target="#demo" href="#">Commandes <span class="admin-project-icon nalika-icon nalika-down-arrow"></span></a>
                                            <ul id="demo" class="collapse dropdown-header-top">
                                                <li><a href="mailbox.html">Inbox</a>
                                                </li>
                                                <li><a href="mailbox-view.html">View Mail</a>
                                                </li>
                                                <li><a href="mailbox-compose.html">Compose Mail</a>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Mobile Menu end -->
            <div class="breadcome-area">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="breadcome-list">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="product-status mg-b-30">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="product-status-wrap">
                            <h4>Liste des commandes</h4>
                            <div class="add-product">
                                <a href='<s:url namespace="/" action="addCmd"/>'> Ajouter une nouvelle commande</a>
                            </div>
                            <table>
                                <tr>
                                    <th>Date</th>
                                    <th>Client</th>
                                    <th>Marque</th>
                                    <th>Couleur</th>
                                    <th>Qté</th>
                                    <th>Prix Unitaire</th>
                                    <th>Montant</th>
                                    <th></th>
                                </tr>
                                <s:iterator value="listCommandes">
	                                <tr>
	                                    <td>
	                                    	<s:if test="%{dateCommande.getDate() < 10}">
	                                    		0<s:property value="dateCommande.getDate()"/>
	                                    	</s:if>
	                                    	<s:else>
	                                    		<s:property value="dateCommande.getDate()"/>
	                                    	</s:else>
	                                    	/
	                                    	<s:if test="%{dateCommande.getMonth() < 10}">
	                                    		0<s:property value="dateCommande.getMonth() +1"/>
	                                    	</s:if>
	                                    	<s:else>
	                                    		<s:property value="dateCommande.getMonth() + 1"/>
	                                    	</s:else>
	                                    	/
	                                    	<s:property value="dateCommande.getYear() + 1900"/>
	                                    </td>
	                                    <td>
	                               				<s:property value="client.nom"/> <s:property value="client.prenom"/>
	                               		</td>
	                               		<td>
	                               				<s:property value="smartphone.marque"/> <s:property value="smartphone.model"/>
	                               		</td>
	                               		<td>
	                               				<s:property value="color"/>
	                               		</td>
	                               		<td>
	                               				<s:property value="quantite"/>	                               				
	                               		</td>
	                               		<td>
	                               				<s:if test="%{prixMGA>=1000000}">
	                                    	<s:property value="%{prixMGA/1000000}"/> 
	                                    	<s:if test="%{((prixMGA - (prixMGA/1000000)*1000000)/1000) == 0}">
	                               				000
	                               			</s:if>
	                               			<s:elseif test="%{((prixMGA - (prixMGA/1000000)*1000000)/1000) < 10}">
	                               				00<s:property value="%{(prixMGA - (prixMGA/1000000)*1000000)/1000}"/>
	                               			</s:elseif>
	                               			<s:elseif test="%{((prixMGA - (prixMGA/1000000)*1000000)/1000) < 100}">
	                               				0<s:property value="%{(prixMGA - (prixMGA/1000000)*1000000)/1000}"/>
	                               			</s:elseif>
	                               			<s:else>
	                               				<s:property value="%{(prixMGA - (prixMGA/1000000)*1000000)/1000}"/>
	                               			</s:else>
	                               			<s:if test="%{(((prixMGA - (prixMGA/1000000)*1000000)) - ((prixMGA - (prixMGA/1000000)*1000000)/1000)*1000) == 0}">
	                               				000
	                               			</s:if>
	                               			<s:elseif test="%{(((prixMGA - (prixMGA/1000000)*1000000)) - ((prixMGA - (prixMGA/1000000)*1000000)/1000)*1000) < 10}">
	                               				00<s:property value="%{((prixMGA - (prixMGA/1000000)*1000000)) - ((prixMGA - (prixMGA/1000000)*1000000)/1000)*1000}"/>
	                               			</s:elseif>
	                               			<s:elseif test="%{(((prixMGA - (prixMGA/1000000)*1000000)) - ((prixMGA - (prixMGA/1000000)*1000000)/1000)*1000) < 100}">
	                               				0<s:property value="%{((prixMGA - (prixMGA/1000000)*1000000)) - ((prixMGA - (prixMGA/1000000)*1000000)/1000)*1000}"/>
	                               			</s:elseif>
	                               			<s:else>
	                               				<s:property value="%{((prixMGA - (prixMGA/1000000)*1000000)) - ((prixMGA - (prixMGA/1000000)*1000000)/1000)*1000}"/>
	                               			</s:else>
	                                    </s:if>
	                               		<s:elseif test="%{prixMGA>=1000}">
	                               			<s:property value="%{prixMGA/1000}"/> 
	                               			<s:if test="%{prixMGA - ((prixMGA/1000)*1000) == 0}">
	                               				000
	                               			</s:if>
	                               			<s:elseif test="%{prixMGA - ((prixMGA/1000)*1000) < 10}">
	                               				00<s:property value="%{prixMGA - ((prixMGA/1000)*1000)}"/>
	                               			</s:elseif>
	                               			<s:elseif test="%{prixMGA - ((prixMGA/1000)*1000) < 100}">
	                               				0<s:property value="%{prixMGA - ((prixMGA/1000)*1000)}"/>
	                               			</s:elseif>
	                               			<s:else>
	                               				<s:property value="%{prixMGA - ((prixMGA/1000)*1000)}"/>
	                               			</s:else>
	                               		</s:elseif>
	                               		</td>
	                               		<td>
	                               		
	                               		
	                               		<s:if test="%{prixMGA*quantite>=1000000}">
	                                    	<s:property value="%{prixMGA*quantite/1000000}"/> 
	                                    	<s:if test="%{((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000) == 0}">
	                               				000
	                               			</s:if>
	                               			<s:elseif test="%{((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000) < 10}">
	                               				00<s:property value="%{(prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000}"/>
	                               			</s:elseif>
	                               			<s:elseif test="%{((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000) < 100}">
	                               				0<s:property value="%{(prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000}"/>
	                               			</s:elseif>
	                               			<s:else>
	                               				<s:property value="%{(prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000}"/>
	                               			</s:else>
	                               			<s:if test="%{(((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)) - ((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000)*1000) == 0}">
	                               				000
	                               			</s:if>
	                               			<s:elseif test="%{(((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)) - ((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000)*1000) < 10}">
	                               				00<s:property value="%{((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)) - ((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000)*1000}"/>
	                               			</s:elseif>
	                               			<s:elseif test="%{(((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)) - ((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000)*1000) < 100}">
	                               				0<s:property value="%{((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)) - ((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000)*1000}"/>
	                               			</s:elseif>
	                               			<s:else>
	                               				<s:property value="%{((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)) - ((prixMGA*quantite - (prixMGA*quantite/1000000)*1000000)/1000)*1000}"/>
	                               			</s:else>
	                                    </s:if>
	                               		<s:elseif test="%{prixMGA*quantite>=1000}">
	                               			<s:property value="%{prixMGA*quantite/1000}"/> 
	                               			<s:if test="%{prixMGA*quantite - ((prixMGA*quantite/1000)*1000) == 0}">
	                               				000
	                               			</s:if>
	                               			<s:elseif test="%{prixMGA*quantite - ((prixMGA*quantite/1000)*1000) < 10}">
	                               				00<s:property value="%{prixMGA*quantite - ((prixMGA*quantite/1000)*1000)}"/>
	                               			</s:elseif>
	                               			<s:elseif test="%{prixMGA*quantite - ((prixMGA*quantite/1000)*1000) < 100}">
	                               				0<s:property value="%{prixMGA*quantite - ((prixMGA*quantite/1000)*1000)}"/>
	                               			</s:elseif>
	                               			<s:else>
	                               				<s:property value="%{prixMGA*quantite - ((prixMGA*quantite/1000)*1000)}"/>
	                               			</s:else>
	                               		</s:elseif>
	                               		</td>
	                                    <s:url namespace="/" action="editCmd" var="lienEditCmd">
	                                 		<s:param name="idCommande">
	                                 			<s:property value="idCommande"/>
	                                 		</s:param>
	                                    </s:url>
	                                    <s:url namespace="/" action="deleteCmd" var="lienDeleteCmd">
	                                 		<s:param name="idCommande">
	                                 			<s:property value="idCommande"/>
	                                 		</s:param>
	                                    </s:url>
	                                    <td>
	                                    	<s:a href="%{lienEditCmd}" style="color: white;">
	                                        	<button data-toggle="tooltip" title="Modifier" class="btn btn-primary"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></button>
	                                    	</s:a>
	                                    	
	                                        	<button data-toggle="tooltip" title="Supprimer" class=" btn btn-danger" onclick="showWiwiBan()"><i class="fa fa-trash-o" aria-hidden="true"></i></button>
	                                    </td>
	                                </tr>
                                </s:iterator>
                            </table>
                            <div class="custom-pagination">
								<ul class="pagination">
									<li class="page-item"><a class="page-link" href="#">Préc.</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Suiv.</a></li>
								</ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
       
        <div class="footer-copyright-area">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-copy-right">
                        <!-- 
                            <p>Copyright © 2021 <a href="https://colorlib.com/wp/templates/">Colorlib</a> All rights reserved.</p>
                         -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
  	<!-- Fenêtre de dialogue -->
   	<div class="asWindow container">
   		<div class="asWindowTitle">
   			Insertion d'un nouveau Smartphone
   		</div>
   		<hr/>
   		<div class="sparkline12-graph">
        	<div class="basic-login-form-ad">
             	<div class="row">
                 	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    	<div class="all-form-element-inner">
                         	<form action="#">
                            	<div class="form-group-inner">
                            		<s:hidden name="idSmartphone" value="idSmartphone"/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Marque : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
									<br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Modèle : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
									<br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Système : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
									<br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Version : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
									<br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Stockage interne : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
									<br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">RAM : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
									<br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Cam. avant : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
                                     <br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Cam. à l'arrière : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
                                     <br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Processeur(s) : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
                                     <br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Batterie : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
                                     <br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Taille : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
                                     <br/>
                                	<div class="row">
                                    	<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
                                        	<label class="login2 pull-right pull-right-pro" style="color: white; font-weight: normal;">Prix(Ar) : </label>
                                         </div>
                                         <div class="col-lg-9 col-md-9 col-sm-9 col-xs-12">
                                         	<input type="text" class="form-control" style="border-radius: 20px; border: none; color: white; height: 30px;"/>
                                         </div>
                                     </div>
                                 </div>
                           	</form>
                          </div>
                       </div>
                    </div>
                 </div>
             </div>
   		</div>
   		
   		
   		
   		
	    <s:if test="%{cmdIsAdded == true}">
   			<div class="as-notif-banner">
	        	<div class="as-notif-icon">
	            	<div class=" as-success-notif">
	                	<div class="as-circle"></div>
	                	<div class="as-short-bar"></div>
	                	<div class="as-long-bar"></div>
	            	</div>
	            	<div class="as-notif-message">
	            		Commande ajoutée!
	            	</div>
	        	</div>
	    	</div>
	   	</s:if>
	   	<s:elseif test="%{cmdIsUpdated == true}">
	    	<div class="as-notif-banner">
	        	<div class="as-notif-icon">
	            	<div class=" as-success-notif">
	                	<div class="as-circle"></div>
	                	<div class="as-short-bar"></div>
	                	<div class="as-long-bar"></div>
	            	</div>
	            	<div class="as-notif-message">
	            		Commande modifiée!
	            	</div>
	        	</div>
	    	</div>
	    </s:elseif>
	    <s:elseif test="%{cmdIsDeleted == true}">
	    	<div class="as-notif-banner">
	        	<div class="as-notif-icon">
	            	<div class=" as-success-notif">
	                	<div class="as-circle"></div>
	                	<div class="as-short-bar"></div>
	                	<div class="as-long-bar"></div>
	            	</div>
	            	<div class="as-notif-message">
	            		Commande supprimée!
	            	</div>
	        	</div>
	    	</div>
	</s:elseif>
	<div id="messageBox" style="position: absolute;left: 0px; top: 0px; width: 100%; height: 100%; z-Index: -5;"></div>
    <script type="text/javascript">
		  	 showWiwiBan = () =>{
		  		 /* document.getElementById("messageBox").style.zIndex = 0; */
		  	  var wiwiMirror = '<div id="wiwi-mirror">';
		  		    wiwiMirror+='<div class="wiwi-ban-container">';
		  			wiwiMirror+='<div class="wiwi-ban-message">';
		  			wiwiMirror+='Voulez-vous vraiment supprimer cette commande ?';
		  			wiwiMirror+='</div>';
		  			wiwiMirror+='<div class="wiwi-ban-btn-confirm">';
		  			wiwiMirror+='<s:a href="%{lienDeleteCmd}" style="color: white;">';
		  			wiwiMirror+='<button class="wiwi-btn-deny">';
		  			wiwiMirror+='Oui';
		  			wiwiMirror+='</button>';
		  			wiwiMirror+='</s:a>';
		  			wiwiMirror+='<button class="wiwi-btn-confirm" onclick="cancelAction()">';
		  			wiwiMirror+='Non';
		  			wiwiMirror+='</button>';
		  			wiwiMirror+='</div>';
		  			wiwiMirror+='</div>';
		  			wiwiMirror+='</div>';
		  			document.getElementById("messageBox").style.zIndex = 1000;
		  			document.getElementById("messageBox").innerHTML = wiwiMirror;
		  	  wiwiMirror.style.zIndex = 0;
		  	  setInterval(() =>{
		  		  wiwiMirror.style.opacity += .2;
		  		  if(wiwiMirror.style.opacity == 1)
		  		  	clearInterval();
		  	  }, 250);
		  	  			
		  }
		  cancelAction = () =>{
			  
		  	var wiwiMirror = document.getElementById('wiwi-mirror');
		  	wiwiMirror.style.opacity = 0;  		
		  	setInterval(() =>{
		  		wiwiMirror.style.zIndex -= 5;
		  	  	if(wiwiMirror.style.zIndex == -5)
		  			document.getElementById("messageBox").style.zIndex = -5;
		  	  		clearInterval();
		  	}, 500);
		  }
	 </script>
    <!-- jquery
		============================================ -->
    <script src="js/vendor/jquery-1.12.4.min.js"></script>
    <!-- bootstrap JS
		============================================ -->
    <script src="js/bootstrap.min.js"></script>
    <!-- wow JS
		============================================ -->
    <script src="js/wow.min.js"></script>
    <!-- price-slider JS
		============================================ -->
    <script src="js/jquery-price-slider.js"></script>
    <!-- meanmenu JS
		============================================ -->
    <script src="js/jquery.meanmenu.js"></script>
    <!-- owl.carousel JS
		============================================ -->
    <script src="js/owl.carousel.min.js"></script>
    <!-- sticky JS
		============================================ -->
    <script src="js/jquery.sticky.js"></script>
    <!-- scrollUp JS
		============================================ -->
    <script src="js/jquery.scrollUp.min.js"></script>
    <!-- mCustomScrollbar JS
		============================================ -->
    <script src="js/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="js/scrollbar/mCustomScrollbar-active.js"></script>
    <!-- metisMenu JS
		============================================ -->
    <script src="js/metisMenu/metisMenu.min.js"></script>
    <script src="js/metisMenu/metisMenu-active.js"></script>
    <!-- sparkline JS
		============================================ -->
    <script src="js/sparkline/jquery.sparkline.min.js"></script>
    <script src="js/sparkline/jquery.charts-sparkline.js"></script>
    <!-- calendar JS
		============================================ -->
    <script src="js/calendar/moment.min.js"></script>
    <script src="js/calendar/fullcalendar.min.js"></script>
    <script src="js/calendar/fullcalendar-active.js"></script>
	<!-- float JS
		============================================ -->
    <script src="js/flot/jquery.flot.js"></script>
    <script src="js/flot/jquery.flot.resize.js"></script>
    <script src="js/flot/curvedLines.js"></script>
    <script src="js/flot/flot-active.js"></script>
    <!-- plugins JS
		============================================ -->
    <script src="js/plugins.js"></script>
    <!-- main JS
		============================================ -->
    <script src="js/main.js"></script>
</body>

</html>