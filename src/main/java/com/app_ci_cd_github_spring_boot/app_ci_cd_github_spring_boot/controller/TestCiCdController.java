package com.app_ci_cd_github_spring_boot.app_ci_cd_github_spring_boot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class TestCiCdController {

    @GetMapping("/test")
    public String getTest() {return "Hello World!";}
}
