
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Danh Sách Sản Phẩm</title>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .container mt-3 {
            margin: 0 auto;
        }
        .table table-dark th td{
            text-align: center;
        }
        .table table-dark td{
            padding-bottom: 5px;
        }
    </style>
</head>
<body>
<div class="container mt-3">
    <h4><a href="/product">Home</a></h4>
    <h2>Danh Sách Sản Phẩm</h2>
    <a type="button" href="/adminAddProduct.jsp"> sản phẩm mới</a>
    <table class="table table-dark">
        <thead>
        <tr>
            <th>id</th>
            <th>Tên</th>
            <th>ảnh</th>
            <th>Giá</th>
            <th>Số Lượng</th>
            <th>Sửa</th>
            <th>Xóa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${spadmin}" var="sp">
            <tr>
                <td>${sp.getId()}</td>
                <td>${sp.getName()}</td>
                <td><img src="${sp.getImage()}" height="200" width="250"></td>
                <td>${sp.getPrice()}</td>
                <td>${sp.getAmount()}</td>
                <td><a type="button" class="btn btn-danger" href="/sua?id=${sp.id}">Edit</a></td>
                <td><a type="button" class="btn btn-success" href="/xoa?id=${sp.id}">Delete</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

</body>
</html>
