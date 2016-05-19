<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
	<head>

		<title>Link | Khmer Aacademy</title>
		<jsp:include page="../shared/_header.jsp" />
		
		
	</head>
 
	<body class="tooltips no-padding" >
		
		<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
		
		<!-- BEGIN TOP NAVBAR -->
		<jsp:include page="../shared/_menu.jsp" />	
		<!-- END TOP NAVBAR -->
		
	        <!-- Page Content -->
	        <div class="container ka-container"  >
	            
	            
	            <div class="col-sm-3" style="margin-left: -20px">
	            				
	            				<div class="panel panel-primary" style="margin-top: 20px;">
									  <div class="panel-heading" style="background: linear-gradient(#50a253, #4c954d) repeat scroll 0 0 rgba(0, 0, 0, 0);">
										<h3 class="panel-title">
											<!-- <a class="block-collapse" style="color:#006a00;" href="#panel-collapse-course"> -->
											<strong style="color:#fff;">Category</strong>
											<!-- <span class="right-content">
												<span class="right-icon">
													<i class="glyphicon glyphicon-chevron-down icon-collapse"></i>
												</span>
											</span> -->
											<!-- </a> -->
										</h3>
									  </div>
										<div id="panel-collapse-course" class="collapse in">
										  <div class="panel-body" style="padding: 5px;">
											
											<div class="panel-group work-category-wrap" id="getCategory">
											
												
												<div class="r-loading text-center" ><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"></div>
									            
									            					  <div id="div-all" class="panel panel-primary filter" style="display:none">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a  id="findWeb" class="block-collapse collapsed" data-id="empty" style="color:#434a54;" href="#All">
																					All
																				</a>
																			</h3>
																		  </div>
																		</div> 
													            	
																		
											</div><!-- End panel group -->
											
											
										  </div><!-- /.panel-body -->
										</div><!-- /.collapse in -->
								</div><!-- /.panel panel-primary -->
	            				
	            	</div>	
	            	
	            	
	            <div class="col-sm-9" style="margin-top:20px">
	            
	            		<div class="l-loading text-center" ><img src="${pageContext.request.contextPath}/resources/assets/img/loading.gif"></div>
	            			
	            		<div id="getWebsite">
	            		
	            		</div>
	            	
	            </div>
	            	
	            	
	            	
	            			
	            	
	            	
							
				
	                   
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    <!-- /#wrapper -->
	    
	    
	    
		
		<!-- BEGIN FOOTER -->
		<jsp:include page="../shared/_footer.jsp" />
		
		<script id="category_tmpl" type="text/x-jquery-tmpl">
				<div class="panel panel-primary filter">
						<div class="panel-heading" style="background:#F5F7FA;">
								<h3 class="panel-title">
									<a  id="findWeb" class="block-collapse collapsed" data-id="{{= id }}" style="color:#434a54;" href="#-{{= name }}">
										{{= name }}
									</a>
								</h3>
						 </div>
				</div>
		</script>
		
		<script id="website_tmpl" type="text/x-jquery-tmpl">
				<div class="col-md-3 col-xs-6" style="height:100px;display: -webkit-box;">		
					<div>
						<a href="${pageContext.request.contextPath}/website/view/{{= id }}?url={{= link }}" target="_blank">
							<img width="60px" height="60px" src="{{= logoUrl }}" alt="...">
						</a>
					</div>
					<div class="caption text-left  shortenString" style="padding: 10px;width:80%;padding-top: 17px;">                       
						<p class="small shortenString">                       
							<a target="_blank" class="no-underline" href="${pageContext.request.contextPath}/website/view/{{= id }}?url={{= link }}" style="font-size: 14px;color: #4D4D4D;">                         
								{{= title }}               
							</a>   
						</p>              
					</div>
				</div>
		</script>		
		
		<script type="text/javascript">
			 $(document).ready(function(){
				 
				var page = 1;
				var totalPage = 0;
				var cate = "empty";
				 
				 showCategory = function(){ 
			    		$.ajax({
			    			url :"${pageContext.request.contextPath}/rest/website/findAllCategory",
							method: 'GET',
							success:function(data){
								console.log(data);
								$("#div-all").show();
								$("#category_tmpl").tmpl(data.LIST_CATEGORY).appendTo("#getCategory");
								$(".r-loading").hide();
							}
						});	
			    };
			    
			    var progress = null;
			    showWebsite = function(cate,page){ 
			    	if (progress) {
			    		progress.abort();
			    	}
			    	progress  = $.ajax({
		    			url :"${pageContext.request.contextPath}/rest/website/findAllWebsiteByCategoryId/"+cate+"?page="+page+"&item=20",
						method: 'GET',
						success:function(data){
							console.log(data);
							if(data.STATUS_WEBSITE == true){
								$("#website_tmpl").tmpl(data.LIST_WEBSTIE).appendTo("#getWebsite");
								$(".l-loading").hide();
							}else{
								$("#getWebsite").html("<h1>No data</h1>");
								$(".l-loading").hide();
							}
						}
					});	
		   		 };
			    	
		   		$(document).on('click',"#findWeb" , function(){  
					page = 1;
					cate = $(this).data("id"); 
					$("title").text($(this).text().trim() + " Link | Khmer Academy");
					$("#getWebsite").empty();
					$(".l-loading").show();
					showWebsite(cate,1);
				});
			    	
			    showCategory();
			    showWebsite("empty",page)
				
			 });
		</script>
		
		 
																
																
		 	
		
		
	</body>
</html>