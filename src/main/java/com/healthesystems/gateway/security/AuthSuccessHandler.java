package com.healthesystems.gateway.security;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

@Component("authSuccessHandler")
public class AuthSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {
    private static final Logger logger = LoggerFactory.getLogger(AuthSuccessHandler.class);

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {

        logger.debug("User {} connected successfully", authentication.getName());
        for (GrantedAuthority granted: authentication.getAuthorities()){
			logger.debug("User Roles: {}", granted.getAuthority());
		}
        
        super.onAuthenticationSuccess(request, response, authentication);
    }
}