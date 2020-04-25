<%@ Page Language="C#" AutoEventWireup="true" CodeFile="~/Controller/Login.aspx.cs" Inherits="View_Login" %>

<!DOCTYPE html>
<html lang="en">
<head>
	<!-- Meta tags -->
	<title>Winter Login Form a Simple Login form Responsive Widget :: w3layouts</title>
	<meta name="keywords" content="Winter Login Form Responsive widget, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- stylesheets -->
	<link rel="stylesheet" href="css/font-awesome.css">
	<link rel="stylesheet" href="css/style.css">
	<!-- google fonts  -->
	<link href="//fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Raleway:400,500,600,700" rel="stylesheet">
</head>
<body>
	<div  class="agile-login" style="animation-direction" runat="server">
		<h1>Bienvenido a Future Books</h1>
		<div class="wrapper" >
			<h2>Ingresar</h2>
			<!--<div class="w3ls-form">
				<form action="/" method="post">
					<label>Username</label>
					<input type="text" name="name" placeholder="Username" required/>
					<label>Password</label>
					<input type="text" name="password" placeholder="Password" required />
					<a href="#" class="pass">Forgot Password ?</a>
					<input type="submit" value="Log In" />
				</form>
			</div>-->
            <div class="w3ls-form" >
				<form  method="post" runat="server">
					<label>Correo</label>
					<!--<input type="text" name="name" placeholder="Username" required/>
                      <input type="text" name="password" placeholder="Password" required />-->
                    <a> 

                    </a>
                    <asp:TextBox ID="TB_correo" runat="server" name="" placeholder=""></asp:TextBox>
					<label>Contraseña</label>
                    <asp:TextBox ID="TB_contra" runat="server"></asp:TextBox>
					<a href="#" class="pass">Forgot Password ?</a>
					<!--<input type="submit" value="Log In" />-->
                    <asp:Button ID="BTN_ingresar"  runat="server" Text="Ingresar" OnClick="BTN_ingresar_Click1" />
				</form>
			</div>
			
			<div class="agile-icons">
				<a href="#"><span class="fa fa-twitter" aria-hidden="true"></span></a>
				<a href="#"><span  class="fa fa-facebook"></span></a>
				<a href="#"><span class="fa fa-pinterest-p"></span></a>
			</div>
		</div>
		<br>
		<div class="copyright">
		<p>© 2017 Winter Login. All rights reserved | Design by <a href="www.w3layouts.com">W3layouts</a></p> 
	</div>
	</div>
	
</body>
</html>
