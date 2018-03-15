package com.demo.ssm.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 验证码的实现
 * @author Administrator
 */
@RestController
@RequestMapping(value="verifyCode")
public class VerifyCodeController {

	@RequestMapping(value="/getVerifyCode")
	public void getVerifyCode(HttpServletRequest request, HttpServletResponse response){
		try {
			response.setHeader("Pragma", "No-cache");
			response.setHeader("Cache-Control", "no-cache");
			response.setDateHeader("Expires", 0);
			response.setContentType("image/jpeg");
			
			//生成随机字符串
			String verifyCode = VerifyCodeUtils.generateVerifyCode(4);
			
			//存入会话session中
			HttpSession session = request.getSession(true);
			session.setAttribute("_code", verifyCode.toLowerCase());
			
			//生成图片
			int w = 100, h = 30;
			VerifyCodeUtils.outputImage(w,h,response.getOutputStream(),verifyCode);
		
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/checkCode")
	public Map<String, String> checkCode(HttpServletRequest request){
		Map<String, String> res = new HashMap<String, String>();
		
		String code = request.getParameter("code");
		
		String _code = (String)request.getSession().getAttribute("_code");
		
		if(code.equalsIgnoreCase(_code)){
			res.put("result", "验证通过");
		}else{
			res.put("result", "验证码错误");
		}
		
		return res;
	}
 	
}
