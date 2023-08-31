<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>Upload File</div>
	
	
	
	<form action="<%=request.getContextPath()%>/postdoc" id="uploadFiles"
		name="uploadFiles" method="post" enctype="multipart/form-data">
		
		<input type="text" name="name" required /> <input type="text"
			name="email" required /> <input type="text" name="phone" required />		
		
		<input type="file" name="files" multiple />
		<button type="submit">Submit</button>


	</form>
	



</body>
</html>