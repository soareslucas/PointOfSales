package br.com.goinf.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import br.com.goinf.entities.Brand;
import br.com.goinf.DAO.BrandDAO;



@Controller
public class BrandController {
	

	
@RequestMapping("newBrand")
public String form() {
return "brand/new";
}


 @RequestMapping("addBrand")
 public ModelAndView add(Brand brand) {
	 
     ModelAndView mv = null;
     if(brand.getName() == null || brand.getName().equals("")) {
	     mv = new ModelAndView("brand/new");
     } else{
    	 
    	 BrandDAO brandDAO = new BrandDAO();
    	 brandDAO.persist(brand);
     }
     return mv;

 }
 
 @RequestMapping("added")
 public String result() {
 return "product/added";
 }

 
 
 
	 

}
