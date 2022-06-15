<%-- 
    Document   : insert
    Created on : Jun 15, 2022, 8:08:31 AM
    Author     : Giang Dong PC
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="insert" method="POST">
            Reason: <input type="text" name="reason"/> <br/>
            From: <input type="date" name="from" /> <br/>
            To: <input type="date" name="to" /> <br/>
            Created by: <select name="createdBy">
                <option
                    value="all">All
                </option>
                <c:forEach items="${requestScope.empList}" var="e">
                    <option
                        value="${e.id}">${e.name}
                    </option>
                </c:forEach> 
            </select> <br/>
            Reviewed by: <select name="reviewedBy">
                <option
                    value="all">All
                </option>
                <c:forEach items="${requestScope.empList}" var="e">
                    <option
                        value="${e.id}">${e.name}
                    </option>
                </c:forEach> 
            </select> <br/>
            <input type="submit" value="Save"/> 
        </form>
    </body>
</html>
