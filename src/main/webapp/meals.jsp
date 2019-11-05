<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table>
    <tr>
        <th>DateTime</th>
        <th>Description</th>
        <th>Calories</th>
    </tr>
    <c:forEach items="${meals}" var="meal">
        <tr>
            <td><div style="color:${meal.isExcess()?'red':'green'};">${meal.dateTime}</div></td>
                <td>${meal.description}</td>
                <td>${meal.calories}</td>

        </tr>
    </c:forEach>
</table>
</body>
</html>