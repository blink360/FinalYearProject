<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Learning Hearts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta charset="utf-8">
<link rel='stylesheet' type='text/css' href='CSS/home.css'>
<link
	href="https://fonts.googleapis.com/css?family=Acme|Luckiest+Guy|Permanent+Marker|Satisfy"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div id='pagecontainer'>
		<div class='container'>
			<div id='header' class='row-md-12 row-sm-12 row-lg-12'>
				<div id='title'>
					Learning Hearts <img src='resources/logo.png'
						style="width: 100px; height: 100px;">
				</div>
			</div>
			<nav class="navbar navbar-default">
			<div class='container-fluid'>
				<ul class="nav navbar-nav" id='menu'>
					<li class='active'><a>Home</a></li>
					<li><a>About</a></li>
					<li><a>Contact</a></li>
				</ul>
			</div>
			</nav>
		</div>
		<div class="container">

			<div id='content' class='row-md-12 row-lg-12 row-sm-12'>
				<div class="row">
					<div
						class="col-lg-6 col-lg-offset-6 col-md-8 col-md-offset-4 col-sm-10 col-sm-offset-2">
						<form name='f1' id='form' method='POST' action="login">
							<div class="row">
								<div class='form-group'>
									<div class='col-sm-4'>Your Name</div>
									<div class='col-sm-8'>
										<input id='textfield' type='text' name='fname'
											placeholder="Name" class='form-control'>
									</div>
								</div>
							</div>
							<div class="row">
								<div class='form-group'>
									<div class='col-sm-4'>Your Age</div>
									<div class='col-sm-8'>
										<input type='text' id='textfield' name='age' placeholder='Age'
											class='form-control'>
									</div>
								</div>
							</div>
							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-4'>Gender</div>
									<div class='col-sm-8'>
										<input type='radio' name='gender' value='1' id='selectbutton'>Male
										<input type='radio' name='gender' value='0' id='selectbutton'>Female
									</div>
								</div>
							</div>
							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-4'>Blood Pressure</div>
									<div class='col-sm-8'>
										<input type='text' name='bloodPressure1' id='textfield'
											placeholder='in mm' class='form-control' style="width: 40%;">
										<input type='text' name='bloodPressure2' id='textfield'
											placeholder='in Hg' class='form-control'
											style="width: 40%; margin-top: -45px; margin-left: 170px">

									</div>
								</div>
							</div>
							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-4'>Total Cholesterol Level</div>
									<div class='col-sm-8'>
										<input type='text' name='cholesterol' id='textfield'
											placeholder="Total Cholesterol" class='form-control'>
									</div>
								</div>
							</div>
							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-4'>Family History?</div>
									<div class='col-sm-8'>
										<input type='radio' name='history' value='1' id='selectbutton'>Yes
										<input type='radio' name='history' value='0' id='selectbutton'>No
									</div>
								</div>
							</div>
							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-4'>Tobacco Usage</div>
									<div class='col-sm-8'>
										<input type='radio' name='smoking' value='1' id='selectbutton'>Rarely
										<input type='radio' name='smoking' value='2' id='selectbutton'>Ocassionally
										<input type='radio' name='smoking' value='3' id='selectbutton'>Daily
										<input type='radio' name='smoking' value='0' id='selectbutton'>None
									</div>
								</div>
							</div>
							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-4'>Alcohol Usage</div>
									<div class='col-md-8'>
										<input type='radio' name='alcohol' value='1' id='selectbutton'>Rarely
										<input type='radio' name='alcohol' value='2' id='selectbutton'>Ocassionally<input
											type='radio' name='alcohol' value='3' id='selectbutton'>Daily
										<input type='radio' name='alcohol' value='0' id='selectbutton'>None
									</div>
								</div>
							</div>
							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-4'>Diabetes</div>
									<div class='col-sm-8'>
										<input type='radio' value='1' name='diabetes'
											id='selectbutton'>Yes <input type='radio' value='0'
											name='diabetes' id='selectbutton'>No
									</div>
								</div>
							</div>

							<div class='row'>
								<div class='form-group'>
									<div class='col-sm-8 col-sm-offset-4'>
										<input type='submit' value='submit' class='button'>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div id='footer'></div>
		</div>
</body>
</html>