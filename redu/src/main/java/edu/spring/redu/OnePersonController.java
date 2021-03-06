package edu.spring.redu;
import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import rtest.OnePersonService;
@Controller
public class OnePersonController {
	@Autowired
	OnePersonService rl;

	@RequestMapping("/map7")
	public ModelAndView get8(HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		String real_path = req.getSession().getServletContext().getRealPath("/");
		System.out.println(real_path);
	    real_path = real_path.replace("\\", "/");
	    System.out.println(real_path);		
		File f = new File(real_path+"/resources/leafletchart1");
		if(!f.exists()) f.mkdir();
		String guname = req.getParameter("guname");
		String result = rl.showLocal(real_path+"/resources/leafletchart1", guname);
		mav.addObject("leafletChartName", "http://localhost:8000/redu/resources/leafletchart1/"+ result);
	    mav.setViewName("oneView");
		return mav;
	}	
}

