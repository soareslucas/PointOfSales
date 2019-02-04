package br.com.goinf.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.stereotype.Controller;

import br.com.goinf.entities.Brand;
import br.com.goinf.DAO.BrandDAO;
import br.com.goinf.domain.BrandDomain;

import java.util.List;

import javax.annotation.PostConstruct;



@Controller
public class BrandController {
	
//	private BrandDomain brandDomain;
//	
//    @PostConstruct
//    public void init() {
//    	brandDomain = new BrandDomain();
//    }
//	

	
	@RequestMapping("newBrand")
	public String newBrand() {
		return "brand/new";
	}
	
	@RequestMapping("brandList")
	public ModelAndView brandList() {
		BrandDomain brandDomain = new BrandDomain();
		List<Brand> brands = null;
		brands = (List<Brand>)brandDomain.getList();		
		ModelAndView mv = new ModelAndView("brand/list");
		mv.addObject("brands", brands);
		
		return mv;
	}


	@RequestMapping("addBrand")
	public ModelAndView add(Brand brand) {
		 
		ModelAndView mv = null;
		
		if(brand.getName() == null || brand.getName().equals("")) {
			mv = new ModelAndView("brand/new");
		} else{ 
			BrandDomain brandDomain = new BrandDomain();
			brandDomain.save(brand);
			List<Brand> brands = null;
			brands = (List<Brand>)brandDomain.getList();		
			mv = new ModelAndView("brand/list");
			mv.addObject("brands", brands);
		}
	
		return mv;
	}
	 
	@RequestMapping("added")
	public String result() {
		return "brand/added";
	}


}
