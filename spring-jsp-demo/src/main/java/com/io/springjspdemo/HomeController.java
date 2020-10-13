package com.io.springjspdemo;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class HomeController {
	
	@Autowired
    JpaInterface repo;

	@GetMapping(value="/")
	public String demo()
	{
		
		return "index";
		
	}
	@RequestMapping(path="/handler",method=RequestMethod.POST)
	public String formsubmit(@ModelAttribute("Student") Student Student )
	{
	    
		repo.save(Student);
		return "sucess";
		
				
	}
	@RequestMapping(path="/get")
	public String  getData(Model model)
	{
		    model.addAttribute("student",repo.findAll());
		
		    return "retrive";
		
		
		
		
	}
	
}
