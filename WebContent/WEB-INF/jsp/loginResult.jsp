<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User" %>
<%
	//セッションスコープからユーザー情報を取得
	User loginUser = (User) session.getAttribute("loginUser");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>ちゃすったー</title>
</head>
<body>
	<h1>ちゃすったーろぐいん</h1>
	<% if(loginUser!=null){ %>
		<p>ろぐいんせいこう！</p>
		<p>よーこそ<%= loginUser.getName() %>ちゃん</p>
		<a href="/chastter/Main">ついーとをみる</a>
	<% }else{ %>
		<p>ろぐいんしっぱい</p>
		<a href="/chastter/">とっぷへ</a>
	<% } %>
</body>
</html>