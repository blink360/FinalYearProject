<%@page import="com.Info.InputInformation"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>


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
<link rel='stylesheet' type='text/css' href='CSS\result.css'>
<link
	href="https://fonts.googleapis.com/css?family=Acme|Luckiest+Guy|Permanent+Marker|Satisfy"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.js"></script>
</head>
<body>
	<div id='pagecontainer'>
		<div class='container'>
			<div id='header' class='row-md-12 row-sm-12'>
				<div id='title'>
					Learning Hearts<img src='resources/logo.png'
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
		<div class='container'>
			<div class='row-md-12' id='resultbox'>
				<div id='result'>

					<%
						List<InputInformation> inp = (ArrayList) request.getAttribute("list");
					%>

					<h1>Prediction:</h1>
					</br> </br>

					<%
						for(InputInformation input1: inp){
																							
								List<Float> list = new ArrayList<>();
								list.add((float)input1.getAge());
								list.add((float)input1.getGender());
								list.add((float)input1.getBloodPressure1());
								list.add((float)input1.getBloodPressure2());
								list.add((float)input1.getCholesterol());
								list.add((float)input1.getHistory());
								list.add((float)input1.getSmoking());
								list.add((float)input1.getHistory());
								list.add((float)input1.getDiabetes());
								out.print(list);
												
																						}
					%>
				</div>
				<div id='resulttext'>
					<div class='progress'>
						<div class='progress-bar' role='progressbar' aria-valuenow='30'
							aria-valuemin='0' aria-valuemax='100' style='width: 50%'></div>
					</div>
				</div>
			</div>
			<div class='row-md-12' id='graphbox'>
				<div class='col-md-6 col-sm-6'>
					<canvas id='sbpgraph'></canvas>
				</div>
				<div class='col-md-6 col-sm-6'>
					<canvas id='dbpgraph'></canvas>
				</div>
				<script type="text/javascript">
					let sbpchartarea = document.getElementById('sbpgraph').getContext('2d');
					let dbpchartarea = document.getElementById('dbpgraph').getContext('2d');
					
					let sbpChart = new Chart(sbpchartarea, {
						type : 'line',
						data : {
							labels: ['Systolic Bloodpressure']
						},
							options : {}
					} );

					let dbpChart = new Chart(dbpchartarea, {
						type : 'line',
						data : {
							labels: ['Diastolic Bloodpressure']
						},
						options : {}
					} );
				</script>
			</div>
			<div class='row-md-12' id='graphbox'>
				<div class='col-md-6 col-sm-6'>
					<canvas id='cholgraph'></canvas>
				</div>
				<div class='col-md-6 col-sm-6'>
					<canvas id='agegraph'></canvas>
				</div>
				<script type="text/javascript">
					let agechartarea = document.getElementById('cholgraph').getContext('2d');
					let cholchartarea = document.getElementById('agegraph').getContext('2d');
					
					let AgeChart = new Chart(agechartarea, {
						type : 'line',
						data : {
							labels: ['Cholesterol']
						},
							options : {}
					} );

					let CholChart = new Chart(cholchartarea, {
						type : 'line',
						data : {
							labels: ['Age']
						},
						options : {}
					} );
				</script>
			</div>
		</div>
	</div>
</body>
</html>
