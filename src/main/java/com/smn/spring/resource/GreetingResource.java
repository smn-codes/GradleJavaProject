package com.smn.spring.resource;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController("/")
public class GreetingResource {

    @GetMapping("/greet")
    public ResponseEntity<String> greet(@RequestParam(value = "name", defaultValue = "World") String name) {
        return ResponseEntity.ok("Hello! " + name);
    }

}
