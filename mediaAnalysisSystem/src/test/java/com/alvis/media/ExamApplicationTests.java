package com.alvis.media;

import com.alvis.media.configuration.property.SystemConfig;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@SpringBootApplication
@EnableTransactionManagement
@EnableConfigurationProperties(value = { SystemConfig.class})
public class ExamApplicationTests {

    public static void main(String[] args) {
        SpringApplication.run(ExamApplicationTests.class, args);
    }
}
