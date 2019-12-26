<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert Product</title>

<link href="bootstrap.min.css" rel="stylesheet">
</style>
</head>
<body>
<form action="Control" method="post" enctype="multipart/form-data">
<div class="jumbotron text-center">
<h1>Input details</h1>
</div>
<table>
<tr>	<td>Image</td><td><input type="file" name="img"></td>	</tr>
<tr>	<td>Name</td><td><input type="text" name="n"></td>	</tr>
<tr>	<td>Price</td><td><input type="number" name="p"></td>	</tr>
<tr>	<td>Quantity</td><td><input type="number" name="q"></td>	</tr>
<tr> 	<td></td><td><input type="submit" value="Submit"></td></tr>
</table>
</form>

</body>
</html>