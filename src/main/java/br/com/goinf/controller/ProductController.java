package br.com.goinf.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import br.com.goinf.entities.Product;


@Controller
@RequestMapping("/product")
public class ProductController {
	

	
@RequestMapping("new")
public ModelAndView form() {
	ModelAndView mv = new ModelAndView("product/new");
	return mv;
}


 @RequestMapping("add")
 public ModelAndView add(Product product) {
	 
     ModelAndView mv = null;
     if(product.getDescription() == null || product.getDescription().equals("")) {
	     mv = new ModelAndView("product/new");
     } else{
	     mv = new ModelAndView("product/added");
	     mv.addObject("product", product);
     }
     return mv;

 }
 
 @RequestMapping("added")
 public String result() {
 return "product/added";
 }

 
 
 
	 

}
