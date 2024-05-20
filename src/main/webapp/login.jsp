<%@page import="com.Dao.*"%>
<%@page import="com.Dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="css/login.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.googleapis.com">

</head>

<body>
	<header>
		<nav></nav>
	</header>
	<main>
		<div class="mainContainer">
			<div class="subContainer1">
				<div class="innerCon">
					<h4>Login</h4>
					<p class="subHeead">
						Doesn't have an account yet? <a href="register.jsp">Sign Up</a>
					</p>
					<form action="login" method="post">
						<label class="labelS1">Email Address</label>
						<% String msg1 = (String)session.getAttribute("Emailrong");
									if(msg1 != null){%>
						<div class="email"><%= msg1 %></div>
						<%
						 session.removeAttribute("wrong2");
						}
						%>
						<input type="text" name="email" class="spaceAr"
							placeholder="You@example.com">

						<div class="pasAndforge">
							<label for="Password" class="labelS">Password</label> <a href="#">Update
								Password?</a>
						</div>
						<% String msg2 = (String)session.getAttribute("Paswrong");
									if(msg2 != null){%>
						<div class="email"><%= msg2 %></div>
						<%
						 session.removeAttribute("wrong");
						}
						%>
						<input type="password" name="password" class="spaceAr"
							placeholder="Enter 6 character or more"> <input
							type="submit" value="Login" class="Submit">
					</form>
				</div>
			</div>
			<div class="subContainer2">
				<img src="img/Designer (1).png" alt="">
			</div>
		</div>
	</main>
</body>

</html>