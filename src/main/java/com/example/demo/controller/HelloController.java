package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/")
public class HelloController {

    @RequestMapping("url")
    public String url(HttpServletRequest httpServletRequest) {
        return httpServletRequest.getRequestURL().toString();
    }

    @RequestMapping("**")
    public String hello(HttpServletRequest httpServletRequest) {
        return httpServletRequest.getRequestURL().toString();
    }
}
