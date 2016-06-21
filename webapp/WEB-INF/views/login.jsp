<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>

				<%
					Authentication authentication =  SecurityContextHolder.getContext().getAuthentication();
					if(authentication.getPrincipal().equals("anonymousUser")){
						//response.sendRedirect("/");
					}
				%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Login</title>
		<jsp:include page="shared/_header.jsp" />		
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/css/sweetalert2.css">
	</head>
 
	<body class="tooltips no-padding">
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="shared/_menu.jsp" />
		<!-- END TOP NAVBAR -->
		
		
		<!-- My Contend -->
		
		<div class="container ka-container" >
	
						
						
						
						
						
						
						<div class="col-sm-6">
							<div class="the-box bg-default no-border" id="fbDiv" style="display:none">
							
								<div class="alert alert-default  square fade in alert-dismissable">
									<strong class="alert-link"><spring:message code="lp_loing_with_facebook"/></strong>
								</div>
								
								<button onclick="Login()" style="background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block btn-lg"><i class="fa fa-facebook"></i> Facebook</button>
									
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
						
						<div class="col-sm-6">
							<div class="the-box bg-default no-border">
							
<!-- 							<h4 class="small-title">You are not authorized to access this page!</h4> -->
							<c:if test="${param.logout == null}">
								<div class="alert alert-default  square fade in alert-dismissable">
		<!-- 						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> -->
									<strong class="alert-link"><spring:message code="lp_login_ka"/></strong>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-info alert-bold-border square fade in alert-dismissable">
	<!-- 							<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button> -->
									<strong class="alert-link">You've successfully logged out!</strong>
								</div>
							</c:if>
								

								
								
								<form role="form" id="frmLogin" action="${pageContext.request.contextPath}/login">
									 
									  <div id="message"></div>
									  
									  <div class="form-group">
										<label><spring:message code="lp_email"/></label>
										<input type="text" id="ka_email" class="form-control" placeholder="" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="ka_username">
									  </div>
									  <div class="form-group">
										<label><spring:message code="lp_password"/></label>
										<input type="password" id="ka_password" class="form-control" placeholder="" required="required"  oninvalid="this.setCustomValidity('The password is incorrect!')" oninput="setCustomValidity('')" name="ka_password">
									  </div>
									  
									  
									   <!-- <div class="form-group ">
					                        <div class="col-xs-12">
					                            <div class="checkbox checkbox-primary">
					                                <input id="checkbox-signup" type="checkbox">
					                                <label for="checkbox-signup">
					                                    Remember me
					                                </label>
					                            </div>
					                            
					                        </div>
					                    </div> -->
					                    
					                    <div class="form-group text-center">
					                    	<button type="submit" class="btn btn-primary"><spring:message code="lp_login"/></button>
					                    </div>
					                    
					                    <div class="form-group m-t-30">
					                        <div class="col-sm-7">
												<a href="#reset" id="btFrmreset"><i class="fa fa-lock m-r-5"></i><spring:message code="lp_forgot_pwd"/></a>					                        </div>
					                        <div class="col-sm-5 text-right">
					                            <a href="${pageContext.request.contextPath}/register" class="btSignUp00000"><spring:message code="lp_create_acc"/></a>
					                        </div>
					                    </div>
					                    
					                    
					                    <div class="form-group " >
							                        <div class="col-lg-12" style="margin-top:30px">
							                        	<label>
							                        			<span style="color:red;font-size: 15px;">* ប្រសិនបើអ្នកមានបញ្ហាចំពោះការ Login ឬ  Register សូមលោកអ្នកធ្វើតាមការណែនាំដែលមាននៅក្នុង ឯកសារនេះ ឬ ទំនាក់ទំនងមកកាន់ក្រុមរបស់យើងតាមរយៈ​ 
							                        									<br> ទូរស័ព្ទលេខ : 016 747 264, 093 982 898,​ 016 600 701 
							                        									<br> អ៊ីមែល : tolapheng99@gmail.com  ,  pirangphan@gmail.com , yinkokpheng@gmail.com 
							                        			</span>
							                        	</label>
							                        </div>
							             </div>
								  
								</form>
								<hr>
								
								
							</div><!-- /.the-box .bg-danger .no-border-->
						</div>
			
			
										
										
			
						
		</div>
		
		
		
		
		<!-- End My Contend -->
		
		<script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/facebookscript.js"></script>
		
		
		<jsp:include page="shared/_footer.jsp" />
		
		<script type="text/javascript">
		   var path =  "${pageContext.request.contextPath}";
		   $(document).ready(function(){
			   $("#fbDiv").show();
		   });
		</script>
		  
		  
		<script type="text/javascript">
			if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {
	   			$("#p-IfMobile").bPopup();
	   			if(/Android/i.test(navigator.userAgent) ) {
		   			$("#dwnApp").attr("href","https://play.google.com/store/apps/details?id=org.khmeracademy");
		   		}else if(/iPhone|iPad|iPod/i.test(navigator.userAgent)){
		   			$("#dwnApp").attr("href","https://itunes.apple.com/kh/app/khmer-academy/id1082906587?mt=8");
		   		}
	   		}
		</script>  
		  
	</body>
</html>