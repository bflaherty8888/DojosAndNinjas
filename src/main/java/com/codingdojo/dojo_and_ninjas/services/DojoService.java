package com.codingdojo.dojo_and_ninjas.services;

import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codingdojo.dojo_and_ninjas.models.Dojo;
import com.codingdojo.dojo_and_ninjas.repositories.DojoRepository;

@Service
public class DojoService {

	private final DojoRepository dojoRepository;

	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}

	public Iterable<Dojo> findAll() {
		return this.dojoRepository.findAll();
	}

	public Dojo saveDojo(Dojo d) {
		return this.dojoRepository.save(d);
	}

	public Dojo findById(Long id) {
		Optional<Dojo> optDojo = this.dojoRepository.findById(id);
		if (optDojo.isPresent()) {
			return optDojo.get();
		} else {
			return null;
		}
	}
}
