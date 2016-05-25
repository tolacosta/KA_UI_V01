<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>E-Learning</title>
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
	        <div class="container ka-container"  style="min-height:400px;width:80%" >
	            		
	            <div class="row">	
		            <div class="col-sm-6">
		            		
		            		<div class="panel panel-default">
							  <div class="panel-heading" style="background:rgb(78, 156, 80);height: 40px;">
								<div class="right-content">
									<button class="btn btn-default btn-sm btn-rounded-lg to-collapse" data-toggle="collapse" data-target="#ComputerSicence" aria-expanded="true"><i class="fa fa-chevron-up"></i></button>
								</div>
								<h1 style=" color: white;font-weight: bold;"  class="panel-title">Computer Science</h1>
							  </div>
								<div id="ComputerSicence" class="collapse in" aria-expanded="true">
								  <div class="panel-body">
											
										<div class="col-sm-12">
											<div class="panel-group" id="accordion-1">
												<div class="panel panel-default">
												  <div class="panel-heading">
													<h3 class="panel-title">
														<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#ComputerSicence-accordion-1-child-1" aria-expanded="false">
														Programming
														<span class="right-content">
															<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
														</span>
														</a>
													</h3>
												  </div>
													<div id="ComputerSicence-accordion-1-child-1" class="collapse" aria-expanded="false" style="height: 0px;">
													  <div class="panel-body">
														
															<div class="col-sm-12">
																<div class="panel-group" id="accordion-2">
																	<div class="panel panel-primary">
																	  <div class="panel-heading">
																		<h3 class="panel-title">
																			<a class="block-collapse collapsed" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-1" aria-expanded="false">
																			JAVA J2SE
																			<span class="right-content">
																				<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																			</span>
																			</a>
																		</h3>
																	  </div>
																		<div id="accordion-2-child-1" class="collapse" aria-expanded="false" style="height: 0px;">
																		  <div class="panel-body">
																				
																				<div class="list-group success">
																				  <a href="#fakelink" class="list-group-item">1.1 - Introduction & Overview</a>
																				  <a href="#fakelink" class="list-group-item">1.1 - Introduction & Overview</a>
																				  <a href="#fakelink" class="list-group-item">1.3 - Basic Syntax</a>
																				  <a href="#fakelink" class="list-group-item">1.4 - Object & Classes</a>
																				  <a href="#fakelink" class="list-group-item">2.1 - Basic Datatypes</a>
																				</div>
																					
																					 
																		  </div><!-- /.panel-body -->
																		</div><!-- /.collapse in -->
																	</div><!-- /.panel panel-primary -->
																	<div class="panel panel-primary">
																	  <div class="panel-heading">
																		<h3 class="panel-title">
																			<a class="block-collapse collapsed" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-2" aria-expanded="false">
																			JAVA J2EE
																			<span class="right-content">
																				<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																			</span>
																			</a>
																		</h3>
																	  </div>
																		<div id="accordion-2-child-2" class="collapse" aria-expanded="false" style="height: 0px;">
																		  <div class="panel-body">
																			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
																		  </div><!-- /.panel-body -->
																		</div><!-- /.collapse in -->
																	</div><!-- /.panel panel-success -->
																	<div class="panel panel-primary">
																	  <div class="panel-heading">
																		<h3 class="panel-title">
																			<a class="block-collapse collapsed" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-3" aria-expanded="false">
																			C#
																			<span class="right-content">
																				<span class="right-icon">
																					<i class="glyphicon glyphicon-plus icon-collapse"></i>
																				</span>
																			</span>
																			</a>
																		</h3>
																	  </div>
																		<div id="accordion-2-child-3" class="collapse" aria-expanded="false">
																		  <div class="panel-body">
																			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
																		  </div><!-- /.panel-body -->
																		</div><!-- /.collapse in -->
																	</div><!-- /.panel panel-info -->
																	<div class="panel panel-primary">
																	  <div class="panel-heading">
																		<h3 class="panel-title">
																			<a class="block-collapse collapsed" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-4" aria-expanded="false">
																			Collapse group item 4
																			<span class="right-content">
																				<span class="right-icon">
																					<i class="glyphicon glyphicon-plus icon-collapse"></i>
																				</span>
																			</span>
																			</a>
																		</h3>
																	  </div>
																		<div id="accordion-2-child-4" class="collapse" aria-expanded="false">
																		  <div class="panel-body">
																			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
																		  </div><!-- /.panel-body -->
																		</div><!-- /.collapse in -->
																	</div><!-- /.panel panel-danger -->
																	<div class="panel panel-primary">
																	  <div class="panel-heading">
																		<h3 class="panel-title">
																			<a class="block-collapse collapsed" data-parent="#accordion-2" data-toggle="collapse" href="#accordion-2-child-5" aria-expanded="false">
																			Collapse group item 5
																			<span class="right-content">
																				<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																			</span>
																			</a>
																		</h3>
																	  </div>
																		<div id="accordion-2-child-5" class="collapse" aria-expanded="false" style="height: 0px;">
																		  <div class="panel-body">
																			Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
																		  </div><!-- /.panel-body -->
																		</div><!-- /.collapse in -->
																	</div><!-- /.panel panel-warning -->
																</div><!-- /.panel-group -->
															</div> 
													  
													  </div><!-- /.panel-body -->
													</div><!-- /.collapse in -->
												</div><!-- /.panel panel-default -->
												<div class="panel panel-default">
												  <div class="panel-heading">
													<h3 class="panel-title">
														<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#ComputerSicence-accordion-1-child-2" aria-expanded="false">
														Mobile Programming
														<span class="right-content">
															<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
														</span>
														</a>
													</h3>
												  </div>
													<div id="ComputerSicence-accordion-1-child-2" class="collapse" aria-expanded="false" style="height: 0px;">
													  <div class="panel-body">
														Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
													  </div><!-- /.panel-body -->
													</div><!-- /.collapse in -->
												</div><!-- /.panel panel-default -->
												<div class="panel panel-default">
												  <div class="panel-heading">
													<h3 class="panel-title">
														<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#ComputerSicence-accordion-1-child-3" aria-expanded="false">
														Web Design
														<span class="right-content">
															<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
														</span>
														</a>
													</h3>
												  </div>
													<div id="ComputerSicence-accordion-1-child-3" class="collapse" aria-expanded="false" style="height: 0px;">
													  <div class="panel-body">
														Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
													  </div><!-- /.panel-body -->
													</div><!-- /.collapse in -->
												</div><!-- /.panel panel-default -->
												<div class="panel panel-default">
												  <div class="panel-heading">
													<h3 class="panel-title">
														<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#ComputerSicence-accordion-1-child-4" aria-expanded="false">
														Design
														<span class="right-content">
															<span class="right-icon">
																<i class="glyphicon glyphicon-plus icon-collapse"></i>
															</span>
														</span>
														</a>
													</h3>
												  </div>
													<div id="ComputerSicence-accordion-1-child-4" class="collapse" aria-expanded="false">
													  <div class="panel-body">
														Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
													  </div><!-- /.panel-body -->
													</div><!-- /.collapse in -->
												</div><!-- /.panel panel-default -->
												<div class="panel panel-default">
												  <div class="panel-heading">
													<h3 class="panel-title">
														<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#ComputerSicence-accordion-1-child-5" aria-expanded="false">
														Computer Basic
														<span class="right-content">
															<span class="right-icon">
																<i class="glyphicon glyphicon-plus icon-collapse"></i>
															</span>
														</span>
														</a>
													</h3>
												  </div>
													<div id="ComputerSicence-accordion-1-child-5" class="collapse" aria-expanded="false">
													  <div class="panel-body">
														Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
													  </div><!-- /.panel-body -->
													</div><!-- /.collapse in -->
												</div><!-- /.panel panel-default -->
											</div><!-- /.panel-group -->
										</div>
											
								  </div><!-- /.panel-body -->
								
								</div><!-- /.collapse in -->
							</div>
		            
		           	 </div>
		             <div class="col-sm-6">
			            		
			            		<div class="panel panel-default">
								  <div class="panel-heading" style="background:rgb(78, 156, 80);height: 40px;">
									<div class="right-content">
										<button class="btn btn-default btn-sm btn-rounded-lg to-collapse" data-toggle="collapse" data-target="#HG" aria-expanded="true"><i class="fa fa-chevron-up"></i></button>
									</div>
									<h1 style=" color: white;font-weight: bold;" class="panel-title">High School</h1>
								  </div>
									<div id="HG" class="collapse in" aria-expanded="true">
									  <div class="panel-body">
												
												
												<div class="col-sm-12">
													<div class="panel-group" id="accordion-1">
														<div class="panel panel-default">
														  <div class="panel-heading">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-1" aria-expanded="false">
																Mathematics Grade 12
																<span class="right-content">
																	<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																</span>
																</a>
															</h3>
														  </div>
															<div id="accordion-1-child-1" class="collapse" aria-expanded="false" style="height: 0px;">
															  <div class="panel-body">
																	
																	<div class="col-sm-12">
																		<div class="panel-group" id="accordion-1">
																			<div class="panel panel-warning">
																			  <div class="panel-heading">
																				<h3 class="panel-title">
																					<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#ma-accordion-1-child-1" aria-expanded="false">
																					គណិតវិទ្យា​ថ្នាក់ទី១២ ៖ លីមីត
																					<span class="right-content">
																						<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																					</span>
																					</a>
																				</h3>
																			  </div>
																				<div id="ma-accordion-1-child-1" class="collapse" aria-expanded="false" style="height: 0px;">
																				  <div class="panel-body">
																					
																					<div class="list-group success">
																					  <a href="#fakelink" class="list-group-item">1.1 - Introduction &amp; Overview</a>
																					  <a href="#fakelink" class="list-group-item">1.1 - Introduction &amp; Overview</a>
																					  <a href="#fakelink" class="list-group-item">1.3 - Basic Syntax</a>
																					  <a href="#fakelink" class="list-group-item">1.4 - Object &amp; Classes</a>
																					  <a href="#fakelink" class="list-group-item">2.1 - Basic Datatypes</a>
																					</div> 
																				  
																				  </div><!-- /.panel-body -->
																				</div><!-- /.collapse in -->
																			</div><!-- /.panel panel-default -->
																			<div class="panel panel-warning">
																			  <div class="panel-heading">
																				<h3 class="panel-title">
																					<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-2" aria-expanded="false">
																					គណិតវិទ្យា​ថ្នាក់ទី១២ ៖ ដេរីវេ
																					<span class="right-content">
																						<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																					</span>
																					</a>
																				</h3>
																			  </div>
																				<div id="accordion-1-child-2" class="collapse" aria-expanded="false" style="height: 0px;">
																				  <div class="panel-body">
																					Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
																				  </div><!-- /.panel-body -->
																				</div><!-- /.collapse in -->
																			</div><!-- /.panel panel-default -->
																			
																			
																		</div><!-- /.panel-group -->
																	</div>
																	
															  	
															  </div><!-- /.panel-body -->
															</div><!-- /.collapse in -->
														</div><!-- /.panel panel-default -->
														<div class="panel panel-default">
														  <div class="panel-heading">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-2" aria-expanded="false">
																Chemistry
																<span class="right-content">
																	<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																</span>
																</a>
															</h3>
														  </div>
															<div id="accordion-1-child-2" class="collapse" aria-expanded="false" style="height: 0px;">
															  <div class="panel-body">
																Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
															  </div><!-- /.panel-body -->
															</div><!-- /.collapse in -->
														</div><!-- /.panel panel-default -->
														<div class="panel panel-default">
														  <div class="panel-heading">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-3" aria-expanded="false">
																Biology
																<span class="right-content">
																	<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																</span>
																</a>
															</h3>
														  </div>
															<div id="accordion-1-child-3" class="collapse" aria-expanded="false" style="height: 0px;">
															  <div class="panel-body">
																Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
															  </div><!-- /.panel-body -->
															</div><!-- /.collapse in -->
														</div><!-- /.panel panel-default -->
														
														
													</div><!-- /.panel-group -->
												</div>
												
												
												
									  </div><!-- /.panel-body -->
									  
									</div><!-- /.collapse in -->
								</div>
			            
			            </div>
		          </div>  
		          
		          <div class="row">	  
			            <div class="col-sm-6">
			            		
			            		<div class="panel panel-default">
								  <div class="panel-heading" style="background:rgb(78, 156, 80);height: 40px;">
									<div class="right-content">
										<button class="btn btn-default btn-sm btn-rounded-lg to-collapse" data-toggle="collapse" data-target="#LG" aria-expanded="true"><i class="fa fa-chevron-up"></i></button>
									</div>
									<h1 style=" color: white;font-weight: bold;" class="panel-title">Language</h1>
								  </div>
									<div id="LG" class="collapse in" aria-expanded="true">
									  <div class="panel-body">
												<div class="col-sm-12">
													<div class="panel-group" id="accordion-1">
														<div class="panel panel-default">
														  <div class="panel-heading">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-1" aria-expanded="false">
																English
																<span class="right-content">
																	<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																</span>
																</a>
															</h3>
														  </div>
															<div id="accordion-1-child-1" class="collapse" aria-expanded="false" style="height: 0px;">
															  <div class="panel-body">
																Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
															  </div><!-- /.panel-body -->
															</div><!-- /.collapse in -->
														</div><!-- /.panel panel-default -->
														<div class="panel panel-default">
														  <div class="panel-heading">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-2" aria-expanded="false">
																Korean
																<span class="right-content">
																	<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																</span>
																</a>
															</h3>
														  </div>
															<div id="accordion-1-child-2" class="collapse" aria-expanded="false" style="height: 0px;">
															  <div class="panel-body">
																Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
															  </div><!-- /.panel-body -->
															</div><!-- /.collapse in -->
														</div><!-- /.panel panel-default -->
														
													</div><!-- /.panel-group -->
												</div>
									  </div><!-- /.panel-body -->
									  
									</div><!-- /.collapse in -->
								</div>
			            
			            </div>
			             <div class="col-sm-6">
			            		
			            		<div class="panel panel-default">
								  <div class="panel-heading" style="background:rgb(78, 156, 80);height: 40px;">
									<div class="right-content">
										<button class="btn btn-default btn-sm btn-rounded-lg to-collapse" data-toggle="collapse" data-target="#PR" aria-expanded="true"><i class="fa fa-chevron-up"></i></button>
									</div>
									<h1 style=" color: white;font-weight: bold;" class="panel-title">Presentation</h1>
								  </div>
									<div id="PR" class="collapse in" aria-expanded="true">
									  <div class="panel-body">
												<div class="col-sm-12">
													<div class="panel-group" id="accordion-1">
														<div class="panel panel-default">
														  <div class="panel-heading">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-1" aria-expanded="false">
																3rd
																<span class="right-content">
																	<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																</span>
																</a>
															</h3>
														  </div>
															<div id="accordion-1-child-1" class="collapse" aria-expanded="false" style="height: 0px;">
															  <div class="panel-body">
																Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
															  </div><!-- /.panel-body -->
															</div><!-- /.collapse in -->
														</div><!-- /.panel panel-default -->
														<div class="panel panel-default">
														  <div class="panel-heading">
															<h3 class="panel-title">
																<a class="block-collapse collapsed" data-parent="#accordion-1" data-toggle="collapse" href="#accordion-1-child-2" aria-expanded="false">
																2nd
																<span class="right-content">
																	<span class="right-icon"><i class="glyphicon glyphicon-plus icon-collapse"></i></span>
																</span>
																</a>
															</h3>
														  </div>
															<div id="accordion-1-child-2" class="collapse" aria-expanded="false" style="height: 0px;">
															  <div class="panel-body">
																Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. 
															  </div><!-- /.panel-body -->
															</div><!-- /.collapse in -->
														</div><!-- /.panel panel-default -->
														
													</div><!-- /.panel-group -->
												</div>
									  </div><!-- /.panel-body -->
									  
									</div><!-- /.collapse in -->
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