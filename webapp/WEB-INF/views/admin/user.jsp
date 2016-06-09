<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<jsp:include page="shared/_adminheader.jsp" />
	
	<style>
		.top-buffer { margin-top:20px; }
		.modal-body{ height:380px;}
		.radio {margin:0px 0px 0px !important;
				width:20px; height:20px;
				}
	</style>
</head>

<body class="tooltips">



	<!--
		===========================================================
		BEGIN PAGE
		===========================================================
		-->
	<div class="wrapper">
	
			<!-- BEGIN TOP NAV -->
			<jsp:include page="shared/_topnav.jsp" />
			<!-- END TOP NAV -->
			
			
			
			<!-- BEGIN SIDEBAR LEFT -->
			<jsp:include page="shared/_leftsidebar.jsp" />
			<!-- END SIDEBAR LEFT -->
			
			
			
			
			
			
			<!-- BEGIN SIDEBAR RIGHT -->
			<%-- <jsp:include page="shared/_rightsidebar.jsp" /> --%>
			<!-- END SIDEBAR RIGHT -->
			







		<!-- BEGIN PAGE CONTENT -->
		<div class="page-content">
			<div class="container-fluid">

			   <h1 class="page-heading">List User</h1>

				<div class="the-box no-border">
					<div class="btn-toolbar top-table" role="toolbar">
					
						<div class="col-sm-2">
							<div class="btn-group" id="btcheck">
								<button id="showFrmAddUser" type="button" class="btn btn-success">
									<i class="fa fa-plus-square"></i> Add new
								</button>
							</div>
						</div>
						
						<form role="form" id="frmsearch">
							<div class="col-sm-2">
								<input type="text" id="sUsername" class="form-control" placeholder="Username">
							</div>
							<div class="col-sm-2">
								<input type="text" id="sEmail" class="form-control" placeholder="Email">
							</div>
							<div class="col-sm-2">
								<select  class="form-control" id="sSignUpWith">
									<option value="" selected="selected">Sign up with</option>
									<option value="1">Khmer Academy</option>
									<option value="2">Facebook</option>
									<option value="3">KA to Facebook</option>
								</select>
							</div>
							<div class="col-sm-2">
								<select  class="form-control" id="sEmailVerification">
									<option value="" selected="selected">Email Verification</option>
									<option value="true">Active</option>
									<option value="false">Inactive</option>
								</select>
							</div>
							<div class="col-sm-2">
								<select  class="form-control usertypeLoad" id="sUserRole">
										<option value="">User Role</option>
								</select>
							</div>
							
							<div class="col-sm-2"></div>
							
							<div class="col-sm-2" style="margin-top: 10px;">
								<input placeholder="From date" type="text" value="" id="sStartDate"  data-date-format="yyyy-mm-dd" class="form-control datepicker" >
							</div>
						
						
							<div class="col-sm-2" style="margin-top: 10px;">
								<input placeholder="to date" type="text" value="" id="sToDate"  data-date-format="yyyy-mm-dd" class="form-control datepicker" >
							</div>
						
							<div class="col-sm-2" style="margin-top: 10px;">		
								<button type="submit"  class="btn btn-info">Search</button>
							</div>
							
						</form>
				   
					</div>
					
					<div class="table-responsive">
						<table class="table table-th-block table-hover">
							<thead>
								<tr>
									<th style="width: 30px;">No</th>
									<th>Photo</th>
									<th>Name</th>
									<th>Gender</th>
									<th>Email</th>
									<th>University</th>
									<th>Department</th>
									<th>Registered Date</th>
									<th>Role</th>
									<th>Action</th>
									<th>Re-Sent</th>
									<!-- <th>Action</th> -->
								</tr>
							</thead>
							<tbody id="content">
							
							</tbody>
							
						</table>
						
						<p id="totalrecord" style="color:rgb(78, 156, 80);"></p>
						
						 <div id="pagination" class="pull-right">
												
						 </div>
												
												
					</div>
					<!-- /.table-responsive -->
				</div>



			</div>
			<!-- /.container-fluid -->

		<div id="p-frmUser" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmUser" action="${pageContext.request.contextPath}/rest/user" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">Add User</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="userId" class="form-control"  name="userId">
										
									<div class="form-group">
										
										<div class="col-lg-12">
											<div class="col-lg-3">
												<label class="control-label">User Name</label>
											</div>					
											<div class="col-lg-9">
												<input type="text" id="username" class="form-control" required="required" name="username">											
											</div>
										</div>
										
										<div class="col-lg-12 top-buffer" >
											<div class="col-sm-3">
												<label class="control-label">Gender</label>
											</div>										
																	
											<div class="col-sm-1">
												<label class="control-label" for="female">Female</label>
											</div>					
																
											<div class="col-sm-1">
												<input id="female" type="radio" checked="checked" name="gender" value="Female" class="form-control radio" >
											</div>
											
											<div class="col-sm-1">
												<label class="control-label" for="male">Male</label>
											</div>					
											
											<div class="col-sm-1">
												<input id="male" type="radio" name="gender" value="Male" class="form-control radio" >
											</div>											
																							
										</div>
										
										<div class="col-lg-12 top-buffer">
											<div class="col-lg-3">
												<label class="control-label">Email</label>
											</div>													
											<div class="col-lg-9">
												<input type="text" id="email" class="form-control" required="required" name="email">
											</div>											
										</div>			
															
										<br><br><br><br>				
										<div class="col-lg-12 top-buffer">																																
											<div class="col-lg-3">
												<label for="sel1">University</label>
											</div>					
											<div class="col-lg-9">
												<select class="form-control" id="listuniversity">
												    <option>1</option>
												    <option>2</option>
												    <option>3</option>
												    <option>4</option>
											  	</select>
											</div>										  
										  
										</div>
										
										<div class="col-lg-12 top-buffer">																														
											<div class="col-lg-3">
												<label for="sel1">Department</label>
											</div>					
											<div class="col-lg-9">
												<select class="form-control" id="listdepartment">
											    <option>1</option>
											    <option>2</option>
											    <option>3</option>
											    <option>4</option>
											  	</select>
											</div>								  
										</div>
										
										<div class="col-lg-12 top-buffer">
											<div class="col-lg-3">
												<label class="control-label">Password</label>
											</div>													
											<div class="col-lg-9">
												<input type="password" id="password" class="form-control" required="required" name="password">
											</div>											
										</div>
										
										<div class="col-lg-12 top-buffer">
											<div class="col-lg-3">
												<label class="control-label">Confirm Password</label>
											</div>													
											<div class="col-lg-9">
												<input type="password" id="cpassword" class="form-control" required="required" name="cpassword">
											</div>											
										</div>			
									</div>
									<br><br>
					</div>
					<div class="modal-footer">
							<button type="submit" id="btSubmit" class="btn btn-primary">Save</button>
					</div>
				</div>
			</form>	
		</div>
		
		<div id="p-frmConfirm" class="ka-popup" style="display: none;width: 50%;">
			<form  id="frmConfirm" action="${pageContext.request.contextPath}/rest/user" method="POST">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" aria-hidden="true">
							<span class="button b-close"><span>×</span></span>
						</button>
						<h4 class="modal-title">Confirmation</h4>
					</div>
					<div class="modal-body" >
									
									<input type="hidden"  id="ConfirmId" class="form-control"  name="userId">
										
									<div class="form-group">										
										<div class="col-lg-8 right" style="border:none;">
											<label class="form-control">Delete this user?</label> 
										</div>	
									</div>
					</div>
					<div class="modal-footer">
							<button type="submit" id="btDelete" class="btn btn-primary">Yes</button>
							<button type="button" id="btCancel" class="btn btn-primary">No</button>
					</div>
				</div>
			</form>	
		</div>




				<!-- BEGIN FOOTER -->
				<jsp:include page="shared/_adminfooter.jsp" />
				<!-- END FOOTER -->
				


		</div>
		<!-- /.page-content -->
	</div>
	<!-- /.wrapper -->
	<!-- END PAGE CONTENT -->



		<!-- Footer Script -->
		<jsp:include page="shared/_scriptfooter.jsp"/>
		<!-- ./Footer Script -->



		<script id="content_tmpl" type="text/x-jquery-tmpl">
	    	<tr>
				<td>{{= NO }}</td>
				<td style="width:50px" ><img src="{{= userImageUrl }}" width="50px" height="50px"/></td>
				<td>{{= username}} </td>
				<td>{{= gender}}</td>
				<td>{{if scFacebookId != null }} <a href="https://www.facebook.com/{{= scFacebookId }}" target="_blank"><img src="${pageContext.request.contextPath}/resources/uploads/icon/facebook_icon.png" />{{/if}}</a> {{= email}}</td>
				<td>{{= universityName}}</td>
				<td>{{= departmentName }}</td>
				<td>{{= registerDate }}</td>
				<td><select data-uid="{{= userId}}" data-tid="{{= userTypeId}}" id="utypeid{{= NO}}" class="form-control usertype" tabindex="2">
					</select>
				</td>
				<!--<td>    		 			
            		<i data-cateid="{{= userId}}" class="fa fa-trash-o icon-circle icon-xs icon-danger" data-toggle="modal" id="showFrmConfirm" ></i>
         		</td>-->
				<td>
					{{if confirmed == false }} 
						<i id="active" data-email="{{= email }}" data-toggle="tooltip" data-original-title="This account is not yet activated. The user doesn't verify email yet! Click to active!"  data-status="true" class="fa fa-remove icon-circle icon-xs icon-danger"></i>  
						<i style="cursor: pointer;" id="resend" data-email="{{= email }}" data-toggle="tooltip" data-original-title="Resend verified code"  class="fa fa-envelope icon-circle icon-xs icon-primary"></i>
					{{else}} 
						<i  id="inactive" data-email="{{= email }}" data-toggle="tooltip" data-original-title="This account is activated. Click to inactive!"   data-status="false" class="fa fa-check icon-circle icon-xs icon-success"></i>  
					{{/if}}
				</td>
				<td><!-- Resend Count -->{{if confirmed == false }} {{= point }} {{/if}}</td>
			</tr>
   		</script>   
   		
   		<!-- build content for university -->
   		<script id="university_tmpl" type="text/x-jquery-tmpl">
	    	<option value="{{= universityId}}">{{= universityName}} </option>
   		</script>
   		
   		<!-- build content for department -->
   		<script id="department_tmpl" type="text/x-jquery-tmpl">
	    	<option value="{{= departmentId}}">{{= departmentName}} </option>
   		</script>      
        
        <!-- build content for usertype -->
   		<script id="usertype_tmpl" type="text/x-jquery-tmpl">
	    	<option value="{{= userTypeId}}">{{= userTypeName}} </option>
   		</script>
   		 
		<script type="text/javascript">		
		
		var user = {};
		var check = true;
		var gPage = 1; //global current page for pagination
		
		$(document).ready(function(){
			
			/* user.listUser = function(currentPage){
				KA.createProgressBar();
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/user?page="+currentPage+"&item=20", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	console.log(data);
// 						console.log(data);
				    	
				    	var perPage = 20;
				    	var nextPage = (currentPage-1)*perPage;
				    	
						if(data.RES_DATA.length>0){
							$("tbody#content").empty();
							for(var i=0;i<data.RES_DATA.length;i++){
								data.RES_DATA[i]["NO"] = (i+1)+nextPage;
							}
							$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
							
							$("#totalrecord").text(data.PAGINATION.totalCount+ " Users");
							
							//to add to user type to select
							user.usertype();
							
							//set onchange event to class usertype after the element of class usertype
							$(".usertype").change(changeusertype); 
							
							matchutype($(".usertype"));
							
						}else{
							$("tbody#content").html('<tr>No content</tr>');
						}
				    	if(check){
				    		user.setPagination(data.PAGINATION.totalPages,1);
				    		check=false;
				    	}
				    	KA.destroyProgressBar();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			}; */
			
			fromDate = null;
			toDate  = null;
			
			
			//sUsername sEmail sSignUpWith sEmailVerification sUserRole sStartDate sToDate
			
			var scFacebookId = "";
			
			filterData = {
					"email": $("#sEmail").val().trim(),
					"username":  $("#sUsername").val().trim(),
					"userTypeId": $("#sUserRole").val().trim(),
					"scType": $("#sSignUpWith").val().trim(),
					"scFacebookId" : scFacebookId,
					"userId": $("#sEmailVerification").val().trim(),	 // Use userId instead of isConfirmed 
					startDate :  	 fromDate,
					untilDate : 		 toDate
			}; 
			
			//to search user and list them
			user.searchuser = function(currentPage){
				
				KA.createProgressBar();
				var username = $.trim($("#search").val());
				
				 /* alert(username);
				return; */ 
				
				console.log(filterData);
				
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/user/search?page="+currentPage+"&item=20", 
				    type: 'POST',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
	                data: JSON.stringify(filterData),
				    success: function(data) { 
				    	
				    	
				    	
						if(data.RES_DATA.length>0){
							
							var perPage = 20;
					    	var nextPage = (currentPage-1)*perPage;
					    	
							$("tbody#content").empty();
							for(var i=0;i<data.RES_DATA.length;i++){
								data.RES_DATA[i]["NO"] = (i+1)+nextPage;
							}
							
							$("#content_tmpl").tmpl(data.RES_DATA).appendTo("tbody#content");
							
							$("#totalrecord").text(data.PAGINATION.totalCount+ " Users");
							//to add to user type to select
							user.usertype();
							
							//set onchange event to class usertype after the element of class usertype
							$(".usertype").change(changeusertype); 
							
							if(check){
					    		user.setPagination(data.PAGINATION.totalPages,currentPage);
					    		check=false;
					    	}
							
							KA.destroyProgressBar();
						}else{
							$("tbody#content").html('<tr>No content</tr>');
							KA.destroyProgressBar();
						}
				    	
				    	
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				})};
			
			
			//do search enter event
			/* $('#search').keyup(function(e){
			    if(e.keyCode == 13)
			    {
			        user.searchuser(1);
			    }
			}); */
			
			$("#frmsearch").submit(function(e){				
				 e.preventDefault();
				 //sUsername sEmail sSignUpWith sEmailVerification sUserRole sStartDate sToDate
				 //to restart pagination again
				 check = true;
				 gPage = 1; 
				 
				 fromDate = null;
				 toDate  = null;
					
				 signUpWith = "";
				 if($("#sSignUpWith").val().trim() == 3){
// 					 alert(3); 
					 scFacebookId = "ISNOTNULL";
					 signUpWith = 1;
				 }else{
					 signUpWith =  $("#sSignUpWith").val().trim();
				 }
// 				 alert($("#sStartDate").val().trim());
				 if( $("#sStartDate").val().trim() != "" || $("#sToDate").val().trim() != "" ){
						toDate =$("#sToDate").val().trim();
						fromDate =  $("#sStartDate").val().trim() ;
				}
				filterData = {
							"email": $("#sEmail").val().trim(),
							"username":  $("#sUsername").val().trim(),
							"userTypeId": $("#sUserRole").val().trim(),
							"scType": signUpWith,
							"scFacebookId" : scFacebookId,
							"userId": $("#sEmailVerification").val().trim(),	 // Use userId instead of isConfirmed 
							startDate :  	 fromDate,
							untilDate : 		 toDate
			     };
				 console.log(filterData);
				 user.searchuser(1);
			}); 
			
			
			
			//do onChange() event to change user type
			function changeusertype(){
				
				var utype = $("#"+$(this).attr("id")+" option:selected").val();
				var uid = $(this).data("uid");							
				/* alert("${pageContext.request.contextPath}/rest/user?userid="+uid+"&usertype="+utype);
				return; */
				$.ajax({ 
				    url:  "${pageContext.request.contextPath}/rest/user?userid="+uid+"&usertype="+utype, 
				    type: 'PUT',			
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
						//alert(JSON.stringify(frmData));
						alert("success");
				    				    	
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});				
			}
			
			//To list usertype
			user.usertype = function(){ 
				
				
				$.ajax({
			
			    url: "${pageContext.request.contextPath}/rest/usertype?page="+1+"&item=100", 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) { 
			    	
			    	 /* alert(JSON.stringify(data)); //data.RESP_DATA
				    return; */
						  
			    	if(data.RES_DATA.length>0){
			    	  	
			    		$(".usertype").empty();			    		
						$("#usertype_tmpl").tmpl(data.RES_DATA).appendTo(".usertype");
												
						matchutype($(".usertype"));
					}else{
						$(".usertype").html('<option>No content</option>');
					}				    	
			    	KA.destroyProgressBar();
			    },
			    error:function(data,status,er) { 
			    	KA.destroyProgressBar();
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			});
				
				
			};
			
			user.usertypeOnLoad = function(){ 
				$.ajax({
				    url: "${pageContext.request.contextPath}/rest/usertype?page="+1+"&item=100", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	if(data.RES_DATA.length>0){
				    		$(".usertypeLoad").empty();		
				    		$(".usertypeLoad").append("<option value=''>User Role</option>");
							$("#usertype_tmpl").tmpl(data.RES_DATA).appendTo(".usertypeLoad");
						}else{
							$(".usertypeLoad").html('<option>No content</option>');
						}				    	
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
		
		//match user type with select option
		function matchutype(allselect){
		
			var numselect = allselect.length;
			//var utype = $(this).data("tid");
			var utype;
			var totalop = allselect[0].length;
			//alert(totalop);
			
			/* alert($(allselect[0][0]).val());
			return; */
			
			/* utype = $(allselect[0]).data("tid");
			alert(utype);
			return; */
			
			//$('.id_100 option[value=val2]').attr('selected','selected');
			//$("select#elem")[0].selectedIndex = 0;
			
			for(var i=0; i<numselect; i++){
				utype = $(allselect[i]).data("tid");
				for(var j=0; j<totalop;j++)					
					if($(allselect[i][j]).val()=== utype){
						$(allselect[i][j]).attr('selected','selected');
					}
			}			
		}
				
		
		//To list university
				user.listuniversity = function(){ 
					
					$.ajax({
				
				    url: "${pageContext.request.contextPath}/rest/log/university?page="+1+"&item=100", 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				    	
				    	 /* alert(JSON.stringify(data)); //data.RESP_DATA
					    return; */  
							  
				    	if(data.RESP_DATA.length>0){
				    	  	
				    		$("#listuniversity").empty();
							$("#university_tmpl").tmpl(data.RESP_DATA).appendTo("#listuniversity");
						}else{
							$("#listuniversity").html('<option>No content</option>');
						}				    	
				    	KA.destroyProgressBar();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBar();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			
			//To list department
			user.listdepartment = function(){ 
				
				$.ajax({
			
			    url: "${pageContext.request.contextPath}/rest/log/department?page="+1+"&item=100", 
			    type: 'GET',
			    beforeSend: function(xhr) {
                    xhr.setRequestHeader("Accept", "application/json");
                    xhr.setRequestHeader("Content-Type", "application/json");
                },
			    success: function(data) { 
			    	
			    	  /* alert(JSON.stringify(data)); //data.RESP_DATA
				    return;   */
						  
			    	if(data.RESP_DATA.length>0){
			    	  	
			    		$("#listdepartment").empty();
						$("#department_tmpl").tmpl(data.RESP_DATA).appendTo("#listdepartment");
					}else{
						$("#listdepartment").html('<option>No content</option>');
					}				    	
			    	KA.destroyProgressBar();
			    },
			    error:function(data,status,er) { 
			    	KA.destroyProgressBar();
			        console.log("error: "+data+" status: "+status+" er:"+er);
			    }
			});
		};
			
			user.setPagination = function(totalPage, currentPage){
   		    	$('#pagination').bootpag({
   			        total: totalPage,
   			        page: currentPage,
   			        maxVisible: 10,
   			        leaps: true,
   			        firstLastUse: true,
   			        first: 'First',
   			        last: 'Last',
   			        wrapClass: 'pagination',
   			        activeClass: 'active',
   			        disabledClass: 'disabled',
   			        nextClass: 'next',
   			        prevClass: 'prev',
   			        lastClass: 'last',
   			        firstClass: 'first'
   			    }).on("page", function(event, currentPage){
   			    	check = false;
   			    	gPage = currentPage;  
   			    	user.searchuser(currentPage);
   			    	/* if($.trim($("#search").val())==="")
   			    		user.listUser(currentPage);
   			    	else
   			    		user.searchuser(currentPage); */
   			    }); 
    		};
    		
    		user.addOrUpdateUser = function(){
				KA.createProgressBarWithPopup();
				
				/* alert($('input[name=gender]:checked').val());
				alert($("#listdepartment option:selected").val()+"%");
				
				KA.destroyProgressBarWithPopup();
				
				return ; */
				var email = $("#email").val();
				var passwd = $("#password").val();
				var cpasswd = $("#cpassword").val();
				var uname = $("#username").val();
				var gender = $('input[name=gender]:checked').val();
				var univer = $("#listuniversity option:selected").val();
				var dept = $("#listdepartment option:selected").val();
								
				    var reg = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				    if(!reg.test(email))
				   		{
				    		alert("Email is not valid!")
				    		KA.destroyProgressBarWithPopup();
				    		$("#email").focus();
				    		return false;
				   		}
				    if(passwd.localeCompare(cpasswd)!=0){
				    	
				    	alert("Passwod is not match!")
			    		KA.destroyProgressBarWithPopup();
			    		$("#cpassword").focus();
			    		return false;
				    }				    
				
				
				frmData = {
												
						"email" : email,
						"password" : passwd,
						"username" : uname,
						"gender" : gender,
						"universityId" : univer,
						"departmentId" : dept						
						
				};
				$.ajax({ 
				    url:  $("#frmUser").attr("action"), 
				    type: $("#frmUser").attr("method"),
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
						 /* alert(JSON.stringify(frmData));
						 KA.destroyProgressBarWithPopup();
						return; */ 
						
				    	KA.destroyProgressBarWithPopup();
						
						//restart pagination again
						check = true;
						user.searchuser(gPage);
						/* if($.trim($("#search").val())==="")
				    		user.listUser(gPage);
						else
							user.searchuser(gPage); */
						
				    	$("#p-frmUser").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			user.deleteUser = function(){
				KA.createProgressBarWithPopup();
				
				//alert($("#frmConfirm").attr("action")+"/"+$("#ConfirmId").val());				
				var deptId = $("#ConfirmId").val();				
				
				$.ajax({ 
				    url:  $("#frmConfirm").attr("action")+"/"+deptId, 
				    type: $("#frmConfirm").attr("method"),
				    //data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
// 						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    					    	
				    	//restart pagination again
				    	check = true;
				    	user.searchuser(gPage);
				    	/* if($.trim($("#search").val())==="")
				    		user.listUser(gPage);
				    	else
				    		user.searchuser(gPage); */
				    	
				    	$("#p-frmConfirm").bPopup().close();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			// Show Form Confirm User delete Popup
			$(document).on('click',"#showFrmConfirm", function(){		
				
				
				$(".modal-body").css("height","55px");
				
				var deptId = $(this).data("cateid");			
				
				$("#p-frmConfirm").bPopup({modalClose: false});
				$("#frmConfirm").attr("method", "DELETE");
				$("#ConfirmId").val(deptId);
				
				
				//user.deleteUser(deptId);
				//$("#frmUser").trigger("reset");				
			});
			
			//delete user equal yes
			$("#frmConfirm").submit(function(e){				
				 e.preventDefault();
				 user.deleteUser();
			});
			
			$("#btCancel").on('click', function(){			
								
				$("#p-frmConfirm").bPopup().close();
			});
			
			// Get one forum user
			/* user.getUser = function(cateid){
				KA.createProgressBarWithPopup();
				console.log(cateid);
				 $.ajax({ 
				    url: "${pageContext.request.contextPath}/rest/log/user/"+cateid, 
				    type: 'GET',
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
						if(data.RES_DATA != null){
							$("#userId").val(data.RES_DATA.userId); 
							$("#userName").val(data.RES_DATA.userName); 
						}
						KA.destroyProgressBarWithPopup();
				    },
				    error:function(data,status,er) { 
						KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				}); 			
			}; */
			
			
			// To run to list content
			//user.listUser(1);
			user.searchuser(1);
			user.listuniversity();
			user.listdepartment();
			user.usertypeOnLoad();
						
			// Show Form Add User Popup
			$("#showFrmAddUser").click(function(){
				
				$(".modal-body").css("height","380px");
				
				$("#p-frmUser").bPopup({modalClose: false});
				$("#frmUser").attr("method", "POST");
				$("#frmUser").trigger("reset");
				$("#btSubmit").text("Add");
			});
						
			// Show Form Update User Popup
			$(document).on('click',"#showFrmUpdateUser", function(){
				//alert($(this).data("cateid"));
				
				var deptName = $(this).parent().prev().text();
				var cateId = $(this).data("cateid");
				KA.createProgressBarWithPopup();				
// 				console.log(cateId);
				$("#userId").val(cateId); 
				$("#userName").val(deptName);
				
				$("#p-frmUser").bPopup({modalClose: false});
				//user.getUser($(this).data("cateid"));
				KA.destroyProgressBarWithPopup();
				
				//$("#frmUser").trigger("reset");
				$("#frmUser").attr("method", "PUT");
				$("#btSubmit").text("Update");
				
			});
			
			// Add or update Forum User
			$("#frmUser").submit(function(e){
				 e.preventDefault();
				 user.addOrUpdateUser();
			});		
			
			$(document).on('click' , '#active' , function(){
				alert("Not yet implement " + $(this).data("email"));
			});
			
			$(document).on('click' , '#inactive' , function(){
				alert("Not yet implement " +$(this).data("email"));
			});
			
			$(document).on('click' , '#resend' , function(){
				///alert("Not yet implement " +$(this).data("email"));
				user.updateResendEmailCount($(this).data("email"));
			});
			
			user.updateResendEmailCount = function(email){
				KA.createProgressBarWithPopup();
				frmData = {
// 						"subject"	: "Activate Your Khmer Academy Accoun",
// 						"from"		: "string",
						"sendTo"	:  email.trim()
// 						"body"		: "test"
				};
				$.ajax({ 
				    url:  "${pageContext.request.contextPath}/rest/email/send",
				    type: "POST",
				    data: JSON.stringify(frmData),
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
						console.log(data);
				    	KA.destroyProgressBarWithPopup();
				    },
				    error:function(data,status,er) { 
				    	KA.destroyProgressBarWithPopup();
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
			};
			
			
		});
		</script>

 					  

</body>
</html>
