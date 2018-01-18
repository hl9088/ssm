<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<div class="layui-fluid">
		<div class="layui-row" style="margin-top: 1.5em;">
			<div class="layui-col-xs11">
				<form class="layui-form">
					<div class="layui-form-item">
						<label class="layui-form-label">姓名</label>
						<div class="layui-input-block">
							<input type="text" name="stuName" id="stuName" required lay-verify="required"
								placeholder="请输入姓名" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">入学日期</label>
						<div class="layui-input-inline">
							 <input type="text" class="layui-input" id="date">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">专业</label>
						<div class="layui-input-inline">
							<select class="layui-input" name="profession" id="drpPro">
							  	<option value="">-请选择专业-</option>
								<option value="1">计算机控制</option>
								<option value="2">网络安全</option>
								<option value="3">计算机应用</option>
							</select>
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">性别</label>
						<div class="layui-input-block">
							<input type="radio" name="sex" value="男" title="男">
							<input type="radio" name="sex" value="女" title="女">
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">身份证号</label>
						<div class="layui-input-block">
							<input type="text" name="idNum" required lay-verify="required"
								placeholder="请输入身份证号" autocomplete="off" class="layui-input">
						</div>
					</div>
					<div class="layui-form-item layui-form-text">
						<label class="layui-form-label">其他</label>
						<div class="layui-input-block">
							<textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
		layui.use(['form','laydate'], function() { 
			var form = layui.form;
			var laydate = layui.laydate;
			form.render();
			laydate.render({
			    elem: '#date' //指定元素
			});
		});
	</script>
