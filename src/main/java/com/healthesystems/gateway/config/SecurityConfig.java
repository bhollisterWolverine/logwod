package com.healthesystems.gateway.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.ldap.core.support.LdapContextSource;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.ldap.authentication.BindAuthenticator;
import org.springframework.security.ldap.authentication.LdapAuthenticationProvider;
import org.springframework.security.ldap.search.FilterBasedLdapUserSearch;
import org.springframework.security.ldap.userdetails.DefaultLdapAuthoritiesPopulator;
import org.springframework.security.web.authentication.Http403ForbiddenEntryPoint;

import com.healthesystems.security.UserDetailsContextMapperImpl;

@Configuration
@EnableGlobalMethodSecurity(prePostEnabled = true)
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter  {

	
	@Bean 
	public UserDetailsContextMapperImpl userDetailsContextMapperImpl(){
		return new UserDetailsContextMapperImpl();
	}
	

	@Bean
	public LdapContextSource ldapContextSource(){
		LdapContextSource ldapContextSource = new LdapContextSource();
		ldapContextSource.setUrl("ldap://tampa.healthe:389/");
		ldapContextSource.setUserDn("cn=LDAP Reader,ou=Generic Accounts,ou=HealthESystems,dc=tampa,dc=Healthe");
		ldapContextSource.setPassword("Y1yZ5IAn");
		
		return ldapContextSource;
	}
	
	@Bean
	public BindAuthenticator authenticator(){
		BindAuthenticator authenticator = new BindAuthenticator(ldapContextSource());
		authenticator.setUserSearch(userSearch());
		return authenticator;
	}
	
	@Bean
	public DefaultLdapAuthoritiesPopulator ldapAuthoritiesPopulator(){
		DefaultLdapAuthoritiesPopulator ldapAuthoritiesPopulator = new DefaultLdapAuthoritiesPopulator(ldapContextSource(),"ou=HealthESystems,dc=tampa,dc=healthe");
		ldapAuthoritiesPopulator.setGroupRoleAttribute("cn");
		ldapAuthoritiesPopulator.setGroupSearchFilter("(member={0})");
		ldapAuthoritiesPopulator.setSearchSubtree(true);
		ldapAuthoritiesPopulator.setRolePrefix("");
		return ldapAuthoritiesPopulator;
		
	}
	
	@Bean
	public FilterBasedLdapUserSearch userSearch(){
		FilterBasedLdapUserSearch filterBasedLdapUserSearch = new FilterBasedLdapUserSearch("ou=HealthESystems,dc=tampa,dc=healthe", "(sAMAccountName={0})", ldapContextSource());
	    filterBasedLdapUserSearch.setSearchSubtree(true);
	    return filterBasedLdapUserSearch;
	}
	
	@Bean
	public LdapAuthenticationProvider ldapAuthenticationProvider(){
		LdapAuthenticationProvider ldapAuthenticationProvider = new LdapAuthenticationProvider(authenticator(),ldapAuthoritiesPopulator());
		ldapAuthenticationProvider.setUserDetailsContextMapper(userDetailsContextMapperImpl());
		return ldapAuthenticationProvider;
	}
	
	@Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }

	@Bean
	public Http403ForbiddenEntryPoint http403EntryPoint(){
		return new Http403ForbiddenEntryPoint();
	}


	@Override
	public void configure(HttpSecurity http) throws Exception {
		// @formatter:off
		http
			.httpBasic().and()
			.formLogin().loginPage("/login.html").permitAll()
			.and()
			.logout().and()
			.authorizeRequests()
				.antMatchers("/resources/**").permitAll()
				.anyRequest().authenticated()
				.and()
			.csrf().disable();
		// @formatter:on
	}
	

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
	    auth.authenticationProvider(ldapAuthenticationProvider());
	}  
}
