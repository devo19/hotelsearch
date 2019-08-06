package co.grandcircus.hotelsearch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HotelController {
	
	@Autowired
	private HotelRepository dao;	
	
	
	@RequestMapping("/")
	public ModelAndView index() {
		return new ModelAndView("home");
	}
	
	@PostMapping("/")
	public ModelAndView list(
			@RequestParam("city") String city){
		List<Hotel> listings = dao.findByCity(city);		
		ModelAndView mv = new ModelAndView("result");
		mv.addObject("hotel_listing", listings);
		mv.addObject("city",city);		
		return mv;
	}
	
	
	
	
	

}
