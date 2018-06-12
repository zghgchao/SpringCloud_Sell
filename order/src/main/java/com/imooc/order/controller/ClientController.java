package com.imooc.order.controller;

import com.imooc.order.config.RestTemplateConfig;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@Slf4j
public class ClientController {

    @Autowired
    private RestTemplate restTemplate;

    @GetMapping("getProductMsg")
    public String getProductMsg() {
        String response = restTemplate.getForObject("http://PRODUCT/msg", String.class);
        log.info("response={}", response);
        return response;
    }
}
