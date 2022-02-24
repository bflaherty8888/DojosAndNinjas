package com.codingdojo.dojo_and_ninjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.dojo_and_ninjas.models.Ninja;
import com.codingdojo.dojo_and_ninjas.services.DojoService;
import com.codingdojo.dojo_and_ninjas.services.NinjaService;

@Controller
@RequestMapping("/ninjas")
public class NinjaController {
	private final NinjaService ninjaService;
	private final DojoService dojoService;

	public NinjaController(NinjaService ninjaService, DojoService dojoService) {
		this.ninjaService = ninjaService;
		this.dojoService = dojoService;
	}

	@RequestMapping("/new")
	public String newNinja(Model model) {
		model.addAttribute("dojos", this.dojoService.findAll());
		model.addAttribute("ninja", new Ninja());
		return "newNinja.jsp";
	}

	@PostMapping("/create")
	public String createNinja(@Valid @ModelAttribute("ninja") Ninja ninja, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("dojos", this.dojoService.findAll());
			return "newNinja.jsp";
		} else {
			this.ninjaService.saveNinja(ninja);
			return "redirect:/dojos";
		}

	}
}
