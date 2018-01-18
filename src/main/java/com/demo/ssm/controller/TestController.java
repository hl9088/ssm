package com.demo.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demo.ssm.pojo.TestBean;
import com.demo.ssm.service.ITestService;

@RestController
@RequestMapping(value="test")
public class TestController {

	@Autowired
	private ITestService testService;
	
	@RequestMapping(value="/showAllTestInfo")
	public Map<String, Object> showAllTestInfo(Model model, HttpServletRequest request){
		List<TestBean> testInfos = testService.showAllTestInfo();
		Map<String, Object> map= new HashMap<String, Object>();
		map.put("code", 10);
		map.put("msg", "数据获取失败");
		map.put("count", 2);
		map.put("data", testInfos);
		return map;
	}
}
