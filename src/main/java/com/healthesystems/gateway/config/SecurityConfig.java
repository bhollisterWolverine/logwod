package com.healthesystems.gateway.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.security.SecurityProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.annotation.Order;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.encoding.ShaPasswordEncoder;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.web.authentication.Http403ForbiddenEntryPoint;
import org.springframework.security.web.csrf.CookieCsrfTokenRepository;

import com.healthesystems.gateway.security.AuthSuccessHandler;
import com.healthesystems.gateway.security.CustomAuthenticationProvider;
import com.healthesystems.gateway.security.HttpAuthenticationEntryPoint;

@Configuration
@EnableWebSecurity
@Order(SecurityProperties.ACCESS_OVERRIDE_ORDER)
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	@Qualifier("authSuccessHandler")
	private AuthSuccessHandler authSuccessHandler;

	@Autowired
	private HttpAuthenticationEntryPoint httpAuthenticationEntryPoint;

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

	public ShaPasswordEncoder passwordEncoder() {
		return new ShaPasswordEncoder();
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		// @formatter:off
		http
		.httpBasic().and()
		.formLogin().loginPage("/login.html").permitAll().successHandler(authSuccessHandler)
		.and()
		.logout().and()
		.authorizeRequests()
			.antMatchers("/resources/**").permitAll()
			.anyRequest().authenticated()
			.and()
		.csrf().disable();
		// @formatter:on
	}
}
