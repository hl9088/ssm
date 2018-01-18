<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
	<div class="layui-fluid">
		<div class="layui-row" style="margin-top: 1.5em;">
			<div class="layui-col-xs11">
				<form class="layui-form">
					<div class="layui-form-item">
						<label class="layui-form-label">学号</label>
						<div class="layui-input-block">
							<input type="text" name="stuId" class="layui-input layui-bg-gray" disabled value="${stuInfo.stuId }" />
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">姓名</label>
						<div class="layui-input-block">
							<input type="text" name="stuName" class="layui-input layui-bg-gray" disabled value="${stuInfo.stuName }" />
							
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">入学日期</label>
						<div class="layui-input-inline">
							 <input type="text" class="layui-input layui-bg-gray" id="date" disabled value="${stuInfo.date }" />
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">专业</label>
						<div class="layui-input-inline">
							<select class="layui-input" name="profession" id="drpPro">
							  	<option value="">-请选择专业-</option>
								<option value="1" <c:if test="${stuInfo.profession=='1' }">selected</c:if> >计算机控制</option>
								<option value="2" <c:if test="${stuInfo.profession=='2' }">selected</c:if> >网络安全</option>
								<option value="3" <c:if test="${stuInfo.profession=='3' }">selected</c:if> >计算机应用</option>
							</select>
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">性别</label>
						<div class="layui-input-block">
							<c:if test="${stuInfo.sex=='男' }"><input type="radio" name="sex" value="男" title="男" checked disabled></c:if> 
							<c:if test="${stuInfo.sex=='女' }"><input type="radio" name="sex" value="女" title="女" checked disabled></c:if>  
						</div>
					</div>
					<div class="layui-form-item">
						<label class="layui-form-label">身份证号</label>
						<div class="layui-input-block">
							<input type="text" name="idNum" class="layui-input layui-bg-gray" disabled value="${stuInfo.idNum }" />
						</div>
					</div>
					<div class="layui-form-item layui-form-text">
						<label class="layui-form-label">其他</label>
						<div class="layui-input-block">
							<textarea name="desc" class="layui-textarea layui-bg-gray" disabled>${stuInfo.note }</textarea>
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
