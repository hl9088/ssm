package com.demo.ssm.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.demo.ssm.pojo.StudentInfo;
import com.demo.ssm.service.IStudentInfoService;

@RestController
@RequestMapping(value="studentInfo")
public class StudentInfoController {

	@Autowired
	private IStudentInfoService studentInfoService;
	
	@RequestMapping(value="/retrieveStuInfo")
	public Map<String, Object> retrieveStuInfo(HttpServletRequest request){
		// 页码
		String pageNum = request.getParameter("page");
		// 单页显示数量
		String pageCount = request.getParameter("limit");
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("startNum", (Integer.valueOf(pageNum)-1)*Integer.valueOf(pageCount));
		paramMap.put("pageCount", Integer.valueOf(pageCount));
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		try {
			int count = studentInfoService.countStuInfo();
			
			List<Map<String, Object>> list = studentInfoService.retrieveStuInfoByPage(paramMap);
			
			map.put("code", 0);
			map.put("msg", "");
			map.put("count", count);
			map.put("data", list);
		} catch (Exception e) {
			map.put("code", 500);
			map.put("msg", "获取学生信息失败");
			map.put("count", 0);
			map.put("data", "");
		}
		return map;
	}
	
	@RequestMapping(value="/editStuInfo")
	public ModelAndView editStuInfo(HttpServletRequest request) throws Exception{
		ModelAndView view = new ModelAndView();
		
		// 学生id
		String stuId = request.getParameter("stuId");
		//获取学生信息
		Map<String, Object> stuInfo = studentInfoService.retrieveStuInfoById(stuId);
		
		view.addObject("stuInfo", stuInfo);
		view.setViewName("popup-student-edit");
		
		return view;
	}
}
