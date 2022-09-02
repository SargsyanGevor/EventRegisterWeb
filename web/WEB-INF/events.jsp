<%@ page import="java.util.List" %>
<%@ page import="model.Event" %><%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 9/3/2022
  Time: 2:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Events page</title>
</head>
<body>

<%

    List<Event> events = (List<Event>) request.getAttribute("events");

%>
<table border="1px">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>place</th>
        <th>isOnline</th>
        <th>price</th>
        <th>event type</th>
    </tr>
    <% for (Event event : events) {
    %>
    <tr>
        <th><%=event.getId()%>
        </th>
        <th><%=event.getName()%>
        </th>
        <th><%=event.getPlace()%>
        </th>
        <th><%=event.isOnline()%>
        </th>
        <th><%=event.getPrice()%>
        </th>
        <th><%=event.getEventType().name()%>
        </th>
    </tr>
    <% }
    %>
</table>

</body>
</html>
