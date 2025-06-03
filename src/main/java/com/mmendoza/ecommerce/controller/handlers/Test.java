package com.mmendoza.ecommerce.controller.handlers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/test")
public class Test {
    @GetMapping
    public String test() {
        return "test";
    }
}
