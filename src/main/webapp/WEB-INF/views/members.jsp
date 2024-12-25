<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang='ko'>
    <head>
        <title>저장</title>
    </head>
    <body>
        <ul>
        <c:forEach var="item" items="${members}">
            <li>
                이름 : <span>${item.userName}</span><br/>
                나이 : <span>${item.age}</span>
            </li>
        </c:forEach>
        </ul>
        <a href='/index.html'>메인</a>
    </body>
</html>