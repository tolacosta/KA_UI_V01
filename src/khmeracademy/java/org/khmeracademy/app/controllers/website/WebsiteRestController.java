package org.khmeracademy.app.controllers.website;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
public class WebsiteRestController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/website/findAllWebsiteByCategoryId/{cateid}" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> findAllWebsiteByCategoryId(
			@PathVariable String cateid,
			@RequestParam(value = "page", required = false , defaultValue="1") int page 
		   ,@RequestParam(value="item" , required = false , defaultValue="10") int item){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "website/findAllWebsiteByCategoryId/"+ cateid+"?page="+page+"&item="+item, HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	@RequestMapping(value="/rest/website/findAllCategory" , method = RequestMethod.GET)
	public ResponseEntity<Map<String , Object>> findAllCategory(){
		HttpEntity<Object> request = new HttpEntity<Object>(header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "website/findAllCategory", HttpMethod.GET , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}
	
	
	
	

}
