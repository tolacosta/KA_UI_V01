package org.khmeracademy.app.controllers.about;

import java.util.Map;

import org.khmeracademy.app.entities.input.FrmAddVolunteer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;

@Controller
public class VolunteerRestController {
	
	@Autowired
	private HttpHeaders header;
	
	@Autowired
	private RestTemplate rest;
	
	@Autowired
	private String WSURL;
	
	@RequestMapping(value="/rest/about/volunteer" , method = RequestMethod.POST)
	public ResponseEntity<Map<String , Object>> selectAnswer(@RequestBody FrmAddVolunteer v ){
		HttpEntity<Object> request = new HttpEntity<Object>(v,header);
		ResponseEntity<Map> response = rest.exchange(WSURL + "about/volunteer" , HttpMethod.POST , request , Map.class) ;
		return new ResponseEntity<Map<String , Object>>(response.getBody() , HttpStatus.OK);
	}

}
