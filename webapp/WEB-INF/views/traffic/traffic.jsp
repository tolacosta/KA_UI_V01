<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
	<head>

		<title>Traffic |Khmer Aacademy</title>
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
											<strong style="color:#fff;">LIVE TRAFFIC CAMERAS</strong>
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
											
											<div class="panel-group work-category-wrap" id="accordion-2">
											
												
								
									            
									            					<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed" data-id="7-makara-skybridge" style="color:#434a54;" href="#7-makara-skybridge">
																					<b id="mName">ស្ពានអាកាស ៧មករា</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
													            	
																		
													            	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="kbal-thnol" style="color:#434a54;" href="#kbal-thnol">
																					<b id="mName">ស្ពានអាកាសក្បាលថ្នល់</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MTc=" style="color:#434a54;" href="#">
																					<b id="mName">ផ្លូវមាត់ទន្លេ</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MTk=" style="color:#434a54;" href="#">
																					<b id="mName">ស្ដុបព្រះមុនីវង្ស</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MjE=" style="color:#434a54;" href="#">
																					<b id="mName">ស្ដុប Intercon</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MQ==" style="color:#434a54;" href="#">
																					<b id="mName">រង្វង់មូលកាំកូស៊ីធី</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MjM=" style="color:#434a54;" href="#">
																					<b id="mName">ស្ដុបទួលគោក</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MjY=" style="color:#434a54;" href="#">
																					<b id="mName">រង្វង់មូលចោមចៅ</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MjI=" style="color:#434a54;" href="#">
																					<b id="mName">ស្ពានអាកាសស្ទឹងមានជ័យ</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MjQ=" style="color:#434a54;" href="#">
																					<b id="mName">ស្ដុបអូឡាំពិក</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a class="block-collapse collapsed listByMainCategory" data-id="MjQ=" style="color:#434a54;" href="#">
																					<b id="mName">រតនាផ្លាហ្សា</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																	
																	
													
																</div><!-- End panel group -->
											
											
										  </div><!-- /.panel-body -->
										</div><!-- /.collapse in -->
								</div><!-- /.panel panel-primary -->
	            				
	            	</div>		
	            			
	            	
	            	<div class="col-sm-9">
	            	
	            			<div class="pagecontent">
								<h2 style="font-weight: bold;color: #000;"> KBAL THNOL </h2>
								<div id="avs_video" style="width:100%;">
								  <div class="avs_video_header">
								                <div style="clear:both;"></div>
								  </div>
								  <div class="avs_player">
								  		 <object id="player" name="player" width="100%" height="400">
								  		 <param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=49280241">
								  		 <param name="wmode" value="opaque">
								  		 <param name="allowfullscreen" value="true">
								  		 <param name="allowscriptaccess" value="always">
								  		 <param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=39&amp;pid=2">
									  		 <object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1396598276" width="600" height="400">
									  		 <param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=68997246">
									  		 <param name="wmode" value="opaque">
									  		 <param name="allowfullscreen" value="true">
									  		 <param name="allowscriptaccess" value="always">
									  		 <param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=39&amp;pid=2">
									  		 </object>
								  		 </object> 
								  </div>
								  <div class="power"><span style="font-size: 27px;font-weight: bold;color: #000;">POWER BY</span> <a href="http://www.ezecom.com.kh/km/7-makara-skybridge" target="_blank"><img style="margin-top: -13px;" src="http://khmer123.com/template/img/ezecom.png"></a></div>
								</div>
							 </div>
	            	
	            	</div>
							
				
	                   
	        </div>
	        <!-- /#page-content-wrapper -->
	
	    <!-- /#wrapper -->
	    
	    
	    
		
		<!-- BEGIN FOOTER -->
		<jsp:include page="../shared/_footer.jsp" />
		
		
		
		 
																
																
		 	
		
		
	</body>
</html>