package com.mitrais.scrummit.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthenInterceptor extends HandlerInterceptorAdapter {

	Logger logger = Logger.getLogger(AuthenInterceptor.class);
	
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
 
		String URL = request.getRequestURI();
		logger.info("AuthenInterceptor.preHandle: url=" + URL);
        if (!request.getRequestURI().endsWith("login") &&
        		!request.getRequestURI().endsWith("scrummit/") &&
        		!request.getRequestURI().endsWith("logout/") &&
        		!request.getRequestURI().endsWith("authenticate/") &&
        		!request.getRequestURI().endsWith("register") &&
        		!request.getRequestURI().endsWith("register/") &&
        		!request.getRequestURI().endsWith("verify") &&
        		!request.getRequestURI().endsWith("verified") &&
        		!request.getRequestURI().endsWith("401") &&
                request.getSession().getAttribute("CURRENT_USER") == null) {
        	
        	response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
        	return false;
        }
        
        return true;
	}
}
