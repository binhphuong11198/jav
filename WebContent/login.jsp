<%@ include file="menu.jsp"%>
<style>
.box {
	width: 500px;
	margin: 200px 0;
}

.shape1 {
	position: relative;
	height: 150px;
	width: 150px;
	background-color: #0074d9;
	border-radius: 80px;
	float: left;
	margin-right: -50px;
}

.shape2 {
	position: relative;
	height: 150px;
	width: 150px;
	background-color: #0074d9;
	border-radius: 80px;
	margin-top: -30px;
	float: left;
}

.shape3 {
	position: relative;
	height: 150px;
	width: 150px;
	background-color: #0074d9;
	border-radius: 80px;
	margin-top: -30px;
	float: left;
	margin-left: -31px;
}

.shape4 {
	position: relative;
	height: 150px;
	width: 150px;
	background-color: #0074d9;
	border-radius: 80px;
	margin-top: -25px;
	float: left;
	margin-left: -32px;
}

.shape5 {
	position: relative;
	height: 150px;
	width: 150px;
	background-color: #0074d9;
	border-radius: 80px;
	float: left;
	margin-right: -48px;
	margin-left: -32px;
	margin-top: -30px;
}

.shape6 {
	position: relative;
	height: 150px;
	width: 150px;
	background-color: #0074d9;
	border-radius: 80px;
	float: left;
	margin-right: -20px;
	margin-top: -35px;
}

.shape7 {
	position: relative;
	height: 150px;
	width: 150px;
	background-color: #0074d9;
	border-radius: 80px;
	float: left;
	margin-right: -20px;
	margin-top: -57px;
}

.float {
	position: absolute;
	z-index: 2;
}

.form {
	margin-left: 145px;
}
</style>
<div class="container">
	<div id="login-row"
		class="row justify-content-center align-items-center">
		<div id="login-column" class="col-md-6">
			<div class="box">
				<div class="shape1"></div>
				<div class="shape2"></div>
				<div class="shape3"></div>
				<div class="shape4"></div>
				<div class="shape5"></div>
				<div class="shape6"></div>
				<div class="shape7"></div>
				<div class="float">
					<%
				String sl = request.getParameter("name");
				if(sl != null){
					out.print("<p align='right'>Ban phai dang nhap de mua hang!</p>");
					
				} %>
					<form class="form" action="ktdncontroller?kt=1">
						<div class="form-group">
							<label for="username" class="text-white">Username:</label><br>
							<input type="text" name="username" id="username"
								class="form-control">
						</div>
						<div class="form-group">
							<label for="password" class="text-white">Password:</label><br>
							<input type="text" name="password" id="password"
								class="form-control">
						</div>
						<div class="form-group">
							<input type="submit" name="submit" class="btn btn-info btn-md"
								value="submit">
						</div>
					</form>
					<a href="ktdncontroller?kt=2">gui len servlet</a>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>