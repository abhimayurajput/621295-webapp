package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Homecontroller {
	@GetMapping("/")
    public String home(Model model) {
        model.addAttribute("message", "Welcome to 621295 WebApp on ROSA!");
        return "index"; // Maps to templates/index.html
    }

}
