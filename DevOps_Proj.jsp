<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML >
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <h1>Reuven | Vitaly</h1>
  <h1>DevOps Project</h1>
</head>
     
<body style="background-color:#ccd9ff;" align="center" width = "100%" border = "0" >
	<table style="width:100%">
				<tr >
			<td><h2>What degree are you studying</h2></td>
		</tr>
		<form method="get">
		<tr>
			<td>
					
						<input type="radio" name="dgree" value="you thought you are going do code haa?">Computer science
						<input type="radio" name="dgree" value="computerScience.concat(physics)">Computer engineering
						<input type="radio" name="dgree" value="in the industry you are going to code anyway">Electric engineering
						<input type="radio" name="dgree" value="4 dgrees to be a product manager">Industrial engineering
						
					
			</td>
		</tr>
		<tr>
		<td>
		<input style="margin-top:5%" type="submit" value="Query">
		</td>
		</tr>
		</form>
		
		<tr>
			<% 
				String[] dgrees = request.getParameterValues("dgree");
				if (dgrees != null) {
			%>
			<td>
				<h3>Lets see:</h3>
			</td>
		</tr>
		<tr>
			<td>
					<%for (String dgree : dgrees) { %>
					<div style="color:#000000; font-size:200%;font-family:verdana;border:1px solid #000000;background-color:#fefecd"><%= dgree %></div>
					<%}%>
				<%}%>
			</td>
		</tr>
	</table>

	  <br /><a href="<%= request.getRequestURI() %>">BACK</a> 
<body>
</html>
