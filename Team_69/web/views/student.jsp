<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Start your quiz</title>
<link type='text/css' rel='stylesheet' href='../css/studentStyle.css' />
<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Open Sans" />
<script type='text/javascript'
	src='https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js'></script>
<script type='text/javascript' src='../js/jsquiz.js'></script>
<script type='text/javascript' src='../js/student.js'></script>
</head>
<body>
	<div id='container'>
		<div id='title'>
			<h1>Quiz Instructions</h1>
		</div>
		<br />
		<div id='quiz'></div>
		<div class='button' id='next'>
			<a href='#'>Next</a>
		</div>
		<div class='button' id='prev'>
			<a href='#'>Prev</a>
		</div>
		<form id="submitForm" action="/student/" method="POST">
			<button type="submit" class="btn-primary" name="action" value="submit" id="submit">Submit</button>
		</form>

		</button>
	</div>
	<script>
		$(document).ready(function() {
			studentResponseJSON = '<%=session.getAttribute("studentResponseJSON")%>';
			var studentResponseObj = JSON.parse(studentResponseJSON);
			displayQuiz(studentResponseObj);
			var autoSaveInterval = setInterval(autoSave, 2000);
		});
		
		$('#submitForm').submit(function(){
			autoSave();
		});
	</script>
</body>
</html>