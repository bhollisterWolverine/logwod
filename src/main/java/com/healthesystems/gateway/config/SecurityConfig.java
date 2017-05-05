package com.healthesystems.gateway.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.Http403ForbiddenEntryPoint;

import com.healthesystems.gateway.security.AuthSuccessHandler;
import com.healthesystems.gateway.security.CustomAuthenticationProvider;

@Configuration
@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("authSuccessHandler")
	private AuthSuccessHandler authSuccessHandler;

	@Bean
	public AuthenticationProvider customAuthenticationProvider() {
		return new CustomAuthenticationProvider();
	}
	
	@Bean
	public Http403ForbiddenEntryPoint http403EntryPoint(){
		return new Http403ForbiddenEntryPoint();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.authenticationProvider(customAuthenticationProvider());

	}


	@Override
	public void configure(HttpSecurity http) throws Exception {
		// @formatter:off
		http
		.httpBasic()
		.authenticationEntryPoint(http403EntryPoint())
		.and()
		.formLogin().loginPage("/login").failureUrl("/login?error").permitAll().successHandler(authSuccessHandler)
		.and()
		.logout().permitAll().and()
		.authorizeRequests()
			.anyRequest().authenticated()
			.and()
		.csrf().disable();
		
		
		// @formatter:on
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		 web
	       .ignoring()
	       .antMatchers("/resources/**");
	}
}
