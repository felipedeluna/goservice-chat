package com.soulcode.goserviceapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/", "/home"})
public class HomeController {

    @GetMapping
    public String home(){
        return "home";
    }

    @GetMapping(value = "/politicaTermos")
    public String politicatermos(){
        return "politicaTermos";
    }

    @GetMapping(value = "/perguntasFrequentes")
    public String perguntasfrequentes(){
        return "perguntasFrequentes";
    }
}
