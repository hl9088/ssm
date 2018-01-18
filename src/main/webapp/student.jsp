<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<div class="layui-fluid">
	<div class="layui-row layui-bg-gray">
		<h3 style="line-height: 50px; padding-left: 1em;">学生信息管理</h3>
	</div>
	
	<div class="layui-row" style="margin-top: 10px;">
		<div class="layui-col-md12">
			<fieldset class="layui-elem-field layui-field-title">
			  	<legend><strong style="font-size: 16px;">查询条件</strong></legend>
			</fieldset>
		</div>
	</div>
	
	<div class="layui-row">
		<div class="layui-form" style="padding-left: 1em;">
			<div class="layui-form-item">
				<div class="layui-input-inline">
					<input type="text" class="layui-input" name="stuName" id="txtName" placeholder="姓名">
				</div>
				<div class="layui-input-inline">
					<select class="layui-input" name="profession" id="drpPro">
					  	<option value="">-请选择专业-</option>
						<option value="1">计算机控制</option>
						<option value="2">网络安全</option>
						<option value="3">计算机应用</option>
					</select>
				</div>
				<div class="layui-input-inline">
					<button class="layui-btn layui-btn-sm" id="searchBtn">&nbsp;查询&nbsp;</button>
				</div>
			</div>
		</div>
	</div>
	
	<div class="layui-row">
		<div class="layui-col-md12">
			<fieldset class="layui-elem-field layui-field-title">
			  	<legend><strong style="font-size: 16px;">查询结果</strong></legend>
			</fieldset>
		</div>
	</div>
	
	<div class="layui-row">
		<div style="padding-left: 1em;">
			<button class="layui-btn layui-btn-sm" id="addBtn">添加学生</button>
		</div>
	</div>
	
	<div class="layui-row">
		<div class="layui-col-md12">
			<table class="layui-table" id="stuTable" lay-filter="stuTable"></table>
		</div>
	</div>
</div> 

<script type="text/html" id="barDemo">
  <a class="layui-btn layui-btn-sm" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-sm" lay-event="edit">编辑</a>
  <a class="layui-btn layui-btn-danger layui-btn-sm" lay-event="del">删除</a>
</script>

<script type="text/javascript">
	layui.use(['form','table','jquery'], function(){
		var form = layui.form;
		var table = layui.table;
		var $ = layui.$;
		form.render();
		table.render({
			elem: '#stuTable',
			height: 355,
			url: '/ssm/studentInfo/retrieveStuInfo',
			limit: 7,
			limits: [7,14,21,28,35],
			page: true,
			cellMinWidth: 60,
			cols:[[
			       {field: '', title: '序号', sort: true, width:100, type: 'numbers'},
			       {field: 'stuId', title: '学号', align:'center', sort: true},
			       {field: 'stuName', title: '姓名', align:'center', sort: true},
			       {field: 'sex', title: '性别', align:'center', sort: true},
			       {field: 'date', title: '入学时间', align:'center', sort: true},
			       {field: 'age', title: '年龄', align:'center', sort: true},
			       {field: '', title: '操作', align:'center', width:200, toolbar: '#barDemo'}
			       ]]
		});
		
		//监听工具条
	  	table.on('tool(stuTable)', function(obj){
		    var data = obj.data;
		    if(obj.event === 'detail'){
		      	layer.msg('ID：'+ data.stuId + ' 的查看操作');
		    } else if(obj.event === 'del'){
		      	layer.confirm('真的删除行么', function(index){
			        obj.del();
			        layer.close(index);
		      	});
		    } else if(obj.event === 'edit'){
		    	editStuInfo(data.stuId);
		    }
		});	
		
		// 新增学生信息
		$("#addBtn").off("click").on("click", function(){
			$.ajax({
				url: "/ssm/popup-student-add.jsp",
				dataType: "html",
				success: function(html){
					layer.open({
						type: "1",
						title: "添加学生信息",
						content: html,
						area: ['450px', '510px'],
						btn: ["保存","取消"],
						yes: function(index, dom){
							saveStuInfo();
							layer.close(index);
						}
					});					
				}
			});
		});
		
		// 修改学生信息 
		function editStuInfo(id){
			$.ajax({
				type: "post",
				url: "/ssm/studentInfo/editStuInfo",
				data: {"stuId" : id},
				dataType: "html",
				success: function(html){
					layer.open({
						type: "1",
						title: "编辑学生信息",
						content: html,
						area: ['450px', '500px'],
						btn: ["保存修改"],
						yes: function(index, dom){
							editStuInfo();
							layer.close(index);
						}
					});					
				}
			});
		}
  		 
	});
</script>

