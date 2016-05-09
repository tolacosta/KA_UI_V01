package org.khmeracademy.app.controllers.traffic;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TrafficController {

	@RequestMapping("/traffic")
	public String trafficPage(){
		return "traffic/traffic";
	}
	
}
