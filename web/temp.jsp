<%@ page import="java.sql.ResultSet" %><%--
  Created by IntelliJ IDEA.
  User: shuai
  Date: 2017/6/20
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<tr>
    <th width="25%">学号</th>
    <th width="25%">课程</th>
    <th width="25%">成绩</th>
    <th width="25%">登记时间</th>
</tr>
<%
    ResultSet rs = (ResultSet) request.getAttribute("data");

    // 展开结果集数据库
    try {
        while (rs.next()) {
            String sNo = rs.getString("no");
            String course = rs.getString("course");
            String grade = rs.getString("grade");
            String registerTime = rs.getString("registerTime");

            // 输出数据
            out.println("<tr>");
            out.println("<td>" + sNo + "</td>");
            out.println("<td>" + course + "</td>");
            out.println("<td>" + grade + "</td>");
            out.println("<td>" + registerTime + "</td>");
            out.println("</tr>");

        }
    } catch (Exception e) {
        e.printStackTrace();
    }

%>
