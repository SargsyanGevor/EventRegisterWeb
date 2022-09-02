<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 9/3/2022
  Time: 2:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Event</title>
</head>
<body>
Please input events data:
<form action="/events/add" method="post">
    <input type="text" name="name" placeholder="Please input name"/><br>
    <input type="text" name="place" placeholder="Please input place"/><br>
    Is Online? <br>
    Yes <input type="radio" name="isOnline" value="true"/>
    No <input type="radio" name="isOnline" value="false"/><br>
    <input type="number" name="price" placeholder="Please input price"/><br>
    Event Type:
    <select name="eventType">
        <option value="CITY_DAY">CITY DAY</option>
        <option value="BEER_FESTIVAL">BEER FESTIVAL</option>
        <option value="FILM_FESTIVAL">FILM FESTIVAL</option>
    </select><br>
<input type="submit" value="Add"/>

</form>
</body>
</html>
