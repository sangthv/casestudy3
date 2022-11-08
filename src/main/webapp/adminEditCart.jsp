
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>
</head>
<body>
<div align="center">
  <h2>sản phẩm mới</h2>
  <form action="/sua" method="post">
    <table>
      <tr>
        <td>nhập ID</td>
        <td><input type="text" name="id" value="${pro.id}" ></td>
      </tr>
      <tr>
        <td>nhập name</td>
        <td><input type="text" name="name" value="${pro.name}" ></td>
      </tr>
      <tr>
        <td>nhập ảnh</td>
        <td><input type="text" name="image" value="${pro.image}" ></td>
      </tr>
      <tr>
        <td>nhập Price</td>
        <td><input type="text" name="price" value="${pro.price }" ></td>
      </tr> <tr>
      <td>nhập Số Lượng</td>
      <td><input type="text" name="amount" value="${pro.amount}" ></td>
    </tr>

    </table>
    <button type="submit"> Submit</button>
  </form>
</div>

</body>
</html>
