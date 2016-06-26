<%@page import="org.springframework.security.core.context.SecurityContextHolder"%>
<%@page import="org.springframework.security.core.Authentication"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Register</title>
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
	
	
								<div class="panel with-nav-tabs panel-primary">
															  <div class="panel-heading" style="background:rgb(78, 156, 80)">
																<ul class="nav nav-tabs">
																	<li class="active"><a style="font-size: 22px;" href="#panel-facebook" data-toggle="tab"><spring:message code="rp_sign_up_with_facebook1"/></a></li>
																	<li class=""><a style="font-size: 22px;" href="#panel-email" data-toggle="tab" ><spring:message code="rp_sign_up_ka1"/></a></li>
																</ul>
															  </div>
																<div id="panel-collapse-1" class="collapse in" aria-expanded="true">
																	<div class="panel-body" style="min-height:380px">
																	
																		<div class="tab-content">
																			<div class="tab-pane fade active in" id="panel-facebook">
																				
																					<div class="col-sm-12">
																						<div class="the-box bg-default no-border" id="fbDiv" style="display:none;">
																						
																							<div class="alert alert-default  square fade in alert-dismissable">
																								<strong class="alert-link"><spring:message code="rp_sign_up_with_facebook"/></strong>
																							</div>
																							
																							<button id="btFacebook" onclick="Login()"  style="height: 70px;background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block btn-lg"><i class="fa fa-facebook"></i> <spring:message code="rp_by_fb"/></button>
																							
																							<div style="display:none" id="fb-loading" class="loading text-center" ><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"></div>
																							
																								
																						</div><!-- /.the-box .bg-danger .no-border-->
																					</div>
																				
																			</div>
																			
																			<div class="tab-pane fade" id="panel-email">
																					
																					<div class="col-sm-6">
																						<div class="the-box bg-default no-border">
																						
																							<div class="alert alert-default  square fade in alert-dismissable">
																								<strong class="alert-link"><spring:message code="rp_sign_up_ka"/>
																										
																										<span onclick="myFunction()" style="cursor:pointer;color:red;font-size: 15px;">
																						                        				 * <spring:message code="m_guide"/>
																						                        			</span>
																								
																								</strong>
																							</div>
																						
																						
															
																							
																							
																							<form class="form-horizontal m-t-20" id="frmSignUp" action="${pageContext.request.contextPath}/signup" method="POST">
																                    
																				                    <div id="message-re"></div>
																				                    
																				                    
																				                     <div class="col-lg-12">
																						                    <div class="form-group ">
																						                        <div class="col-lg-12">
																						                        	<label><spring:message code="rp_email"/> <span style="color:red">* សូមប្រើប្រាស់អ៊ីមែលពិតប្រាកដរបស់ដើម្បីធ្វើកាចុះឈ្មោះ</span></label>
																						                            <input class="form-control rounded bold-border" type="email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="email" id="email" placeholder="">
																						                        </div>
																						                    </div>
																						                    
																						                    <div class="form-group ">
																						                        <div class="col-lg-12">
																						                        	<label><spring:message code="rp_username"/> <span style="color:red">*</span></label>
																						                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('Username is required!')" oninput="setCustomValidity('')" name="username" id="username" placeholder="">
																						                        </div>
																						                    </div>
																						
																						                    <div class="form-group">
																						                        <div class="col-lg-12">
																						                        	<label><spring:message code="rp_pwd"/> <span style="color:red">*</span></label>
																						                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is required!')" oninput="setCustomValidity('')" name="password"  id="password" placeholder="">
																						                        </div>
																						                    </div>
																						                    
																						                    <div class="form-group">
																						                        <div class="col-lg-12">
																						                        	<label><spring:message code="rp_conf_pwd"/> <span style="color:red">*</span></label>
																						                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The Confirm Password is required!')" oninput="setCustomValidity('')" name="repassword"  id="repassword" placeholder="">
																						                        </div>
																						                    </div>
																						                
																						                    <div class="form-group">
																						                    	<div class="col-lg-12">
																						                    			<label>ភេទ<span style="color:red">*</span></label>
																														<select class="form-control rounded bold-border" id="getGender">
																															<option value="male" >ប្រុស</option>
																															<option value="female">ស្រី</option>
																														</select>
																												</div>
																											</div>
																											
																											<div class="form-group">
																						                    	<div class="col-lg-12">
																						                    			<label><spring:message code="rp_department"/> <span style="color:red">*</span></label>
																														<select placeholder="<spring:message code="rp_department"/>" class="form-control rounded bold-border" id="getDepartment">
																															
																														</select>
																												</div>
																											</div>
																											
																						                    <div class="form-group">
																						                    	<div class="col-lg-12">
																						                    			<label><spring:message code="rp_university"/> <span style="color:red">*</span></label>
																														<select placeholder="<spring:message code="rp_university"/>" class="form-control rounded bold-border" id="getUniversity">
																															
																														</select>
																												</div>
																											</div>
																											
																									</div>
																				                    
																				                    
																				                    <div class="form-group text-center m-t-40">
																				                        <div class="col-xs-12">
																				                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit"><spring:message code="rp_sign_up"/></button>
																				                        </div>
																				                    </div>
																					
																					 				<div class="form-group text-center m-t-40">
																				                        <div class="col-xs-12">
																				                            <spring:message code="rp_already_acc"/> <a href="${pageContext.request.contextPath}/login"><spring:message code="rp_login"/></a>
																				                        </div>
																				                    </div>
																				                    
																				                    
																				                    
																				                    
																				            </form>
																							<hr>
																							
																							
																						</div><!-- /.the-box .bg-danger .no-border-->
																					</div>
																					
																					
																					
																					<div class="col-sm-6">
																					
																							<iframe src="https://drive.google.com/file/d/0BxAxFWzKOXf1eUpZV3R1dzloelk/preview" width="100%" height="800px"></iframe>
																					
																					
																					</div>
																					
																			</div>
																		</div><!-- /.tab-content -->
																		
																					
																	</div><!-- /.panel-body -->
																</div><!-- /.collapse in -->
						</div>						
						
						
						
						
						
						<%-- <div class="col-sm-6">
							<div class="the-box bg-default no-border" id="fbDiv" style="display:none">
							
								<div class="alert alert-default  square fade in alert-dismissable">
									<strong class="alert-link"><spring:message code="rp_sign_up_with_facebook"/></strong>
								</div>
								
								<button id="btFacebook" onclick="Login()" style="background:#4B66A0;border-color: #4B66A0;color: #fff;" class="btn btn-facebook btn-block btn-lg"><i class="fa fa-facebook"></i> Facebook</button>
								
								<div style="display:none" id="fb-loading" class="loading text-center" ><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"></div>
								
									
							</div><!-- /.the-box .bg-danger .no-border-->
						</div> --%>
					
					
						<%-- <div class="col-sm-6">
							<div class="the-box bg-default no-border">
							
								<div class="alert alert-default  square fade in alert-dismissable">
									<strong class="alert-link"><spring:message code="rp_sign_up_ka"/>
											
											<span onclick="myFunction()" style="cursor:pointer;color:red;font-size: 15px;">
							                        				 * <spring:message code="m_guide"/>
							                        			</span>
									
									</strong>
								</div>
							
							

								
								
								<form class="form-horizontal m-t-20" id="frmSignUp" action="${pageContext.request.contextPath}/signup" method="POST">
	                    
					                    <div id="message-re"></div>
					                    
					                    
					                     <div class="col-lg-12">
							                    <div class="form-group ">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_email"/> <span style="color:red">* សូមប្រើប្រាស់អ៊ីមែលពិតប្រាកដរបស់ដើម្បីធ្វើកាចុះឈ្មោះ</span></label>
							                            <input class="form-control rounded bold-border" type="email" required="required" oninvalid="this.setCustomValidity('The email is incorrect!')" oninput="setCustomValidity('')" name="email" id="email" placeholder="">
							                        </div>
							                    </div>
							                    
							                    <div class="form-group ">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_username"/> <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="text" required="required" oninvalid="this.setCustomValidity('Username is required!')" oninput="setCustomValidity('')" name="username" id="username" placeholder="">
							                        </div>
							                    </div>
							
							                    <div class="form-group">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_pwd"/> <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The password is required!')" oninput="setCustomValidity('')" name="password"  id="password" placeholder="">
							                        </div>
							                    </div>
							                    
							                    <div class="form-group">
							                        <div class="col-lg-12">
							                        	<label><spring:message code="rp_conf_pwd"/> <span style="color:red">*</span></label>
							                            <input class="form-control rounded bold-border" type="password" required="required" oninvalid="this.setCustomValidity('The Confirm Password is required!')" oninput="setCustomValidity('')" name="repassword"  id="repassword" placeholder="">
							                        </div>
							                    </div>
							                
							                    <div class="form-group">
							                    	<div class="col-lg-12">
							                    			<label>ភេទ<span style="color:red">*</span></label>
															<select class="form-control rounded bold-border" id="getGender">
																<option value="male" >ប្រុស</option>
																<option value="female">ស្រី</option>
															</select>
													</div>
												</div>
												
												<div class="form-group">
							                    	<div class="col-lg-12">
							                    			<label><spring:message code="rp_department"/> <span style="color:red">*</span></label>
															<select placeholder="<spring:message code="rp_department"/>" class="form-control rounded bold-border" id="getDepartment">
																
															</select>
													</div>
												</div>
												
							                    <div class="form-group">
							                    	<div class="col-lg-12">
							                    			<label><spring:message code="rp_university"/> <span style="color:red">*</span></label>
															<select placeholder="<spring:message code="rp_university"/>" class="form-control rounded bold-border" id="getUniversity">
																
															</select>
													</div>
												</div>
												
										</div>
					                    
					                    
					                    <div class="form-group text-center m-t-40">
					                        <div class="col-xs-12">
					                            <button class="btn btn-primary w-lg waves-effect waves-light" type="submit"><spring:message code="rp_sign_up"/></button>
					                        </div>
					                    </div>
						
						 				<div class="form-group text-center m-t-40">
					                        <div class="col-xs-12">
					                            <spring:message code="rp_already_acc"/> <a href="${pageContext.request.contextPath}/login"><spring:message code="rp_login"/></a>
					                        </div>
					                    </div>
					                    
					                    
					                    
					                    
					            </form>
								<hr>
								
								
							</div><!-- /.the-box .bg-danger .no-border-->
						</div> --%>
						
						
						
						
						
						
						
		</div>
		
		
		 
		
		
		<!-- End My Contend -->
		<script src="${pageContext.request.contextPath}/resources/assets/js/sweetalert2.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/facebookscript.js"></script>
		<jsp:include page="shared/_footer.jsp" />
		
		<script type="text/javascript">
		   var path =  "${pageContext.request.contextPath}";
		</script>
		  
		  
		  <script type="text/javascript">
		  $(document).ready(function(){
				  listDepartment_University = function(){
// 						KA.createProgressBarWithPopup();
						$.ajax({ 
						    url: "${pageContext.request.contextPath}/rest/listuniversity_department", 
						    type: 'GET',
						    beforeSend: function(xhr) {
			                    xhr.setRequestHeader("Accept", "application/json");
			                    xhr.setRequestHeader("Content-Type", "application/json");
			                },
						    success: function(data) { 
// 								console.log(data);
								$("#department_tmpl").tmpl(data.DEPARTMENT).appendTo("#getDepartment");
								$("#university_tmpl").tmpl(data.UNIVERSITY).appendTo("#getUniversity");
								KA.destroyProgressBarWithPopup();
						    },
						    error:function(data,status,er) { 
// 						    	KA.destroyProgressBarWithPopup();
						        console.log("error: "+data+" status: "+status+" er:"+er);
						    }
						});
					};
				listDepartment_University();
				
				
				$("#fbDiv").show();
				
// 				alert("  tola tola   tola  ".replace(/ /g, ''));
				   
		  });
		  
		  	function myFunction() {
			    var myWindow = window.open("", "MsgWindow", "width=1000,height=950");
			    myWindow.document.write('<iframe height="600" width="100%" src="https://drive.google.com/file/d/0BxAxFWzKOXf1ZFp6c1d2TUpsbEE/preview"></iframe><iframe width="100%" height="400" src="https://www.youtube.com/embed/tt5f4ZtnJgk" frameborder="0" allowfullscreen></iframe>');
			}
		  
		  </script>
		  
		 
		  
		
		
		  
		  
	</body>
</html>