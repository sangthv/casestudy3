
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<div align="center">
  <form action="/sua" method="post">
    <table>
      <tr>
        <td>nhập ID</td>
        <td><input type="text" name="id" value="${p.id}" readonly ></td>
      </tr>
      <tr>
        <td>nhập name</td>
        <td><input type="text" name="name" value="${p.name}"  ></td>
      </tr>
      <tr>
        <td>nhập ảnh</td>
        <td><input type="text" name="img" value="${p.img}" ></td>
      </tr>
      <tr>
        <td>nhập giá</td>
        <td><input type="text" name="price" value="${p.price}" ></td>
      </tr>
      <tr>
        <td>nhập số lượng</td>
        <td><input type="text" name="amount" value="${p.amount}" ></td>
      </tr>
    </table>
    <button type="submit"> Submit</button>
  </form>
</div>
</body>
</html>
