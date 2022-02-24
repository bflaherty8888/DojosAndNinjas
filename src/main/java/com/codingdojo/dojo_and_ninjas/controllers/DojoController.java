package com.codingdojo.dojo_and_ninjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.dojo_and_ninjas.models.Dojo;
import com.codingdojo.dojo_and_ninjas.services.DojoService;

@Controller
@RequestMapping("/dojos")
public class DojoController {
	private final DojoService dojoService;

	public DojoController(DojoService dojoService) {
		this.dojoService = dojoService;
	}

	@RequestMapping("")
	public String index(Model model) {
		model.addAttribute("dojos", dojoService.findAll());
		return "index.jsp";
	}
	
	@RequestMapping("/{id}")
	public String view(@PathVariable("id") Long id, Model model) {
		model.addAttribute("dojo", this.dojoService.findById(id));
		return "viewDojo.jsp";
	}

	@RequestMapping("/new")
	public String newDojo(Model model) {
		model.addAttribute("dojo", new Dojo());
		return "newDojo.jsp";
	}

	@PostMapping("/create")
	public String createDojo(@Valid @ModelAttribute("dojo") Dojo dojo, BindingResult result) {
		if (result.hasErrors()) {
			return "newDojo.jsp";
		} else {
			this.dojoService.saveDojo(dojo);
			return "redirect:/dojos";
		}
	}
}
