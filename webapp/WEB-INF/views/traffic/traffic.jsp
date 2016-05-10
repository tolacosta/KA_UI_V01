<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
	<head>

		<title>Traffic | Khmer Aacademy</title>
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
																				<a  id="7-makara-skybridge" class="block-collapse collapsed" data-id="7-makara-skybridge" style="color:#434a54;" href="#traffic-7-makara-skybridge">
																					<b>ស្ពានអាកាស ៧មករា</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
													            	
																		
													            	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="kbal-thnol" class="block-collapse collapsed listByMainCategory" data-id="kbal-thnol" style="color:#434a54;" href="#traffic-kbal-thnol">
																					<b>ស្ពានអាកាសក្បាលថ្នល់</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="riverside" class="block-collapse collapsed listByMainCategory" data-id="MTc=" style="color:#434a54;" href="#traffic-riverside">
																					<b>ផ្លូវមាត់ទន្លេ</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="monivong" class="block-collapse collapsed listByMainCategory" data-id="MTk=" style="color:#434a54;" href="#traffic-monivong">
																					<b>ស្ដុបព្រះមុនីវង្ស</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="intercon" class="block-collapse collapsed listByMainCategory" data-id="MjE=" style="color:#434a54;" href="#traffic-intercon">
																					<b>ស្ដុប Intercon</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="camko-cycle" class="block-collapse collapsed listByMainCategory" data-id="MQ==" style="color:#434a54;" href="#traffic-camko-cycle">
																					<b>រង្វង់មូលកាំកូស៊ីធី</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="2013-09-30-03-12-40" class="block-collapse collapsed listByMainCategory" data-id="MjM=" style="color:#434a54;" href="#traffic-2013-09-30-03-12-40">
																					<b>ស្ដុបទួលគោក</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="chaom-chao" class="block-collapse collapsed listByMainCategory" data-id="MjY=" style="color:#434a54;" href="#traffic-chaom-chao">
																					<b>រង្វង់មូលចោមចៅ</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="steung-meanchey" class="block-collapse collapsed listByMainCategory" data-id="MjI=" style="color:#434a54;" href="#traffic-steung-meanchey">
																					<b>ស្ពានអាកាសស្ទឹងមានជ័យ</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		
																	
																	
																	
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="olympic" class="block-collapse collapsed listByMainCategory" data-id="MjQ=" style="color:#434a54;" href="#traffic-olympic">
																					<b>ស្ដុបអូឡាំពិក</b>
																				</a>
																			</h3>
																		  </div>
																		</div><!-- /.panel panel-primary -->
																		
																		<div class="panel panel-primary filter">
																		  <div class="panel-heading" style="background:#F5F7FA;">
																			<h3 class="panel-title">
																				<a id="ratana-plaza" class="block-collapse collapsed listByMainCategory" data-id="MjQ=" style="color:#434a54;" href="#traffic-ratana-plaza">
																					<b>រតនាផ្លាហ្សា</b>
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
								<h2 style="font-weight: bold;color: #000;" id="traffic_name"> ស្ពានអាកាស ៧មករា </h2>
								<div id="avs_video" style="width:100%;">
								  <div class="avs_video_header">
								                <div style="clear:both;"></div>
								  </div>
								  <div class="avs_player">
								  		 <object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=269242483"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=38&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1699023422" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=962987144"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=38&amp;pid=2"></object></object>
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
		
		${location}
		<script type="text/javascript">
			 $(document).ready(function(){
				
				 
				 
				 $("#7-makara-skybridge").click(function(){
					 console.log(0);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=269242483"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=38&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1699023422" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=962987144"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=38&amp;pid=2"></object></object>'); 
				 });
				 $("#kbal-thnol").click(function(){
					 console.log(1);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1987423462"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=39&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=655382936" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1773698546"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=39&amp;pid=2"></object></object>'); 
				 });
				 $("#riverside").click(function(){
					 console.log(2);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=196326693"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=40&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1132717240" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1699713338"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=40&amp;pid=2"></object></object>'); 
				 });
				 $("#monivong").click(function(){
					 console.log(3);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=657418842"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=41&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=773539197" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=528710246"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=41&amp;pid=2"></object></object>'); 
				 });
				 $("#intercon").click(function(){
					 console.log(4);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=910601931"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=42&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=2107669614" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1721296552"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=42&amp;pid=2"></object></object>'); 
				 });
				 $("#camko-cycle").click(function(){
					 console.log(5);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=762719971"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=43&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1645067962" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1759328691"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=43&amp;pid=2"></object></object>'); 
				 });
				 $("#2013-09-30-03-12-40").click(function(){
					 console.log(6);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=399262437"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=44&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=187202127" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=251115652"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=44&amp;pid=2"></object></object>'); 
				 });
				 $("#chaom-chao").click(function(){
					 console.log(7);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=855187566"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=46&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=548099940" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1220307811"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=46&amp;pid=2"></object></object>'); 
				 });
				 $("#steung-meanchey").click(function(){
					 console.log(8);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=93574082"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=47&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=99246651" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1865013653"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=47&amp;pid=2"></object></object>'); 
				 });
				 $("#olympic").click(function(){
					 console.log(9);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=255025901"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=48&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=149289414" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1565222888"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=48&amp;pid=2"></object></object>'); 
				 });
				 $("#ratana-plaza").click(function(){
					 console.log(10);
					 $("#traffic_name").text($(this).text());
					 $("#player").html('<object id="player" name="player" width="100%" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=1860520924"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=135&amp;pid=2"><object type="application/x-shockwave-flash" data="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=180265286" width="600" height="400"><param name="movie" value="http://www.ezecom.com.kh/components/com_allvideoshare/player.swf?random=2075302305"><param name="wmode" value="opaque"><param name="allowfullscreen" value="true"><param name="allowscriptaccess" value="always"><param name="flashvars" value="base=http://www.ezecom.com.kh/&amp;vid=135&amp;pid=2"></object></object>'); 
				 });
				 
				 var location = "${location}";
				   if(location != "default"){
					   alert(location);
					   $("#"+location).click();
				   }
			 });
		</script>
		
		 
																
																
		 	
		
		
	</body>
</html>