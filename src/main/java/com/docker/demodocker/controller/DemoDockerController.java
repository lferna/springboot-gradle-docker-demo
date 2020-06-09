package com.docker.demodocker.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoDockerController {

	
	@RequestMapping(value={"/hello"}, method = RequestMethod.GET)
	public String login(){
		
		return "Hola Mundo V2!";
	}
	
}
