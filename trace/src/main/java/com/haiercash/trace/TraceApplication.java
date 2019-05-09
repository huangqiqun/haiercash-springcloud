package com.haiercash.trace;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import zipkin.server.internal.EnableZipkinServer;

@EnableDiscoveryClient
@EnableZipkinServer
@SpringBootApplication
public class TraceApplication {

    public static void main(String[] args) {
        SpringApplication.run(TraceApplication.class, args);
    }

}
