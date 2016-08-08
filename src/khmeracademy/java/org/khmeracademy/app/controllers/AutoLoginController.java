package org.khmeracademy.app.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.khmeracademy.app.entities.User;
import org.khmeracademy.app.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class AutoLoginController {

	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/auto-login" , method= RequestMethod.GET)
	public String autoLogin(@RequestParam("email") String email , @RequestParam("continuePage") String continuePage) {
		System.out.println(email);
		User user = userService.findUserByUserId("MTA0");

		Authentication authentication = new UsernamePasswordAuthenticationToken(user, user.getPassword(), user.getAuthorities());

		SecurityContext context = new SecurityContextImpl();
		context.setAuthentication(authentication);

		SecurityContextHolder.setContext(context);

		return "redirect:"+continuePage;

	}
	
	@RequestMapping(value = "/isLogin", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> isUserLogin(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		Cookie[] cookies = request.getCookies();
		String userId = null;
		for(Cookie cookie : cookies){
		    if("ka_user_id".equals(cookie.getName())){
		    	userId = cookie.getValue();
		    	map.put("USER_ID", userId);
		    	map.put("STATUS", true);
		    	break;
		    }
		}
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}
	
	
	@RequestMapping(value = "/getCookie", method = RequestMethod.GET)
	public ResponseEntity<Map<String, Object>> getCookie(HttpServletRequest request) {
		Map<String, Object> map = new HashMap<String, Object>();
		Cookie[] cookies = request.getCookies();
		String userId = null;
		for(Cookie cookie : cookies){
		    if("ka_user_id".equals(cookie.getName())){
		    	userId = cookie.getValue();
		    	map.put("USER_ID", userId);
		    	map.put("STATUS", true);
		    }else{
		    	map.put("STATUS", false);
		    }
		}
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	} 
	
	


}