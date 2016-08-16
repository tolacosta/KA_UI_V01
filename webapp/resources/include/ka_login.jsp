<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix='sec' uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>

</head>
<body>
	<script type="text/javascript">
		function setCookie(cname, cvalue) {
			var d = new Date();
			d.setTime(d.getTime() + (30 * 24 * 60 * 60 * 1000));
			var expires = "expires=" + d.toGMTString();
			document.cookie = cname + "=" + cvalue + "; " + expires+ ";domain=khmeracademy.org;";
		}
		function getCookie(cname) {
			var name = cname + "=";
			var ca = document.cookie.split(';');
			for (var i = 0; i < ca.length; i++) {
				var c = ca[i];
				while (c.charAt(0) == ' ') {
					c = c.substring(1);
				}
				if (c.indexOf(name) == 0) {
					return c.substring(name.length, c.length);
				}
			}
			return "";
		}
		function checkCookie(path) {
			var email = getCookie("ka_user_id");
			if (email != "") {
				location.href = path+"/auto-login?email="+ email+"&continuePage="+window.location.href;
			}else{
				location.href = path+"/logout";
			}
		}
		//path = "${pageContext.request.contextPath}";
// 		alert(path);
// 		checkCookie(path);
	</script>
	<sec:authorize access="isAnonymous()">
		<script type="text/javascript">
			path = "${pageContext.request.contextPath}";
			checkCookie(path);
		</script>
	</sec:authorize>
	<sec:authorize access="isAuthenticated()">	
		<script type="text/javascript">
			path = "${pageContext.request.contextPath}";
			checkCookie(path);
		</script>
	</sec:authorize> 

</body>
</html>