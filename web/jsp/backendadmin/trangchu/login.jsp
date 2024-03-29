<%-- 
    Document   : login
    Created on : Mar 1, 2019, 5:14:49 PM
    Author     : Đức Huy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<!DOCTYPE html>
<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Login Page - Ace Admin</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="/WebProject/jsp/backendadmin/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="/WebProject/jsp/backendadmin/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="/WebProject/jsp/backendadmin/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="/WebProject/jsp/backendadmin/assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="/WebProject/jsp/backendadmin/assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="/WebProject/jsp/backendadmin/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="/WebProject/jsp/backendadmin/assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="/WebProject/jsp/backendadmin/assets/js/html5shiv.min.js"></script>
		<script src="/WebProject/jsp/backendadmin/assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">Mirora Watch</span>

								</h1>
								<h4 class="blue" id="id-company-text">&copy; Mirora Watch</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Nhập thông tin để đăng nhập
											</h4>

											<div class="space-6"></div>

                                                                                        <f:form action="loginAccountAdmin.htm" commandName="account" onsubmit="return checkDangnhap();">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
                                                                                                                    <f:input path="userName" type="text" id="username_email" class="form-control" placeholder="Tên đăng nhập" />
                                                                                                                    <br/><label  style="color: red"for="" id="txtErrorUserlogin"></label>
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
                                                                                                                    <f:input path="passWord" type="password" id="password" class="form-control" placeholder="Mật khẩu" />
                                                                                                                    <br/><label style="color: red" for="" id="txtErrorpasslogin"></label>
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														

                                                                                                            <button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">Đăng nhập</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</f:form>

										
										</div><!-- /.widget-main -->

							
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

				
							</div><!-- /.position-relative -->

							<div class="navbar-fixed-top align-right">
								<br />
								&nbsp;
								<a id="btn-login-dark" href="#">Dark</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-blur" href="#">Blur</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-light" href="#">Light</a>
								&nbsp; &nbsp; &nbsp;
							</div>
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="/WebProject/jsp/backendadmin/assets/js/jquery.2.1.1.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="/WebProject/jsp/backendadmin/assets/js/jquery.1.11.1.min.js"></script>
<![endif]-->

		<!--[if !IE]> -->
		<script type="text/javascript">
			window.jQuery || document.write("<script src='/WebProject/jsp/backendadmin/assets/js/jquery.min.js'>"+"<"+"/script>");
		</script>
                <script type="text/javascript">
            function checkDangnhap() {
                      var userNamelogin = document.getElementById("username_email");
                    var passwordlogin = document.getElementById("password");
                     if (userNamelogin.value != "" && passwordlogin.value != "") {
                       return true;
                    } else {
                         if (userNamelogin.value == "")
                        {
                            // alert("Nhap user name");
                            // document.getElementById("register_email").focus();
                            // return false;

                            document.getElementById("txtErrorUserlogin").innerHTML = "Bạn chưa nhập tên đăng nhập hoặc email!";
                            document.getElementById("txtErrorUserlogin").className = "error"
                            userNamelogin.focus();
                          
                            return false;
                        }
                        if (passwordlogin.value == "")
                        {
                            // alert("Nhap user name");
                            // document.getElementById("register_email").focus();
                            // return false;

                            document.getElementById("txtErrorpasslogin").innerHTML = "Bạn chưa nhập mật khẩu!";
                            document.getElementById("txtErrorpasslogin").className = "error"
                            passwordlogin.focus();
                          
                            return false;
                        }
                    }
                }
        </script>

		<!-- <![endif]-->

		<!--[if IE]>
<script type="text/javascript">
 window.jQuery || document.write("<script src='/WebProject/jsp/backendadmin/assets/js/jquery1x.min.js'>"+"<"+"/script>");
</script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='/WebProject/jsp/backendadmin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});
			
			
			
			//you don't need this, just used for changing background
			jQuery(function($) {
			 $('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');
				
				e.preventDefault();
			 });
			 
			});
		</script>
	</body>

<!-- Mirrored from ace.jeka.by/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 04 Jan 2019 10:30:06 GMT -->
</html>

