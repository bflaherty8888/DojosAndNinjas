package com.codingdojo.dojo_and_ninjas.services;

import org.springframework.stereotype.Service;

import com.codingdojo.dojo_and_ninjas.models.Ninja;
import com.codingdojo.dojo_and_ninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
	public Ninja saveNinja(Ninja n) {
		return this.ninjaRepository.save(n);
	}
}
