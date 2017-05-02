package com.healthesystems.gateway.security;
import java.util.ArrayList;
import java.util.Collection;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ldap.core.DirContextAdapter;
import org.springframework.ldap.core.DirContextOperations;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.ldap.userdetails.UserDetailsContextMapper;


public class UserDetailsContextMapperImpl  implements UserDetailsContextMapper{

	private static final Logger logger = LoggerFactory.getLogger(UserDetailsContextMapperImpl.class);
	
	@Override
	public UserDetails mapUserFromContext(DirContextOperations ctx, String username,
			Collection<? extends GrantedAuthority> authorities) {
	    logger.info("user: " + username );
	    
		//Collection<GrantedAuthority> mappedAuthorities = new ArrayList<GrantedAuthority>();
		
		for (GrantedAuthority granted: authorities){
			logger.info("GrantedAuthority: {}", granted.getAuthority());
		}
		
		return new User(username, "", true, true, true, true, authorities);
	}

	@Override
	public void mapUserToContext(UserDetails user, DirContextAdapter ctx) {
		// TODO Auto-generated method stub
		
	}

}
