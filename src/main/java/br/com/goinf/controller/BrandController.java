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
			mv = new ModelAndView("forward:newBrand");
			mv.addObject("error", "Campo obrigatório não preenchido!");

		} else{ 
			BrandDomain brandDomain = new BrandDomain();
			brandDomain.save(brand);		
			mv = new ModelAndView("forward:brandList");
			mv.addObject("message", "Cadastro realizado com sucesso!");
		}
	
		return mv;
	}
	 

	@RequestMapping("deleteBrand")
	public ModelAndView deleteBrand(Brand brand) {
		ModelAndView mv = null;
		BrandDomain brandDomain = new BrandDomain();
		brandDomain.delete(brand);
		mv = new ModelAndView("forward:brandList");
		mv.addObject("message", "Marca excluída com sucesso!");		
		return mv;
	}
	
	
	@RequestMapping("editBrand")
	public ModelAndView editBrand(Brand brand) {
		BrandDomain brandDomain = new BrandDomain();

		brand = brandDomain.load(brand.getId());
		ModelAndView mv = null;
		mv = new ModelAndView("forward:newBrand");
		mv.addObject("brand", brand);	
		mv.addObject("action", "updateBrand");		

		return mv;
	}
	
	@RequestMapping("updateBrand")
	public ModelAndView updateBrand(Brand brand) {
		ModelAndView mv = null;
		BrandDomain brandDomain = new BrandDomain();
		brandDomain.update(brand);
		mv = new ModelAndView("forward:brandList");
		mv.addObject("message", "Marca atualizada com sucesso!");		
		return mv;
	}
	
	
	


}
