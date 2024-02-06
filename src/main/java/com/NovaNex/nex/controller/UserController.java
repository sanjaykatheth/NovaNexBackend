package com.NovaNex.nex.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.NovaNex.nex.entity.dto.UserDTO;
import com.NovaNex.nex.service.UserService;

import jakarta.validation.Valid;


@RestController
@CrossOrigin
@RequestMapping("/api")
public class UserController {

	@Autowired
	private UserService userService;

	@PostMapping("/user/signup")
	public void signUp(@Valid @RequestBody UserDTO userDto) {
		userService.signUp(userDto);
	}
}
