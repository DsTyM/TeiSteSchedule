﻿<ul class="top-bar">
    <li class="top-bar" style="margin-left: 100px; color: #218f28;">
        <h1 style="margin:0; padding:0; font-weight: bold;">SimplePost</h1>
    </li>
    <li class="top-bar" style="margin-left: 7%; font-size: 27px; font-weight: bold;">
        <a style="color: dimgray;" href="/">Posts</a>
    </li>
    <li class="top-bar" style="margin-left: 4%; font-size: 27px; font-weight: bold;">
        <a style="color: dimgray;" href="HomepageControllerServlet?about">About</a>
    </li>
    <li class="top-bar" style="float: right; margin-right: 15%; font-size: 20px; font-weight: bold;">
        <%
            if (session.getAttribute("username") == null) {
        %>
        <a style='color: #218527;' href='UserControllerServlet?login-form'>Login</a>
        <%
        } else {
            String username = (String) session.getAttribute("username");
        %>
        <form action="/">
            <p style="color: #218527; margin: 0 0 0 0; word-break: normal; width: 100%">Welcome <%= username%>
                &nbsp

                <button type="submit" name="logout" value="yes" style="background-color: #218527;
            padding: 0.25em 1em; color: white; font-size: 16px;">Logout
                </button>
            </p>
        </form>
        <%
                String logout = request.getParameter("logout");

                if (logout != null && !logout.equals("")) {
                    session.invalidate();
                    response.sendRedirect("/");
                }
            }
        %>
    </li>
</ul>
