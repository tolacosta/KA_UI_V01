package org.khmeracademy.app.controllers.website;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

@Controller
public class WebSiteController {

	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/website/view/{id}" , method = RequestMethod.GET)
	public String viewWeb(@PathVariable String id ,@RequestParam("url") String url){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "website/view/"+id, HttpMethod.GET , request , Map.class) ;
		return "redirect:"+url;
	}
	
	@RequestMapping(value="/website" , method = RequestMethod.GET)
	public String viewWeb(){
		return "website/website";
	}
}
