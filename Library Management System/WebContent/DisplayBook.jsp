<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*,com.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Book</title>
</head>
<body>
<form>
<table border=1>
<tr>
<th>Book Code</th><th>Book Name</th><th>Author</th><th>Publication</th><th>Subject</th><th>No. of Copies</th>

</tr>
<tr>
<td><%= request.getParameter("BookId")%></td>
<td><%= request.getParameter("Bookname")%></td>
<td><%= request.getParameter("Author")%></td>
<td><%= request.getParameter("Publication")%></td>
<td><%= request.getParameter("Branch")%></td>
<td><%= request.getParameter("Num_of_copies")%></td>
</tr>

<%
	ArrayList<BooksInfo> al=(ArrayList)request.getAttribute("books");

	Iterator<BooksInfo> it=al.iterator();
	while(it.hasNext()){		
		BooksInfo d= (BooksInfo)it.next();
%>


		
		<tr>
		<td><%=d.getCode() %></td>
		<td><%=d.getBookName() %></td>
		<td><%=d.getAuthor() %></td>
		<td><%=d.getPublication() %></td>
		<td><%=d.getSubject() %></td>
		<td><%=d.getNoOfCopies() %></td>
		
		</tr>
			
<% 	}	%>



</table>
</form>
</body>
</html>