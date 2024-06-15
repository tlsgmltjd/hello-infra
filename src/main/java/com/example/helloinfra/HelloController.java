package com.example.helloinfra;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping
    public ResponseEntity<Dto> hello() {
        return ResponseEntity.ok(new Dto("HELLO"));
    }
}

class Dto {
    private String message;

    public Dto(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }
}
