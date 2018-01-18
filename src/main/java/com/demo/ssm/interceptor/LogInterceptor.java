package com.demo.ssm.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 日志记录
 * @author Administrator
 */
public class LogInterceptor implements HandlerInterceptor {

	private Logger logger = Logger.getLogger(LogInterceptor.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName");
		String url = "http://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + request.getServletPath() + "?" + request.getQueryString();
		String ip = request.getRemoteAddr();
		logger.debug(userName);
		logger.debug(url);
		logger.debug(ip);
		//logger.debug("正在执行--" + ((HandlerMethod)handler).getBeanType().getName());
		//logger.debug("正在执行--" + ((HandlerMethod)handler).getMethod().getName());
		return true;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		logger.error(handler.getClass().toString());
	}
}
