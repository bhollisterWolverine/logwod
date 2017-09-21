package com.healthesystems.gateway;

import java.security.Principal;
import java.util.LinkedHashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceBuilder;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.cloud.netflix.zuul.EnableZuulProxy;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Primary;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
@EnableZuulProxy
public class ApiGatewayApplication  {

	public static void main(String[] args) {
		SpringApplication.run(ApiGatewayApplication.class, args);
	}
	
	@GetMapping("/user")
	public Map<String, Object> user(Principal user) {
		Map<String, Object> map = new LinkedHashMap<String, Object>();
		map.put("name", user.getName());
		map.put("roles", AuthorityUtils.authorityListToSet(((Authentication) user)
				.getAuthorities()));
		return map;
	}
	
	@GetMapping("/userprofile")
	public Map<String, Object> userprofile(Principal user) {
		Map<String, Object> response = new LinkedHashMap<String, Object>();
		Map<String, Object> usermap = new LinkedHashMap<String, Object>();
		usermap.put("name", user.getName());
		usermap.put("roles", AuthorityUtils.authorityListToSet(((Authentication) user).getAuthorities()));
		
		response.put("data", usermap);
		return response;
	}
	
		
	@Bean
	@Primary
	@ConfigurationProperties(prefix="spring.datasource")
	public DataSource primaryDataSource() {
	    return DataSourceBuilder.create().build();
	}
	
}
