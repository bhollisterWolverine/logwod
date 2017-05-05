package com.healthesystems.gateway.config;

import java.util.Arrays;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.session.web.http.SessionRepositoryFilter;
import org.springframework.web.filter.DelegatingFilterProxy;

@Configuration
public class SessionRepositoryConfig {

 @Bean
 @Order(value = 0)
 public FilterRegistrationBean sessionRepositoryFilterRegistration(SessionRepositoryFilter<?> springSessionRepositoryFilter) {
  FilterRegistrationBean filterRegistrationBean = new FilterRegistrationBean();
  filterRegistrationBean.setFilter(new DelegatingFilterProxy(springSessionRepositoryFilter));
  filterRegistrationBean.setUrlPatterns(Arrays.asList("/*"));
  return filterRegistrationBean;
 }

 
}