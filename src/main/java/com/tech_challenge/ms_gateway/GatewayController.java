package com.tech_challenge.ms_gateway;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GatewayController {


    @GetMapping("/custom-endpoint")
    public String customEndpoint() {
        return "Hello from the API Gateway!";
    }

}
