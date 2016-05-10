package org.khmeracademy.app.controllers.traffic;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TrafficController {

	@RequestMapping("/traffic/{location}")
	public String trafficPage(@PathVariable("location") String location, ModelMap m){
		m.addAttribute("location",location);
		return "traffic/traffic";
	}
	
}
