<%--
  Created by IntelliJ IDEA.
  User: t
  Date: 9/27/2021
  Time: 2:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
  </head>
  <body>
  <div class="container mt-5" style="width: 500px; border-radius: 5px; border: 1px solid #ccc">
    <form method="post" action="/ServletCurrencyConverter">
      <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Rate</label>
        <input name="rate" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
      </div>
      <div class="mb-3">
        <label for="exampleInputPassword1" class="form-label">USD</label>
        <input name="usd" type="text" class="form-control" id="exampleInputPassword1">
      </div>
      <button type="submit" class="btn btn-primary">Submit</button>
    </form>
  </div>
  </body>
</html>
