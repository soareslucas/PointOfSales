package br.com.goinf.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import br.com.goinf.entities.Brand;
import br.com.goinf.servicesinterfaces.BrandService;

import java.util.List;


@Controller
public class BrandController {
	
	@Autowired
	BrandService brandService;
	   	 	
	@RequestMapping("newBrand")
	public String newBrand() {
		return "brand/new";
	}
	
	@RequestMapping("brandList")
	public ModelAndView brandList() {
		List<Brand> brands = null;
		brands = (List<Brand>)brandService.getList();		
		ModelAndView mv = new ModelAndView("brand/list");
		mv.addObject("brands", brands);
		return mv;
	}


	@RequestMapping("addBrand")
	public ModelAndView add(Brand brand) {
		 
		ModelAndView mv = null;
		
		if(brand.getName() == null || brand.getName().equals("")) {
			mv = new ModelAndView("forward:newBrand");
			mv.addObject("error", "Campo obrigatório não preenchido!");

		} else{ 
			brandService.save(brand);		
			mv = new ModelAndView("forward:brandList");
			mv.addObject("message", "Cadastro realizado com sucesso!");
		}
	
		return mv;
	}
	 

	@RequestMapping("deleteBrand")
	public ModelAndView deleteBrand(Brand brand) {
		ModelAndView mv = null;
		brandService.delete(brand);
		mv = new ModelAndView("redirect:brandList");
		mv.addObject("message", "Marca excluída com sucesso!");		
		return mv;
	}
	
	
	@RequestMapping("editBrand")
	public ModelAndView editBrand(Brand brand) {

		brand = brandService.load(brand.getId());
		ModelAndView mv = null;
		mv = new ModelAndView("forward:newBrand");
		mv.addObject("brand", brand);	
		mv.addObject("action", "updateBrand");		

		return mv;
	}
	
	@RequestMapping("updateBrand")
	public ModelAndView updateBrand(Brand brand) {
		ModelAndView mv = null;
		brandService.update(brand);
		mv = new ModelAndView("forward:brandList");
		mv.addObject("message", "Marca atualizada com sucesso!");		
		return mv;
	}
	
	
	


}
