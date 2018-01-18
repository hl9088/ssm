<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生成绩管理</title>
<link rel="stylesheet" href="common/bootstrap-3.3.7-dist/css/bootstrap.css" />
</head>
<body>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<span>学生成绩管理</span>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<input type="button" class="btn btn-info" id="addBtn" value="添加学生" />		
			</div>
		</div>
	</div>


<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
			<h3>
				h3. 这是一套可视化布局系统.
			</h3>
			<div class="row clearfix">
				<div class="col-md-12 column">
					<table class="table">
						<thead>
							<tr>
								<th>
									编号
								</th>
								<th>
									产品
								</th>
								<th>
									交付时间
								</th>
								<th>
									状态
								</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Default
								</td>
							</tr>
							<tr class="success">
								<td>
									1
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									01/04/2012
								</td>
								<td>
									Approved
								</td>
							</tr>
							<tr class="error">
								<td>
									2
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									02/04/2012
								</td>
								<td>
									Declined
								</td>
							</tr>
							<tr class="warning">
								<td>
									3
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									03/04/2012
								</td>
								<td>
									Pending
								</td>
							</tr>
							<tr class="info">
								<td>
									4
								</td>
								<td>
									TB - Monthly
								</td>
								<td>
									04/04/2012
								</td>
								<td>
									Call in to confirm
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>



</body>

<script type="text/javascript" src="common/lib/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="common/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
</html>