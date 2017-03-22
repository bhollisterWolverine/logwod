package com.healthesystems.security;

import java.util.ArrayList;
import java.util.Collection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.AuthenticationUserDetailsService;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedAuthenticationToken;
import org.springframework.security.web.authentication.preauth.PreAuthenticatedGrantedAuthoritiesWebAuthenticationDetails;

/**
 * Spring Security will use this class to populate the UserDetails.
 */
public class InMemoryAuthenticationUserDetailsService implements  AuthenticationUserDetailsService<PreAuthenticatedAuthenticationToken> {

	private static final Logger logger = LoggerFactory.getLogger(InMemoryAuthenticationUserDetailsService.class);

	@Override
	public UserDetails loadUserDetails(PreAuthenticatedAuthenticationToken token) throws UsernameNotFoundException {
	     logger.info("user: " + token.getName() );
	        logger.info("principal: " + token.getPrincipal().toString());
	        logger.info("details: " + token.getDetails().toString());
	        PreAuthenticatedGrantedAuthoritiesWebAuthenticationDetails preAuth = (PreAuthenticatedGrantedAuthoritiesWebAuthenticationDetails) token.getDetails();

	        Collection<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
	        for (GrantedAuthority grantedAuthority : preAuth.getGrantedAuthorities()) {
	        	 grantedAuthorities.add(new SimpleGrantedAuthority(grantedAuthority.getAuthority() ));
	        	logger.info("GrantedAuthority: " + grantedAuthority.getAuthority() );
			}

	       return new User(token.getName(), "notused", true, true, true, true, grantedAuthorities);

	}

	


}