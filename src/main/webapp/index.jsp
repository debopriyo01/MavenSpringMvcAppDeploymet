<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
</head>
<body>
    <h1>Login Page</h1>

    <form method="post" action="login.jsp">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>

        <input type="submit" value="Login">
        <a href="www.google.com">click me to sign in</a><br><br>
        <a href="www.facebook.com">click me to go to facebook page</a>
    </form>
    
     <form method="post" action="login.jsp">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br>

        <input type="submit" value="Login">
        <a href="www.google.com">click me to sign in again into the google.com</a><br><br>
        <a href="www.facebook.com">click me to go again into the facebook page </a>
        <a href="/home.jsp">click me to go to the home page </a>
    </form>
    

    <%
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Replace this with your authentication logic
        if (username != null && password != null && username.equals("demo") && password.equals("password")) {
            // Successful login, redirect to a welcome page
            response.sendRedirect("welcome.jsp");
        } else if (username != null || password != null) {
            // Invalid credentials, display an error message
    %>
            <p style="color: red;">Invalid username or password. Please try again.</p>
    <%
        }
    %>
    
</body>
</html>
