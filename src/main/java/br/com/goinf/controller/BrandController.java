package br.com.goinf.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import br.com.goinf.entities.Brand;


@Controller
@RequestMapping("/brand")
public class BrandController {
	

	
@RequestMapping("new")
public String form() {
return "brand/new";
}


 @RequestMapping("add")
 public ModelAndView add(Brand brand) {
	 
     ModelAndView mv = null;
     if(brand.getName() == null || brand.getName().equals("")) {
	     mv = new ModelAndView("brand/new");
     } else{
	     mv = new ModelAndView("brand/added");
	     mv.addObject("brand", brand);
     }
     return mv;

 }
 
 @RequestMapping("added")
 public String result() {
 return "product/added";
 }

 
 
 
	 

}
