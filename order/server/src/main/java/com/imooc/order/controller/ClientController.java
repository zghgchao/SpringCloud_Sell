package com.imooc.order.controller;


import com.imooc.product.client.ProductClient;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
public class ClientController {

    @Autowired
    private ProductClient productClient;

    @GetMapping("/msgForOrder")
    public String getProductMsg() {
        String response = productClient.msg();
        log.info("response={}", response);
        return response;
    }
}
