package com.cognizant.jwt_auth.controller;

import com.cognizant.jwt_auth.util.JwtUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JwtAuthenticationController {

    @Autowired
    private JwtUtil jwtUtil;

    @GetMapping("/authenticate")
    public ResponseEntity<?> createToken(Authentication authentication) {
        String username = authentication.getName();
        String token = jwtUtil.generateToken(username);
        return ResponseEntity.ok("{\"token\":\"" + token + "\"}");
    }
}
