<html>
<head>
<title>Hello you!</title>
</head>
<body>
	<h1>Hello JAVA!</h1>
	<p>
		It is now
		<%= new java.util.Date() %></p>
	<p>
		You are coming from 
		<%= request.getRemoteAddr()  %></p>
</body>