<%@ page import="hello.servlet.domain.member.Member"%>
<%@ page import="hello.servlet.domain.member.MemberRepository"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%
    MemberRepository memberRepository = MemberRepository.getInstance();
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));
    Member member = new Member(username, age);
    Member savedMember = memberRepository.save(member);
 %>
<html lang='ko'>
    <head>
        <title>저장</title>
    </head>
    <body>
        <ul>
            <li>이름 : <span><%=savedMember.getUserName()%></span></li>
            <li>나이 : <span><%=savedMember.getAge()%></span></li>
        </ul>
        <a href='/index.html'>메인</a>
    </body>
</html>
