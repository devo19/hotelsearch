<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Hotels</title>
<link rel="stylesheet" href="/style.css" />
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB"
	crossorigin="anonymous">
<link href="/style.css" rel="stylesheet" />
</head>
<body>

	<h1 align="center">Hotels in ${city}</h1>
	<br>
	<div class="container">

		<table class="table">
			<thead>
				<tr>
					<th>Name</th>
					<th>Price</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="s1" items="${hotel_listing}">
					<tr>
						<td><a id="${s1.id}">${s1.name}</a></td>
						<td>${s1.pricePerNight}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

	<div style="text-align: center">
		<a href="/">New Search</a></br>
	</div>
</body>