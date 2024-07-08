<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style type="text/css">
form{
text-align: center;
}
html
Copy
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<style type="text/css">
form {
  text-align: center;
}
a {
  text-decoration: none;
}
table {
  border-collapse: collapse;
  width: 100%;
  max-width: 500px;
  margin: 0 auto;
  background-color: #f8f8f8;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
  margin-top: 0;
  font-size: 24px;
}

td {
  padding: 10px;
  text-align: left;
}

input[type="text"],
input[type="email"],
input[type="password"] {
  width: 100%;
  padding: 10px;
  border: none;
  border-radius: 5px;
  margin-bottom: 10px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

input[type="submit"] {
  background-color: #4CAF50;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
  background-color: #3e8e41;
}
</style>
</head>
<body>
    
    <form action="Register.html" method="post">
    	<h2>Register</h2>
        <table align="center">
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" required/></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" required/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><input type="email" name="email" required/></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><input type="text" name="phone" required/></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" required/></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" required/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Register"/></td>
                <td><a href="/CakeBakery/index.html">Trở về Trang Chủ</a></td>
            </tr>
        </table>
    </form>
</body>
</html>