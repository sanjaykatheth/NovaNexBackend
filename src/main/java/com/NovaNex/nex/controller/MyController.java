package com.NovaNex.nex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MyController {

    @GetMapping("/admin")
    public String adminPage() {
        return "admin"; // returns admin.jsp
    }
}