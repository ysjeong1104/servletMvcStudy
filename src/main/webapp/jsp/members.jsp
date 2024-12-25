<%@ page import="hello.servlet.domain.member.Member"%>
<%@ page import="hello.servlet.domain.member.MemberRepository"%>
<%@ page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
 <%
    MemberRepository memberRepository = MemberRepository.getInstance();
    List<Member> members = memberRepository.findAll();
 %>
<html lang='ko'>
    <head>
        <title>저장</title>
    </head>
    <body>
        <ul>
        <%for(Member member : members){ %>
            <li>
                이름 : <span><%=member.getUserName()%></span><br>
                나이 : <span><%=member.getAge()%></span>
            </li>
        <%}%>
        </ul>
        <a href='/index.html'>메인</a>
    </body>
</html>