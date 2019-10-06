<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>
<ul>
    <li>
        <a href="${pageContext.request.contextPath}/index">首页</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}https://www.qidian.com/">起点小说</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}https://music.163.com/">网易音乐</a>
    </li>
    <li>
        <a href="http://www.4399.com/">网页游戏</a>
    </li>
    <li>
        <a href="https://v.qq.com/">腾讯视频</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}https://www.taobao.com/">淘宝购物</a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}http://time.tianqi.com/">北京时间</a>
    </li>
</ul>

<ul>
    <%--根据user是否为空，显示不同的内容--%>
    <%
        if (user != null) {
    %>
    <li>
        <a href="${pageContext.request.contextPath}/user">
            <img src="${pageContext.request.contextPath}/images/${user.avatar}" alt="" class="avatar">
        </a>
    </li>
    <li>
        <a href="${pageContext.request.contextPath}/logout">退出</a>
    </li>
    <%
    } else {
    %>
    <a href="${pageContext.request.contextPath}/login">登录</a>
    <%
        }
    %>
</ul>
