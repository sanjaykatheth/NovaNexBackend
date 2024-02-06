package com.NovaNex.nex.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.SimpleMongoClientDatabaseFactory;
import org.springframework.beans.factory.annotation.Value;

@Configuration
public class MongoConfig {

    @Value("${spring.data.mongodb.host}")
    private String host;

    @Value("${spring.data.mongodb.port}")
    private int port;

    @Value("${spring.data.mongodb.database}")
    private String database;

    @Bean
    public MongoTemplate mongoTemplate() {
        String connectionString = "mongodb://" + host + ":" + port + "/" + database;
        return new MongoTemplate(new SimpleMongoClientDatabaseFactory(connectionString));
    }
}
